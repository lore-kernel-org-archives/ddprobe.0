Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C2E1E0083
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762714794; cv=none; b=HK5iUvNmXnNZHsspZHoZvR/VrF5/G/ZCk58K9dfXi5RKn/RV1GTdmaFnBRZHYRS4X4aHRLXiudAEnudbYgSYslKr9+aLabA3lnaEsP/SodHX2w6/stc8aU1XTNcSlI9iMfkmYKrdJ5Iqpc/6MZyAMFWUlsdPDhBBsDxnDaXRFws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762714794; c=relaxed/simple;
	bh=hhJUtgR/Wqk7Ye4XybzzhjGAuMl2E7OdiPORUaDJuO4=;
	h=To:Subject:From:Message-Id:Date; b=S/hzv4gj0qmDsmeVnjlch87HWQu0qdLE/ODKHsJz0EspEFsdQVpAC09EiVAUezRK02LtPZw4sriiuvLOTw27SZggxLv6Iu1etUt770ua1M7O9b/s3ayixzInBOiMel+q+mKDupA/hMHcqrs0zaYuHHmBM8rV08EB4pvyN8/7nRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bkfds/ko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bkfds/ko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB3DC116B1
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762714793;
	bh=hhJUtgR/Wqk7Ye4XybzzhjGAuMl2E7OdiPORUaDJuO4=;
	h=To:Subject:From:Date:From;
	b=bkfds/kowU0wx8a/mrA4/9yvGiT3ITDfLFVrD4Ah4vNqOU5fe+xMWBN6PdzevHCB4
	 AgUSIYf595dPi430kNuOdkeIwF9r360Ac45P5DGgDL098S8Js6Nm8GLQJqoMgS63Rg
	 mxJsRu3E70VI77tR/B5XtbWkLrnq7OQMiEOSpD7eq+gWbsQFtPBb4SmBas4tH+26wo
	 bGODyUZVRSb2mnlGoWNTJbbM0KRfsj7vw4dpS4vXejhy+SXf0pntmizudmo6QlZnBV
	 L/AEf9o6lwwt+GQ9Erj4laEk3kMw5a6a/wkVskEifD4vySqGhR2IsUi3t8N92wZk5L
	 rwsu71PZePilQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C81CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176271479357.28680.713882720618578407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cf9606de23ca513744a361cb1a1f7553faa4f53fef630e4c24d7d1826948c59
Date: Sun, 09 Nov 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762714793
