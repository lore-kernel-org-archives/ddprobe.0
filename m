Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448F34749D7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789040434; cv=none; b=qXaVQk5lDeKiVkN3Lm6yHcFnSM93Ebq09mCMAQpS3nCLkhodRG8P6zzQcNnI/hNpkz8r7u3a0M8W79N+AGjelG1eY17XRpqsni8m0nlY2g672YEBu+zavbNoJfAYH+EW7qpe/x9JKIUEuTzpe84chGP4mkaVX6ngCkE84xl8VCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789040434; c=relaxed/simple;
	bh=FeKqE/0CIC9i5Jl3i2G6lAWxJ0SBNcZluOY4PixTpC0=;
	h=To:Subject:From:Message-Id:Date; b=PFApRWnQgbWCvfeyOJvG7DxBe3CPup/GJFXDhcL7mxEkYf4sU1x0a+/hoFu6+pygIKi7pNcJyd9aQVqzWQupi3ICK4ZFRLbuNk3iMJpJpMQJn7DHSFoxdRqkvYp82BqGJaLMEFFfN+xoIhA1YAmY9j9velbyEkGkh6d/28UYGPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0IZz35+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0IZz35+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD98C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789040433;
	bh=FeKqE/0CIC9i5Jl3i2G6lAWxJ0SBNcZluOY4PixTpC0=;
	h=To:Subject:From:Date:From;
	b=o0IZz35+eu0ohLlJb0XMyBI91448oJ5SepXYe+/t/1SNCU30st34ROoApdkP0henw
	 +MUpF/5vFgowNGLw0riW/Q6Hcj6ttpGDMYyrkMJaCqlKyd7txynzHCHBXZUxg+xK38
	 0Hxf30P5FZH1UTVMfSEdUgQkkhE3A7ZukElGmQejXzGL6vRWE62/FoUIKdqddITfKN
	 Mq8pUKo5+LFrX6kYCm9jP+R/P8axCSwm4RIVn8T2U6ZooV+2VEszWFa9mV4+C+rea/
	 Z1TBC0hODBHZi8Ie1bpt65CEUkQsdSPw66qndBkozx2oAyFWYPWcoI7jp5El5afYeB
	 ObcYbZln6dC/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA02FC79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178904043368.25556.12994640416128842510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bb4ff6dd4da47123db1254e663b32510cee26fdc107dc814b8cf7d947bef6eb
Date: Thu, 10 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789040433
