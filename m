Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A78B42056
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755593994; cv=none; b=LtTSJuuNOCTKFcnCdP4dbr/ZnOgi1E3M6j9d8ueQm8Dch73L3xLatE6S1QI8Yrvh8urICeTnANOj8OrJDIM0e1pumHjNDx1+ks77qdhdzmG/DVR02C9XDRDfO+rx21EpuPUleDTTSmdFqAdTrc+ZMuesKNBf69JAF2J8jTKPAv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755593994; c=relaxed/simple;
	bh=Q7OziFtzfZM6uxqu5kCvoV2tQnJNxQq/DRD+1bX5QZs=;
	h=To:Subject:From:Message-Id:Date; b=OBesU7z0m+qOUvEhaVM1u29joPCwvjc4pD/VA1h+ojAsyqJw90hdI6GbXauX/uFWNgugKXysPe8CmHZoxY8DG4G+AwRFOj8q72ddaj5Z/D2axcYMnGtxNYDlGTPGQZQMwZ7NMj8J7t0Ss2PSJS+SREStgE6AhbgmrDrBvUR57gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QceeVWoI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QceeVWoI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E07CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755593993;
	bh=Q7OziFtzfZM6uxqu5kCvoV2tQnJNxQq/DRD+1bX5QZs=;
	h=To:Subject:From:Date:From;
	b=QceeVWoI7cAyjkwBF4nJpCtFrPJfrgZd8PvtUK7ouJT5yv5/C2DdmPmdMmsgwukqF
	 Fkm2u0JyD8nSTjHmlVqhxsoTvWHUYFxnvChoZ6i5X7QDcwZkpq9h+H8kaytDEhOIk2
	 yRwdSHPOMZPee+4PM2a4uXalDfbqr+nD/BKQDg+PCdVNz3Fregi7eTZPdMWcRxeqZM
	 FHoid4QVvvQqRxZ6D4tsbLo4T7pE0gLLA+RnwRpYmwKFQeDyqBSigOS9bL8BP1zVZl
	 Z1emMTmsWyDQvKbfWyi0j9MbIgbh8PbcU0UtBxtNDnKPPiQpsgGiXAP7Oq8nZ6VGkk
	 rTfd6FcSd8FPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9F1CA0EED
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175559399358.9230.10923961425707398989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a9e1148486ab51d7e23d77917709b4e8489b7f43c423cfde8164f2797df6a09
Date: Tue, 19 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755593993
