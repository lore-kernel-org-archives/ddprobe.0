Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B43364953
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786316434; cv=none; b=BuMVVTYtlmkJttTHNm8yNE83ZNHBBAVV+YjaWPAwmuTAYLQQhrKht1eNao6lbj/7/CJ5fJzUOFAK9fDS5TGKS5bc7JYPNdHRlRLvfrEdrng5tT/4vWj+PNfKWj+Stb1/uMHG4tCM3jfZo4HgMkt0Zreh+ehWS6xIGuZ59sfokkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786316434; c=relaxed/simple;
	bh=BZJ1OL1HRsNLLOqKaSZ4NYgoV1bVUWhWZN5cGfD3iMU=;
	h=To:Subject:From:Message-Id:Date; b=PzOxvcWXX4gj4ZVp9APk+zvpG6eMbGl6OUppLs2K75sPiT4AGj3BwkoaKIkJz/ozUmMZLG9d5Zc2n6/4gxnVbWR+hpWlfdZiccGFKMuIqc9welcXLMpgrB/n6rPsyz1pvrZUC/Bcu+tD2ddIQlm/tBy9naUnSrpAJfwio6tLzTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lkApLmMV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkApLmMV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A0BC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786316433;
	bh=BZJ1OL1HRsNLLOqKaSZ4NYgoV1bVUWhWZN5cGfD3iMU=;
	h=To:Subject:From:Date:From;
	b=lkApLmMVp2MGZM/a83xhaWUi/pQRW27mT854Lr93UZ3pju5QReYX0SO5QUTA5fmnJ
	 YTnM5k/uuaq2Up2AfsLLymlwpGeZmC2LAeGAkJRLDsiHA1JJKEyW4AdVM7TX/6owPS
	 wO/jL67M6WBPnSsfIe6hN3ErZsskLFyPIQQKYyG+eTp7xamRG/X8IbQJvcMf9Ihoym
	 DEJGYwC+5Us6Zm3j1hruKsQvRQC2NdR8sxWyEcJ2r3gdYJ6HZJnD9BA4tIoHITtRvC
	 VKTX80nFiGrA7LoU8HTto7B1+Nj3X+azur0GpYZSChEysqbU++5QZC/ydX5hEyVorI
	 cuy2LMMSqWUNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D80C5AD5A
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178631643368.26872.11691594405644166679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 532fb60b1c8f0bb1ae215510dc2b5b73792448c2d77e56f3fbe49e01368496c2
Date: Sun, 09 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786316433
