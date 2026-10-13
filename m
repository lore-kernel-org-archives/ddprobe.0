Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9363597B
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791853834; cv=none; b=Ny5ZSW9ams5ZOTuI+vHLHro8LuVM3OUjxT8QBzU4NQUdIBpl0Qw0wZ3zbtx4T5Mn0IJUjcIKSfuDvXhyuFMbngTmGHaaH7yNHYwQuqosVCu7AlAUf8OmZ8l65+6QN45Qde48CjhQ4WQo7t3TsXeZikWG0kg3LGr1Pt9g+nn/ct8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791853834; c=relaxed/simple;
	bh=zOu9/L0gMSSmk0e1+hNXyOqLqMRGpPHm9Mdn3imKb08=;
	h=To:Subject:From:Message-Id:Date; b=ErN89cv1iHzuh4BXqgQ0m1SSbMeGZ1pjlY3dZKS4npCMd/LBtMJpJppfOOTLpkPcn3wcaNILhWXe0O7DKHhkyI52+xyeRqI4kWSQdClx6Qgw+e2ZukISrcHW7TQJiNMseRUySTm+RvsLrApsk02WhgMInHk38nqbSN4j6JCk6Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nD/CBrB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nD/CBrB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8A4C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791853833;
	bh=zOu9/L0gMSSmk0e1+hNXyOqLqMRGpPHm9Mdn3imKb08=;
	h=To:Subject:From:Date:From;
	b=nD/CBrB+QCtkU4P/W4+gsY+w/Aro57m6kLrkIRjQUT93KwDzM+ehDU/wV/bkmoVSG
	 ZS3VlOCbcIDD4Mt6uT/rF3qj8PizhySv0wLU3E3iQFJ/hKUJAfHAR7WCd7lXR8NtIL
	 tWA/OyHWP5/hXzYEVUmAO/PkoSsx6mZqRnmEUy8lxDYAmTmtDvHrvP6SPCU0B1R15s
	 CFrG2RCrz0Ad57Babrv7IIEweK1eX7nKJ2bnR3Cw7JaW7BVuCtbCiORteex7hwmtRR
	 CqgudO0Ag6O3WNlRj+Z2qmtK5L+TaizLwQ4xoF8YBXxz+ZZTzgI81jZVOde9gFyMOs
	 pKxYVNwjf+gog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA56DCA9ED0
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179185383368.22233.4180858826971017968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4c34b4f02bd8781b8ea041b4d79e1ec04c04452c4c934a12f82ef2bb0e9cc0c
Date: Tue, 13 Oct 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791853833
