Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F9B1FCD08
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737114354; cv=none; b=JcIJ7Ef9nS5kRqvytePhzqro7rdBDc1C5wE5dp8IOzuSalOk6TK18xjRhMAvr9I6Tceu82ezwiWISds4VQVYA6tn9QZA3NvIVwSqBZcGsKbA/Vq+0G5nmI5va4zhpr6DvLq+/NfmjuACr52VKtt2gsEO2cI512rlouQAgGSRoxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737114354; c=relaxed/simple;
	bh=AlylTN1LW0++Q/sRAGzoP4tpHIaSgbfsVAN1PWbKn7g=;
	h=To:Subject:From:Message-Id:Date; b=vARG6cqAKmJGw7kWp9R6nBK8FLXq8wq/3xjP1p4J1O8uJeQuoUXDaHJ1w/8O2b3kmUGft929bra4Kr5amHMzT1Web4X+sEWqEIrvNvNAkYUbys+E9UBgLXzGpSCIMM9DiYGBwWhXVqI//4Mhr/YLG+l1XEa3L2GqIv801xN2fK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAhCAYyb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAhCAYyb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5813C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737114353;
	bh=AlylTN1LW0++Q/sRAGzoP4tpHIaSgbfsVAN1PWbKn7g=;
	h=To:Subject:From:Date:From;
	b=mAhCAYybtJHg4BkhQkXsPxrguzMtfGFV5MZnLikfvxwyn4PueZGEUHMI2umKMBA41
	 VDbQ4yGAbrE/NHgp/KyXY/1nQz0noFCCQeeiDAc41imD+J+ISSJ+kBPMCFnTgg48Vm
	 3Seg6GryebvmR8E63CH81X70O4SU3uFm9bsMASQJfl9TDBkMGLGlUxe+jhykKDZxLs
	 /7QPv5M1y2CDCmD3I59VUKhlb4xVCLYdN1QuXzA03WNUaZ3uzUXzOj3BpLBusy9eaj
	 Xbxt4r0RDyt0mqvwy1PsSafjpPQKiS4B7QCYpMUPsERkaFlS/Yx5EpCErdiXGrvsfu
	 pDujeAHxwqZFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9C9C02185
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173711435357.13983.17580037276640243892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9005a5884b5f49edf292db9ea3532d6907c17647731ea779642b8c18d8001774
Date: Fri, 17 Jan 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737114353
