Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321ED381AF
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760188794; cv=none; b=K9y6bwbJfe8jCNBypeqyXXItCA88i1sxn4DJpgRSNaqh1jfqLYx4/xxpnoPeCX4WA66BEQtpfvec89ukTautkDtqbDW1Hdp9isTzFHNuA6mRsfUoW485ztl25W/2wcgZdUJJJsGEa4JnflqN7sab5EeI225fNpSzFwvlSv00VXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760188794; c=relaxed/simple;
	bh=5Fl6tuhpVQkjHxKyoFcbrvcCBOmyXPoWQTwijtsf8aE=;
	h=To:Subject:From:Message-Id:Date; b=gbpyMqUdpIgU36N9ihhX4AHqljuVMZjFSbcXBXrzLiMAox8Dd2VjXdINztCJesCVA9a5AqUulpdueo41XxhtXJnEuIc6mra7BIt1Dhv66z3E5CU7nculU1vYZgLvLuNGGhqgNITNibG4NvZup+98lmy/ew+RnHaAtWa6Bx3V7NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UxArsOln; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UxArsOln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1027C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760188793;
	bh=5Fl6tuhpVQkjHxKyoFcbrvcCBOmyXPoWQTwijtsf8aE=;
	h=To:Subject:From:Date:From;
	b=UxArsOlnZYGHkwVlr8s8Rees7VSoE0hPN7Md1nfuW41K7G+Ji//d/IKpI0o4iuhMQ
	 av9L7zbsLXgeF/hWoiKRba9T7vAOAtfxUUDHjnDAniInG8j/XyUXr9y1BQgO+KOPqz
	 AKtaSjkrRalH9esN2TlygShK0WVU3yHSof+iKBNhqlUJCEEdOJvefXv+1zB0Rlsidy
	 lndx9YN+0+XR7KL6DYz65uQf5umb6G9XnQp6yVvbIlecTW0Qyb+i/RKkPnMNXaOtWO
	 kHPimQiiJCAeE9mnmmUJs6KaQCf8HkirIRxEyZ87qN9Y5Ho9FwgkveIQyoMm10kzTM
	 MjJSxOhG90StA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F464CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176018879357.6989.13702126394055466254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3867a58824aec2cd73a94f867772fa94f08e5cfb6040b061e61edf5cf3f8623
Date: Sat, 11 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760188793
