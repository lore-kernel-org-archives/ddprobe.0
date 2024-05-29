Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FF6383A5
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 10:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716980063; cv=none; b=HTUOLi1XWUou1G+Ivv0g/2TeDiRfdRz/0LVno8NPwMN4ZS1Hj8fbH1XMATq7kOwnJK11oyaCs0mAMHAOju5iEHLr6sKe3B2gd5ZLuQV5U4qMkfSkioEMi/pfJkTCmHrMf70AB3y+cGPDpgE00Au9qcVBOVnmfhpdQRQvjSXFlXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716980063; c=relaxed/simple;
	bh=Uv937Vt6fRqy48sioxCvesk1+QkUbwYTkrfR2N+bK7o=;
	h=To:Subject:From:Message-Id:Date; b=IJ74x2Wq8IoKY3RpiWBiLpk3x1mupo3qJjD0ZV3lQ0jLEJETxKlTbuBs8BQEcazlUhMrrSuYFOd1kdepxidJvzPLrU7BOqVDUz57dNNFsoi64ofgDpI5SkGlII/ZHLgrR4BN31zvVhpvZGaM6Iqib5m/RAXPFy9jplk/NEOkWYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbN65+Mi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbN65+Mi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F23C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 10:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716980062;
	bh=Uv937Vt6fRqy48sioxCvesk1+QkUbwYTkrfR2N+bK7o=;
	h=To:Subject:From:Date:From;
	b=ZbN65+Mi3J1YelsJPsdbmMRjiPkVutDozzdheO1u7xuDAE+77S3NYI43KFDNF0DQK
	 FKUYKwI4HT/2wUq1JncuJRhktaV0GxqcODdl1ruQmzNsPbqmQ9odNlh4EGgiITBzqp
	 QqLYNjH5oSOd+xvXINHzoQKXXoMlIH/1jCqkRa3pRIKJwreMrMGG6irjWRnSePUolD
	 7dyd2OdZYIn5MrvkcPl1TnSat8Zpc2vQ65l84ImyICQdzopvaBxUUoCtuRs9+x3Uuy
	 UFfFllETD53lVOoh5NcT8aShCS5TjeqkkenDBtQi1kCEuMGSYD4uLOWvSlOuMPMgLK
	 E6c0RyCO7kqnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C48D1C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 10:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171698006276.6988.3329927178251683002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c7e6f81dd4e983f7d12eddec0ef66ce5ae515a366216d7ca58218139bc2ccc
Date: Wed, 29 May 2024 10:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716980062
