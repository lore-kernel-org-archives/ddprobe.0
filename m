Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A8518E0E
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 19:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714506143; cv=none; b=EnA6b6eA/k0jkcqnMZxpjCYDjPhx65dOfL7rfj8emlZDUwE6xNiTvnCrfxp/pjhpLb2t10r/20SOAs9jbqGrKgHysa3ew5Mjtf5bMRsQ7r6KpXPmCFb3nDTp5qjmar6TznfsC5nkz2XNHbFIgs+8Gpy/WQhZ4K1Q6HpasKzoPIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714506143; c=relaxed/simple;
	bh=oCCBeA05XxqY3Mgzuz310QV6guTn0wlcnVPuGPQeBbU=;
	h=To:Subject:From:Message-Id:Date; b=Wl5Q4ynE8y1b2DSIy7lNPd4mPhZk6zNA8Q/b58O5LfilrRxOG959sbYhuQrgyscRmotMxIokmpNo82Vf/mBlmVM4+ngMRB60hykAqPm0wE1mJW8KbEoDIOotNC9xrY6VgEFN3Yc8DQ5WB7Rmbyx8GIpwGxYOQuIaV696F575eGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0nFPd+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0nFPd+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB80C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 19:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714506142;
	bh=oCCBeA05XxqY3Mgzuz310QV6guTn0wlcnVPuGPQeBbU=;
	h=To:Subject:From:Date:From;
	b=g0nFPd+CHgpdVSPgWFRIfeA0FM9tXpLjhW61N/GNk93L57Nrnl1/EBpbipV6DHqT8
	 p1gL/JnjVqNdrbyRoTouYj74HU7n3wQ66139UiqqivlytKgp78hp8T5LLKHwFu9gUy
	 tLzFJshe0bLfZoqJBYA316eA3ZOF2FKTez8Ca0aYtImF1nivtyZLvIHi1cHxO1AhhR
	 awEe1x4BIe1oy2aN4XU6CHjdlp/KWmu/LZUYFF11l8h3TA7d8Lgxn1NbrorGeYT2t1
	 7cEV39tfeVQF+ZiCFvx405VCoL9wnDj16kWNop6aBHFbdwIh1MT7m2VBe9BrkD21qP
	 2SqIbkTaaMmfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA8A7C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 19:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171450614278.6813.3207800830254107431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 072d8a0ceff38ac4cee18860313c3ace197dcfe65910a025697c99b7f81928f9
Date: Tue, 30 Apr 2024 19:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714506142
