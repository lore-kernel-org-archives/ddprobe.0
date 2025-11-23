Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378A84086A
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 17:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763919114; cv=none; b=e1Lk3P5QSch/G/6IeLxVcqZvRCalUVISTQ4PjsmeTaSeRl1lKTCgayrcA4v/X5wOsAjSoz8Ij/GVDa4hNJmzF8um32dLE8ZH6v0ulMILX10ErWdvfg3/waT0GPWZ1tSL3aJJNx3t9S+C4NxYreVOa5CCSRqOp3zsXGulmGPZM/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763919114; c=relaxed/simple;
	bh=bKO2VlQY20RU5bb9XkYBkvXXvcBZyy1iQpGIqagOFr0=;
	h=To:Subject:From:Message-Id:Date; b=S128jIpIMhn4RORyQfz/tUiAIYuj6OahT79vBCsAsZhja+eblzDKYXUnOUePZtafc1bcnDXJF4pLSBTYQWZt4lFabx/L6ljt5gaB3RalUw2thBhZxLfvCTCetG5bk9L1YG6p8Wgrix1kIod/SzPHE8ZY0Msh1Z0WsHlWSBjH7m8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYfhyGMW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYfhyGMW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB43BC116B1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 17:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763919113;
	bh=bKO2VlQY20RU5bb9XkYBkvXXvcBZyy1iQpGIqagOFr0=;
	h=To:Subject:From:Date:From;
	b=LYfhyGMWp0Mx2rWiHgJw5tKMwRDJaeBoDkVWSQ7XsPnxPSCpgV1cmuGs7mJt56Us/
	 +nDbmDezf32bOk936NkR645OrY/1s+BR7Gi0GLfSB/HBdMIyLlQMO+9VxYb7iW4/Nk
	 DYe5MgzZu7JEDAo6d0RY0Z84MYdwMgiMEsb0dV74gWSxNEvcGREN0QYADy8bQjbn9R
	 45zkS4q+CcOzzkhX9j6kCtnTnX7+DJufPuwt8DD2JigGpHHVLaYxfNA91j8mkZtHJX
	 6o5jEmrQRH922/w09odUkssNja4uj4gDufclSqxVnL5o3pE8RGFzTF3CsWURweBdE6
	 E+iaGaW0re3YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9485DCFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 17:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176391911358.25681.16696601035634153394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4df38d8f0e6d1feb5a73a1902f1934b26df977491dfdb1eff35a512298e0ed21
Date: Sun, 23 Nov 2025 17:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763919113
