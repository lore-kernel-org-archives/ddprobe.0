Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7C6D17BD8
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708646296; cv=none; b=FgrEmXfT5kt0KFT8wQUalttC81ETvpoIL1g/I/AHER68L6WZ0+TJu2iXHvLs2y+3gYej9TpTAMfADThVKUKuAHqOmBDCwHG+LktErI897CBa1/oLLbcU42ozt8/dCCy+HVxZnaNWkcLcYbnmeiGtloQZHqZ+A8epu5lIzUSS44I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708646296; c=relaxed/simple;
	bh=6mLt0K5AcoA47D+PEU9Cz+XcwxOtW+PipzelrybPOoM=;
	h=To:Subject:From:Message-Id:Date; b=a3Hf70J54NC69tCD/yVwI8pj1Ym5pIsj8xJKRAZartoUWx6TMxavETn0i4wS3WRAkXs9zGahGwVUPKQSU2sYyjDbGDZBDjEU7fr8D6tPOYof2hwdKmBTMmG89BTAObUf0kx0ZoIi0EDM04JI8CKTwfr39MowXxLUv4nvxPXXZKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyRYsJJw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyRYsJJw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AD4BC433C7
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708646296;
	bh=6mLt0K5AcoA47D+PEU9Cz+XcwxOtW+PipzelrybPOoM=;
	h=To:Subject:From:Date:From;
	b=NyRYsJJwdhqzZxrlwo6opcDJ7qsGlqq4OKxXvbfasZvKw4fgQT+S57mqfatOVqxss
	 u/x6LZPwOs4IwlYmIAkIujkjvLJ8bQpb2C+UZ7XneI7sne1imNt9rsG+p82XAKVOKa
	 MO69k3zKW2CL85TXUOi6ZdJYEWWupKLQVdqwV8vVh6Kc3fwMmOG2BbB4FfY0nsXXOR
	 AYyBE+yHopcXrhtYNC2kTBil2hfl7DEmkirdEvdPCvC1ZT3EYRz8IHvZjejTRgwrCo
	 WVNIZvVS0RoC2MAQZj8NhR/ON7ueXeYF9gqxM8vVJN0noSYBV8ilL+L9rYUEzTVp5b
	 lCtQ7Fhh255qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F246C47DD9
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170864629638.1556.10497463923004330300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b39d4ffacc16d6152369e4ac663afc5b7213b4a948120c19e3c7113180a2986
Date: Thu, 22 Feb 2024 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708646296
