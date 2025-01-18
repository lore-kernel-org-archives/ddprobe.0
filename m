Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6848F7FD
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737198354; cv=none; b=DkoJQQYF7kq0aFUqrF4ZyPHDdwW0xD5uaZGD8Rtg7emDCIGFQmNnMfsrUgrQXpgNljRuXDQELjnvzOXleTeWUxR+4uRG/GmcnsadrefitcqGN+988xGBpALsMPSkQ6UuqwbYG0xidcwl+An52EZUTavEwu97Us1K/iGj1Ra2IZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737198354; c=relaxed/simple;
	bh=z3IJxq0DhKTXti0b2SKqiwNSaL240gavP2LpQaAVc10=;
	h=To:Subject:From:Message-Id:Date; b=NEM7RbjSX+8cE7IdhabRbHW6l5KyXF9uhBIWTg8NuSYuejLBGiVbJGAGt1E6eYIA5UbNdUEL1P79YwW2qnHxT2S45dmMh9kvspoFpdBYC2lZiHlRNk3BB7OSJZE1c+Mxe4Ff+5QQ+GGyqM8gjSrq3ipGJHY5tSYqJGS3/t0Cn6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0NpzFEz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T0NpzFEz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1BCC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737198353;
	bh=z3IJxq0DhKTXti0b2SKqiwNSaL240gavP2LpQaAVc10=;
	h=To:Subject:From:Date:From;
	b=T0NpzFEzpusY3wliSoTWERenm6mAbUB5xYYlRqd1A9SQeUXMjz3bzEhJ5I0qJlMr7
	 u4+xCLeqyZzqY6CUmwH4V6Dd0q5bGLiLbTbCVDfiznIgOkX0jbql+FrHj3kp9MzHJU
	 cJ5RocC73XiNmoWuSwp4LGDsKPxCbZmHJNJ3zYpdcbnTi1v7g9g6y2SmkxYQmJ648z
	 R7Lyhl3W5VJ6yw9082rztzAPpo9z3W/VU5D84QQ7ewKN5FZeNy3BeOyJEjLSSJUPuW
	 suZdBGIgG/0s+6IhPPcnvqfvyHenrV6WSWffkn++oQOuFbHCHA6e5SsvkS+oiEUMnH
	 vkERbV2Ll+fnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965DFC02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173719835358.32342.9899740759535218655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6dafcd2cfffcf025ab9c2fef6986dbd1bce8e22d528eafd0b002b9d9ecc61cd
Date: Sat, 18 Jan 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737198353
