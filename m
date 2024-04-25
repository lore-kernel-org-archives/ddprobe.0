Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73B9A23763
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 17:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714066943; cv=none; b=SkQkH6ZLwpAcM6bmd/LBQ+ISoQeH4C3OB2sP1Ivd6NRmLKTfVLgskpuVvJj6UiCMrVKOF7oPJ2SQwXxpy/6VeREATV1/+VL2FxhtcQ5SxY6MTEjLZUQ6x5Z8t8SqaMHFUjDRZxHAaVS8RTC9gw5F95z3xHeNxO+tpXRzA2ckLuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714066943; c=relaxed/simple;
	bh=zy0dx6fIle5sNrHtpddCwMQBYCveihaW1MeWYEyhyZ8=;
	h=To:Subject:From:Message-Id:Date; b=M9TChElsFQbr47AiXyRKkmLCoGlj8WVa0tNkLy9b4DTtMA71XRRWZoQ88HtpAdvRISfKWfSLseIfRY5NEW+l6VTjUJdG9dq5zDK4kitybjAkuNj6MqRCvades74caPaANoDGDdKZO1wFujkkcJArqeNfG+oDmLCJ5eEzDmQDEYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+UOrTYY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+UOrTYY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F24B4C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 17:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714066943;
	bh=zy0dx6fIle5sNrHtpddCwMQBYCveihaW1MeWYEyhyZ8=;
	h=To:Subject:From:Date:From;
	b=U+UOrTYY2Lq3t4cFFlyYNhwAJS62B3Rcut1YP9cEsfP6l4Z/I+1pj7zb9aEUtKszV
	 haF3Xu7AVHsOiT9F1lmYTqrE8/lLJ3Xyjs6dai4IgZR5JwmBPXeQKYR0XrmBxabOk9
	 IAP6XqgbEvsI7yCZP2W3JERpXW8L9BiQOXNBCZZT54WEDVWHR1MHvnfFTuc7BzC5P7
	 eZ8Yj7YAyv/zvzelKOJhNVQdZA87O1BTLhdvog0kneIu9a2bosPkmseajYZSwdA3EW
	 lIhHLi7pOJgS+8GPldD9jUKWrqPuh9E0GUES7BkqM+sP5zeC9lUlMmc0KQAQxpkvcQ
	 XDgEKkAB9lFJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5544C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 17:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171406694285.11149.15500254976077440985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b48a298e88847a6d671256746e0e9a7c5166583f1154b45c8add87bfb5fa6cb
Date: Thu, 25 Apr 2024 17:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714066942
