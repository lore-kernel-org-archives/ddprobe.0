Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B8413D89D
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743982794; cv=none; b=JVQd+TJWW7Qt+Ga1oP96i/OYkR4dbdsyZqqdzxtb4SlXpkJCYV6Zvr+3kp5I/whgU7vo9L0kbLQPlhn74nnZ3VoNLTS2xUuFnd38fw7H4Ql+Q1PGz3TNwnj1/gJOCoceVx4o5T9nV9axKaxCBosKxHCnBEdsaEjLTV+p3PvWjcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743982794; c=relaxed/simple;
	bh=MyqGlB5KpxVmqtPLCylfCJZW7vZWRAK4jaYb37yx+9c=;
	h=To:Subject:From:Message-Id:Date; b=rbWUcIaIbUMOVYHihxbwgCw+yTRSRGL+z+RKcP7/F1nzPGPJrtYrSoH4WmIoDLWywm5988Wfn8oYH1lihABU2jNN74bS5AiExmJMAdnSGLcHr+XthPd6Icc2RjrE2TXTgaDXOMVO7Muc7ZAcNkMk92UHse1qcZ33dt6cUbiJde0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FXqBg9Sr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FXqBg9Sr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC063C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743982793;
	bh=MyqGlB5KpxVmqtPLCylfCJZW7vZWRAK4jaYb37yx+9c=;
	h=To:Subject:From:Date:From;
	b=FXqBg9SrLbf8mfsiNfz8XoG8J5Z/WNBk6XcaXZdhmLcIn6Pccp+SDRlDKyWZCZMzP
	 P1XQwM5/4fLoZPSmeLC3sS8qMKikBc25Gk1ffOkSnsBv4IPpPO5FfMQ+w2I0HrvTXK
	 uGvtVju6UvxsEKSAQGXKqjezRAmdagRBMfipp3OJTAAQfwxY0h5hJNOS1p/PElCwyV
	 CW+iVZjOGlEt4VTle/disjqiZCt2GKPDJHpKSovBWdbRsT7T1U+huGd+lIl51PDD3Z
	 DIVDPl8cpa8RDXuqWRJunDzdFoCLfROi2dCTDkYv2D/6PBTNPFsofmq09feWaCon1N
	 srRQVfyRcYq/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CC3C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174398279359.16120.269218837970075588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b4bd4e1ee7a74aca628c9b62112f42dd2cde2e6a3aff9e898eb73c58206fc79
Date: Sun, 06 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743982793
