Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458E23C0D
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728276354; cv=none; b=XSWsIvpl5jI0TYj4FS80JMDA0Khj2ppS6LJ55pup8OsJO3VR71xAuS+4E88m1GJkcencTC6JyHQvF6DPmThqx7HpXQ+2xu1/f9DgSCLLniDeaVVvT3RpfRRE8QXZk5BJaUwAQBgugIKujSnhePEJ90imf8jw+bisypOS8oZn1nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728276354; c=relaxed/simple;
	bh=dVEBacllfobs/wq1N3p6A+75MpZTDCjCAeqMo0lJmz0=;
	h=To:Subject:From:Message-Id:Date; b=thqyq/RgONLUuKt1zyIZCutwLxDPLlpXYYRbC/xcZjbajDgQP4wIM4fAkoQ3GvCQakqdkYXvCAXGPxFVD/cA9FdBe3XOBVJRj8g0uXPMm4BI4KF80vXd9QYZx9pe40KKtFhmREl08jkt0101m5s9Rp7DqqdKkWYiXmqiU3caYqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRTWAKKq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRTWAKKq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4097C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728276353;
	bh=dVEBacllfobs/wq1N3p6A+75MpZTDCjCAeqMo0lJmz0=;
	h=To:Subject:From:Date:From;
	b=PRTWAKKqA/Cdm4L/YT3i36ejJDDjwtsOSKve4WXwZDLZDtnqvLpEnrFxPMJHb3SuY
	 iawSqkTWBksE4OIvARbjlW0EWE+xVJ5CodBXFp87kPrAxhGMhTkUnK8FjOPo0GS7G5
	 jEDRYE6r87BWwbXCzdQshwRHqogIcmufJ0N23LFC7oQylnbBojzf8tiigmbSb11KQS
	 WQH9sjYk90KCk0UK2aVEIP7wRP5vSHL4P1DdsRnxmnmamXYInRMxTuxKsyy1SXf4lm
	 KiQGGkno77pgzD911XBWQZNumzuECtkesVXsT5SV43iG0ZMggGFGhGLylVw0CSJmDk
	 Q4OgjfA7jkA9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3461CFB43C
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172827635364.12970.7397431470748628765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693d6521c2cce2b6334d0c401b6a5fefd6b3b466bc4392ab14ad1e78188f3fd9
Date: Mon, 07 Oct 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728276353
