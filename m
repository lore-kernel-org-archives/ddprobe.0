Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384DD14831E
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742183395; cv=none; b=d/nPA8ilDGrbTeudJsiOOwVari340FCXwN9FCE8XUTRiKowXcgkVaGli8/jaXVFsG5DFGBv2yYqmmdKKU+ywV2z35CGiKb394fpX2lyVmjeT8lPuFqeyQJaUWy4Q4ubda9Ats39gDyGIgrrCQICb/BzFwIcgDcPshW2v/4nUKEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742183395; c=relaxed/simple;
	bh=Gu1OjuA25szUYcAJgE+SbQLjC7kGRxJbXD8APgxYx3U=;
	h=To:Subject:From:Message-Id:Date; b=qDqlLWlWoHkIOidnesutt1+SadMM+Jbp1s95slzkmWPdZ+P0caqyZeMzulNtDz03Jkmz81SFsd2hbH2mUNWSym0XbxpbPYFA/Zje2aD/YpiAbMsRa6YJsIuo9eYQHE3xqPCux3IUWXP8RTxt8rkQ37bziO+AdaNhUblcoTKS7OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9aOIGUJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9aOIGUJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED67C4CEEC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742183393;
	bh=Gu1OjuA25szUYcAJgE+SbQLjC7kGRxJbXD8APgxYx3U=;
	h=To:Subject:From:Date:From;
	b=D9aOIGUJzo4NrkeepaP/XDZ4PC958hBAJ9K3Zt9vl++EJV3/i6lkqZytuF7djjsM+
	 DOX8YDLFTF9qpnzdo5dgMVnwChgH74R0o8SXk/vwSvVe7U7gcYQmmz4/c9wyJxxRzD
	 a0AS5RshTjTOxtjviWKOOsYoHaF+Aqq7EPikZdJfEps9d+FytIQPzdGIHSIJ0Kifhs
	 SIxit5qk7kUvTxgjKx18zswXtt7eeRJjzjUeLBDSSVxeknG9qZxvKxSEYrXLVwba7x
	 B/Fc2IbXgbqqkMRNGv8K5dLx3Sc14Am8ismJgGT6QrQHZ89BoMsE4DJgv6dfbMaHFz
	 6hTkvXaRUdmhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF3CC282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174218339362.28324.8804958926964418889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfc8b0dced09a265f0195355839f0eef9841f74870e854fa63b920e37ca03081
Date: Mon, 17 Mar 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742183393
