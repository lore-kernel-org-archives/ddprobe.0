Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4238915F3EF
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721849754; cv=none; b=SNnbv7u+bw8M3kiFil0q9h3a15+0q8fW6dnBUyqDAYhNUDFWQLcLUlzdoqRohWcvHmKG9/+LmYMvCuu/d18SmrBmocgSqIkqb2yiNvEW2Pon+zVPsBz8Du0hw0iVbg7RU2Yp8o4clcn/pxZDPJ8Vfvmy1LhU1dtLtUJlS/p+MEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721849754; c=relaxed/simple;
	bh=YMpDsuZbq4AqosbFYm5R6pZ3wJTxPC7X0pdU5CCmyjA=;
	h=To:Subject:From:Message-Id:Date; b=eNfpVfJCOXaOFcikYOmLijUe/Ca7cN4iHSWxyHoDjqEYLgVXdSNEgJJ0I/ww2qa0wk6wvD4/npsLMKe2zcCR+9v2rURm3mVFDRWk9pzoMlyR62iQGQIjnUTlRayddfNQbGfkojp8uErM9RdhpxFlHVXvMhENG50+a/21U8r+JZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iGGfjNag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iGGfjNag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9A3C4AF10
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721849753;
	bh=YMpDsuZbq4AqosbFYm5R6pZ3wJTxPC7X0pdU5CCmyjA=;
	h=To:Subject:From:Date:From;
	b=iGGfjNagyqCLKVGV1Cse7kM1Ip1JcdSmuUOcvtIzT64cfgcQXb9buEGZk1z5iPQkp
	 iHuN4nLp8SVLpGK2SCg+P1PS0HIVkmQW1lDMnqDHQoZdA8oJWx/ssKJ7UU6USXVVRH
	 Ddp4xoULT3gqdE1Qy14b2w+S6TS/KhVg0RtYtuA/Fih2TXHsvffwehu6A8lVQhg3ZM
	 FwIDykmGwKIY0MzPUuVeK1hdO+p6NtAZ/jn/SsSGphGbpGx0Vb05rYTI0pzb9yNg5A
	 9Hrol60h4MugoGT7Tme2FGynw2EVojIdpoKAuxsWWjRvPCvsqr1rek0+BAwee36l1U
	 lH52p9V+vkbhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97270C52CD8
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172184975361.5364.17464535455136057031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61003276706573b28e89e41571788dd0023218d5f0c666b30542abee89bd2c6e
Date: Wed, 24 Jul 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721849753
