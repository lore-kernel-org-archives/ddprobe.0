Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE3D323EAB8
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773729294; cv=none; b=ZilUfystJ78i7Xi6lEDmA94jVGp3b261vuc+iE/Zsso6XnB717HNy0iO+XUKtIt1Ipq+Uprw9UtNUGK90NxS4c58iIipCPfvbQ5FO7NNIY5dT2yfeEW2z0bLpNsHAN8Ih//8vfBiK7WDGaxkQ1HH+ugKBkKLeVAQX6ckOovgbbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773729294; c=relaxed/simple;
	bh=vqzpRNHEWAsElf1ED5eELCgjmuZM6hpKfBjkPwfixJw=;
	h=To:Subject:From:Message-Id:Date; b=VPyovskawVvikY+e8gBPbci83r2BNyd7WM9B6Bp9hFSE+M5b8l1JQS8GaLn6oHTJoOOxdht6LheD6hvaLbtOLL6eCJWpt5bU7xR/OVqC/WgHIKdH831wo95ppxZ6M1oti5r3WZc0u3nHSsztd53/pmxH5sC+o/gpR6FGxQ7FBO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dquk8Da+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dquk8Da+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B76C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773729293;
	bh=vqzpRNHEWAsElf1ED5eELCgjmuZM6hpKfBjkPwfixJw=;
	h=To:Subject:From:Date:From;
	b=Dquk8Da+ifrREqrESF/NkvML4YeP2eKIapuakjplSvt0vurjOFjbwm3LcWmNhobxh
	 7fqpst2crPPjvq+oEGUdkzvXrYhZRH6bZc+0Hr9854ySb+Jscj+70jOqxz1/+IndTe
	 Sqvo47FATZJjtRFv6/YWjmbYUj71ZJHmjvJUonObLrskKHwrZYUV9J23MGpSOTMZWk
	 lN42aHOTSfv1Ggc9/nVGvylLldESkrW5mkUpi1mphPohy6fo1HthUThgFsorNCKxyz
	 48GSy78R8AyG44lOfvbGaSUO7wiDKeacjZHNwzmXBFdNPp9iR7GzJBxTvX69+C8QND
	 rilDnVLDOC/+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F382F33806
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177372929357.32463.3546125534410860113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 990b63ae68937dfb9fb31588b65203f0f22e672380391f8e22d0cfba96dc9339
Date: Tue, 17 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773729293
