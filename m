Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48DE613C9B3
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744996195; cv=none; b=DHgehuSqLR9bPiFxaWwoDQYQuJEquy2K38Rr8/ZSYmv0RB6rfW48aM+HvGp1D35jGC/jGvRIRslb3ARPwxBP6VHMJtwD+sVEdREpgBHuroq5cOdS8A5P7w7tjr0GAgH1yZlwr3nErrt/Z+NTRyPbz28qPYNhlwy3VDu0myzvakQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744996195; c=relaxed/simple;
	bh=xSkstyaxhM5J11jabMtEMhsX8YVAjQQHDGR/VR4pY8s=;
	h=To:Subject:From:Message-Id:Date; b=YTsMicv5fKbKjx2iAvM3c+/gFQOH+qM/x9tFxcZHhJ/XbRo0G0FHIWJ5lH7yCvvCFA3q4OVekcghFPGNF11aBy810aZJnk8tIMIzlez/yd5jvQGljvlvisH/2oSBu/YkE4qzMTIe4fCA1kvsUYDJzW2z47uz5MlpZdwJicnwY1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ux62sqvY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ux62sqvY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4714C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744996193;
	bh=xSkstyaxhM5J11jabMtEMhsX8YVAjQQHDGR/VR4pY8s=;
	h=To:Subject:From:Date:From;
	b=Ux62sqvY5F9mv+KtMdC3PUKkFeUFMzRtW1hA1igaQ7sRBPplCT6Fa2jQv1itQqp9h
	 /sw6og4DRxSZgzrUlAn4X+h2MjbleKcOs6SgheM4BM2E3eoI/sUucDfGnxbsPaYrhw
	 KDfogRdSJPVf7h7PsaAfd6vu9WCUuFjv3b+8pLXO9zdBIwD2/bpahe71nbXTUObbFq
	 3kq9tuktNYr4mkMLQGERF/o2PMufr8U6YIw8Im7oJtZoOr2CAxoWPOIDE17nY+sFzI
	 IBVSTi9jCxNmKqJCh9GwC7lzLuQQMlCzAYHnkUh9h9IVQTFPH5maakuTevfw4vO6ht
	 VL+MX/53MPUOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0FF4C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174499619365.3790.5382216459242152169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d7aaa6f7ec20c06d4e864f2fff6dbcd6f1f80dbdd888a397a980b87b629eff5
Date: Fri, 18 Apr 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744996193
