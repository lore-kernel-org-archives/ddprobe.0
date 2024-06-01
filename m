Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A36283D69
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 21:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717275923; cv=none; b=Zb2Lzku+/pl/7IoisG4k3wF7C9yB4snWzsr+LvEKmCsEvgmMlt17jXotK72+OtPX4muo2AGM+N3mnBeC5CvN4++oPCEj31N78lHOK5lb4uzuvtciwc67r5ajogig+HxYvOKfC/qeqWHt+6+tjue9qLbOd7RxdNLI/eOVffd+maY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717275923; c=relaxed/simple;
	bh=w+a/mIzNiMKp0Ajsh3012kAB8tACfs3EmcfxnP4KtLU=;
	h=To:Subject:From:Message-Id:Date; b=ZTvGct9CrW1z3tzW/6SUObV46RBIovPQcUREtogO8uOOqPwjbZn7+6b/wiCvW4ppkyr37C1+StP5hHAxqJ7djOwCgDYIK3xV4PLL0AIfrT2cfT8QX5Wd4KE0MDfBzrwoSfUW7YuO0NdG4VuBllCcOG1xNd2sMdSL6DQB3t1v6Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+kP5rgD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+kP5rgD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EFBC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 21:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717275922;
	bh=w+a/mIzNiMKp0Ajsh3012kAB8tACfs3EmcfxnP4KtLU=;
	h=To:Subject:From:Date:From;
	b=A+kP5rgDLx75NQENGAB0glJpxncnLjBx7eKIFYEkw777npeIwIwcUlLaOh6FzlZ1p
	 zgPik0IQMUSScn1rx8bessYSWo/1vlxmcxGlNoE7O22wUmMbAzBNgm/NL8sFPGuD0L
	 pBnRFOQSA1S1RMGS7UIWgvCy7u7P5WqaRT7FUP4mwRgNXTSY5OIsHpS/cmPU1gYsmI
	 KuitinCXTcizlJAigPm+mMXzC5tHcqAZ+bfeRcHSbpxQlgCvlHvLbNriuUcFbnR+Z3
	 CJloim2IpkfTqPi1krJcmL/JzQBkCnBa297KyUqiVCncc5EgA/zC06OodZkCCKsRA3
	 YgrpVQAYRtkGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0762C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 21:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171727592278.28900.7827143730634766663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccf9854574e33bb489356a6c510434298465c53affc96e7972c313c6060f97d2
Date: Sat, 01 Jun 2024 21:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717275922
