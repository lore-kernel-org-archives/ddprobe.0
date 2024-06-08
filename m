Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F5F176FDB
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 09:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717840643; cv=none; b=BIQd0NrY25UJN92wRrDZos11EeG+/cSOOoIDtGPTalGADTF8FdYVGy0nBCXZXrQvu/PIArjslbtkK+smRcLHrZZzagE7sv9/01+sQAM30TviGzIjFLC2CUDLfOyIbPXdNrAj0J46D4g/8ltDwTLE8bBdzU80T8mNuTMWswlikL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717840643; c=relaxed/simple;
	bh=by5lfOhhbD5SmtJQM3lxRqQH8PPen2KGK8oDmSqqlQU=;
	h=To:Subject:From:Message-Id:Date; b=ZhEGd9HC1DtvEoXakAHxg0t4CkH1b9dmCX5pITs32JOniHmLChUCA/CMzSyigB1EH8AlYCeKNStxltXlMCSdl1QVP8IY0XUxYnqmo2FydElUyeokZb12g1QDJ+21Yx+yNrTbC3Oj2pequwtbQPiXWNuAF061isbMgSQhmnWKKvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mVR34jkJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mVR34jkJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8327C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 09:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717840642;
	bh=by5lfOhhbD5SmtJQM3lxRqQH8PPen2KGK8oDmSqqlQU=;
	h=To:Subject:From:Date:From;
	b=mVR34jkJ8k4Lsc0gHV3Ef7ryF2ELisNZ8LEXix88DJlwogZDiZCTCAV5GSsQCQTJw
	 aRVlf60LuV/VIrduly0RoTZ28cON2LNEFHQ4nsV8rkvmdSZAqyuxS4u2oTK9Kwmcos
	 FMJQXdNhQO8hy0w/rXhBdGctdH1JUEfS3QBLlMq8cLxO1neKYefR0dyF+L3SZIvDen
	 OHL7KhZ8wm1Qu/b01j1vVGPbdLWhptNzdOF68jBM5+EHgSDVg1av9mcxDjAhDY7B1w
	 s1TSZrBS/1LOvzlvNS/ZQSps7g/2clpBX7zb/+vM5jbH+2gIsQruII9VyFpo8an+xL
	 Te5CkcvLFRBmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D81C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 09:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171784064278.8129.8544664313991960630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff052c96d5a44cb711ed42ef26d7ad8dc4a6354e189c86223e689de0ba68766
Date: Sat, 08 Jun 2024 09:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717840642
