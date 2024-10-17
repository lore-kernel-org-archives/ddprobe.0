Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129505CB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729156554; cv=none; b=jZvaghictf4q+L5cW/miBQVeludmIWA0lNx4wfLIHenpjdbsXcp+ySbucQi9+bU8uHJU4Mv0RhFep10rM5FsQd7WbH+q5jD7/ds8l8bMg7wuRrtiyZUiExxoTwOVMEgctxOhrELIARBDRj+qVb0JYzIjMiGYH90er+bC3rGkooE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729156554; c=relaxed/simple;
	bh=AadpUTCgMCFJQKKcFRtKQJVAOJWEatUHjMxE0gJoLns=;
	h=To:Subject:From:Message-Id:Date; b=hsTUB7fcLoDsF2qCJ72OOew9V1j5AavUfjlSq5RxSRSUXsi/ck6Quf7FJ1X/vPt9z+z6MHP6NKyC58KC0XCkvlmqEc9ZY6l/KVOSdq+m2x3mSYioQvaA1lPn04wvUywarZBVtBIAJjQnz4GD4D5ratoOAcRPYtYD65FLwumfFek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiSF5nu5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiSF5nu5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E12C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729156553;
	bh=AadpUTCgMCFJQKKcFRtKQJVAOJWEatUHjMxE0gJoLns=;
	h=To:Subject:From:Date:From;
	b=CiSF5nu5bTLD0/mCQyBgnBLzF+lPILSVUwVzWSV+xkFqDhmBezFHZpn5sj76Si7SK
	 POJlr80UtOW4ab/C8cXOrKWIX4E1SkTRFWJnwGhXcRbTBXJbyUhtuRJcY7FLs6DTWr
	 w1Ow498eqBzHQcp+At24oFqcxYm4RMY5SOpTbBAFenNOooABUOOa+VOAO0z/0tyKt5
	 dC8bdBPMK2Qkpaaiu7pUODyl91/jfPDzQ+Hf6BOVPNbVGLSl2LBM1/X7iLwNLY8Htc
	 uzVTW5oZeQkMV6Rsjp7E91VlyGZReUP0gyusihBvQ3ud548THz6Vf5XNS4+HbisAzm
	 FG0/mH8gPbk7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBCAD21262
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172915655357.32448.15547911477662858223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea250aa878f78e04ed408b49ddc1b85a30b7c97f5cb25b3dae387b6c4f4b59f6
Date: Thu, 17 Oct 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729156553
