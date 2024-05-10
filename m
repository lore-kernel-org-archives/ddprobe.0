Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580CC18C1A
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 17:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715363543; cv=none; b=JjQxZCqWZLBxw/BSgsdTQZDx2vSuFmTcwd9Kttrml0XLJlDD37aYZfHi53gyMcU0OdEnn/f73S8qhoUlMnkZW6paQNul5ilqw4JCr/xNm7TzihFKCqzu3mFVsDCLVoFg5GUAmZ+h7P50ykVHwsTgdIrXsof+SrafGYWNwpwPHQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715363543; c=relaxed/simple;
	bh=LSNlOrA1pd7mCUcmMLLOqFC4LeN9v1/rwXs7AV/uPFQ=;
	h=To:Subject:From:Message-Id:Date; b=Vs4K9QwZwxTxlEuZziqgHQMPr1ofyhZRN6ic60A0NMoge1t1mM3IPzsfw9aoDb6FiimY5veAubYssd9BBFo6HnDMU34swhhIhzT5K/b8yDh+2izctE3HJEkSbyKN5zVtWkl0tJIF1oXRbY9EQ5k8UoTtn/lmSANVAI/kclKIEnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MRP3Ztsn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MRP3Ztsn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE9A0C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 17:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715363542;
	bh=LSNlOrA1pd7mCUcmMLLOqFC4LeN9v1/rwXs7AV/uPFQ=;
	h=To:Subject:From:Date:From;
	b=MRP3ZtsnoXZU9MCqksCghAbm3Klg23Fm8viTWlWY0kyQx0fKPbMgYSaBOczwjdGRP
	 DhATYrcCoYmGnEK3nSYwjLP6mBG4QWjH+JBrzF6SuxozmEuTjiXeh9NCo6yB+Uh5VO
	 yXzHvgz5ZWCR0myaQVNbXmqS5QZaFUX+0wvl2H4X2tyLX5TCcHhr8kyUGc12fVMiX0
	 oXEvWTDu5PnD7wkjOK/V7vgHSFoPv+ZHXbG4gtHeLXHyr9dk8JT432Pz+ZTxVO4KJK
	 QKNDYXTlxT74dc/DbHKs65QuPM3DN0g5rmQ7dgNl5QdTxo8TfbwsPSLM7KPwZGfQ5A
	 05iMYoiDeoSFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF072C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 17:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171536354276.28994.5022173975935272227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51749c264820569e4dbeb219dfa337002edd17dfe928b7e25a4091c2b37185ec
Date: Fri, 10 May 2024 17:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715363542
