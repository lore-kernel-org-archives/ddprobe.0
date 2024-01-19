Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E59B54656
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705676296; cv=none; b=FQncOhZSaXJdwU0L5Xbjs1DFpsmPIqpVnNBpygT/OM/Q94okYBHV26uIEvYo+mPoxPXKzpPMfe9DFvqOBmSE4G8+xTYSflrrdBUaw0jyJMEAFMgMmhxDuAVsGFyDDj0VqIgaT6mBQACAS08HA2pIqGC7F1BQXhqMcn05pfxcyMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705676296; c=relaxed/simple;
	bh=oDnZcMt/m8HEmbJpR0QNFLIy6QgBp40faqo64Tpv1iU=;
	h=To:Subject:From:Message-Id:Date; b=bWdgOpzmWt3VqqcLQr3riqaOiXSkuG2oObLznf4/VIfvmbBODp70zjt8pElUDPoLa4dm1dbuA7LWrN/+creFzmKJZECAF4JqfHXK49GtvZlc2G/1a17P0V8MQaXepyGFy2eFnxxVi7KPMnjLHrsR6wouxXgfD28i12U42rzgkEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDPIePiN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDPIePiN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71FFBC43399
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705676296;
	bh=oDnZcMt/m8HEmbJpR0QNFLIy6QgBp40faqo64Tpv1iU=;
	h=To:Subject:From:Date:From;
	b=bDPIePiNAe6fNWHTvcz5gsEk+d0sa31CR/DAuImA0c5gt3MR4k3MAdDAwUST/GVX5
	 g8fk4fd5khNI1PMLsWaB/ya1RU1AbOMfoYrHBFTpmJF2YhkJXqimJCjdH6ONltk3DL
	 puDaHYRSdvyI3QHPb9FBnJnRi5koj7ZXeZe3hAjCNSs1rN5VXFV+IL1+1+eOOfakHD
	 4xLGMyKvtrs4fnFNbWXwfSMwXpmGhu5O9PnqLGGmOe6WC08wrlBBz0mP/OQ8QBvoUw
	 6Az8yAptVcewnF0UENxS3G/FHqtDq/7mPBklQCE/imSdXKt9pIdmwd1Fb9ipF1TG66
	 i7LN1RhAFCzZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BB5FC47DAF
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170567629636.14244.10108079832769785811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b8de01f19a2c0fab73cd5339c3910c5b74616ec6a85a9d8000ed6cc27b9ed1
Date: Fri, 19 Jan 2024 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705676296
