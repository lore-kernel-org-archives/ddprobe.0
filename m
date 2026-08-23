Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD571A8F7B
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787465434; cv=none; b=h5T8g6jF+LkmLoLWLUKYPd66yLeM27Cou86BkDPWoCWzbESYMwFapbbecc/Nx/UT+XdEqx6AMaYUawDgBV7o22vWEEz++0202NUnEKkw8cBJ+ZwUjA0le5fjupbvRPUIMdcbgJY2abHGANkvSHYuOArTeD2RLfUYOJGCOheTKeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787465434; c=relaxed/simple;
	bh=WUhOjpRYgvXDsc9GLtpEBL2Y/lwY8bQj0C1Zk/5FK84=;
	h=To:Subject:From:Message-Id:Date; b=tFI2Mwmr4hhqFHpa2UIcPeiQwmGCMcVRIaNiCBsw9t8U8lfBWaxtkOEhUXdNIUUmv18wk4m8zsp9UMbL/P11knAKqYtOw54u4C+ZaOBDZ9FqXUD18khfDvY4tKOipFZFnDnIgtWnHTL8TM0mHscZYWLdfuqaIM5OYXLiDMDj/Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYzRgt5l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYzRgt5l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BEFC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787465433;
	bh=WUhOjpRYgvXDsc9GLtpEBL2Y/lwY8bQj0C1Zk/5FK84=;
	h=To:Subject:From:Date:From;
	b=jYzRgt5lQWNOleMZCKX8+5j0VQ7GLLlfczmWB6FZS8aWkB2VRmPQ/VfdoQ0CqRdrt
	 w9efwiJ6LgKS9luGSHjF8erwNl+y2jK1frD3Y2jDONodxjnBD3vYvsrcthg1R53Hs1
	 PXuNz/y4UZpYRIRvHYQZMMNgbkHoxykw9OiCt/n3ihqxyytG+x1okwCY6YC12tc+PS
	 dDfzXUIx7ySO0a+XSKM/MVZZz1M5CJWuJnDDS09vwRE0G/ii2oEX1V1BpHoABVNDI7
	 j6hLLP0Q6/XfDcTbQryg+UVk/xvdMRhXq0fqqMcoROJkUdEOm0+r2w3CGHt1PI2mpz
	 8PBUJicz2OGOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB84FC5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178746543369.10326.1923916390336232501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 829811c8f12eaef6607b9db2549dcff207a84ca9f2c2b8de7d5048933f9c590a
Date: Sun, 23 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787465433
