Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327CD248F66
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756782594; cv=none; b=L849WFl22Vs5vS0r8yQdDNW8Rxz5W/tV4slq8n1+8WIj929EZpmf4lb6W0ZxsDMPlaDTbgg8SUNseUcKH44OgcEqL+lf1Z7CUrD/N8ywZGOW7kAbJZ8fltZasZFemu3yO3JjAhawh/aV92vDOkz0ujgiuP6k9bATBhXpUSnskhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756782594; c=relaxed/simple;
	bh=Dg4UBFJ/Sg0I5+WmQMPUzKIeMxwqCQCyYMG+ZuG3IpM=;
	h=To:Subject:From:Message-Id:Date; b=cY6fOC7nnXllSSy7mYXTMjUWqYEDpqieg+L5dzOU1WeRUcWVPm3aNYOPXr5shpNs8FBQP/tg9qDQ9qDY+Gju90nybur4rpasyG+pymNML6LJez6XsevOtdDq/QAuDtngpBKmpsqlvf6Ov+5bWzmqEnIlZNsSvoBA0plctEy9jCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hqLf/U3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqLf/U3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EB0C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756782593;
	bh=Dg4UBFJ/Sg0I5+WmQMPUzKIeMxwqCQCyYMG+ZuG3IpM=;
	h=To:Subject:From:Date:From;
	b=hqLf/U3ETpY0avWDtZFXbgN8VhCTJPcKFDX8YnbSCyJq8AP2nTJIEvAjtRPWdDC41
	 nDl2u+lzg4T51aMrtLsVBc+zN+XiSJBALipA/ruMcItY+M0Lyf0xcgaU9Dbn7HyudH
	 VSDCw3qRgLUF3i1647zwyHHFNY1uVgFr5RmaOZu9b8+A8NTu68q08wa8y2O2j/d07V
	 mfsyxrSAd66yRoWPU5uS9Ao8xjlh5+lGR6D72wY7Lf7gDCen3Ywt7kdl07ye54woA2
	 t1xVYpo9+CC4L5Ok8izHV9NyN4gVYCOEUEGSUYG5eSN0xoubUaCEvViM6pDzqlnPEg
	 QpW3aipyT2iQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BAACA1002
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175678259357.18145.17738551285755709769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ae286f0395256a63e1df69c30df149a299c23f5d55d5dd1409d351e22d665a0
Date: Tue, 02 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756782593
