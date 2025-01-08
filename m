Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3649F1A2396
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736373954; cv=none; b=dxTUsoH8HwlrZ/I+WSQ4cY7/7Taso4cIUIHAOdTip4+zeGkomWekANZDaJHJa1G8IAhNACmkzEEw/OHGZ59TZXhk7obHdtn2xyD6i2jbESmmjgcuwuS4jJKolc4TlvAG81/4wIvriiaarMq0c+3+U2F+0sNBP8pIKc6PBGUwDLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736373954; c=relaxed/simple;
	bh=UU/sZXvo1TlTXeWf4BjtWAR1zJ6Rh1BhklTO7cMamkA=;
	h=To:Subject:From:Message-Id:Date; b=t/lOg+ZS/CS4axpN5iwUQTa8/WnUoqCeISwqn3AtJHa8aeVACmhhztQ0ANwBELel4WPqwa6OnBLEgt97uPTZtWMZEPa1KixHZjeEtW6UWMuwAJNmYDWLQmYulcVWjeXDsORbkfnurWZSzSfjcP46BdpPi9o8sKF9ICHWLNl3D+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYNuZBs8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYNuZBs8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4549C4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736373953;
	bh=UU/sZXvo1TlTXeWf4BjtWAR1zJ6Rh1BhklTO7cMamkA=;
	h=To:Subject:From:Date:From;
	b=gYNuZBs8ha1CYnYolzUtl1Mj6mZL1pG6/XBGZKzWAUkbCDRvyAHRaYg3slRCjARGB
	 bac2WjFpAatSzzCenTUU2J2EM6m1B7MAg3zVKXjpnjtie9YlYm70p7fZCABFLmwEWE
	 yhqB/CkyB8s1B1ZZLJvd9Pz35EO7KlRbqMUOYnhEkerasZmhhrDWJXiigXaoBE/o0X
	 KGfPRsFUpIvNHSwaLxAv7T6s7mb1zlavZxVQvpyIEFjV5H4XAEVMx9BpEn0MAsAaip
	 glfK3iGMuYxd2d+R0By4inH4OQu9GwnD2+KdVjWSIp5+fAnfUmY7AO8yRMGlESgwQ2
	 wUtAHKXLPuvoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C8EE7719B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173637395359.16397.10526552384956609184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c50f597db46dfa0da815dfcebb69aa5be24d2eb958c2682eba394d02f2e2950
Date: Wed, 08 Jan 2025 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736373953
