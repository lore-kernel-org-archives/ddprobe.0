Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559EF132105
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736955354; cv=none; b=PTqBI8iHW811yBhq+7qu6VranQtlCg31SnNKj7Cd2YtjNJyaWUJTlfi+jOA9RusfTvTv1U8j0QLcllAo45r38xdgILxYm8bl73d4FRFoqyzctFvnBc0zrtKkN2JqZ+WJgW8jSLWxANlKGPxlLdWmsxYqipjkkC0AdDEOGSlwtgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736955354; c=relaxed/simple;
	bh=LxaFudDArMtquPnOe/jhgUn0P+kKX6jQWpMBjdiGPSY=;
	h=To:Subject:From:Message-Id:Date; b=EM4CzHVSG7H8uWM+cDfhspBrnSWyUjxJzVNLeK/Pxf7G1fCgfF/8FN6tMbuiEuvF0Ithl4AAVgkfdSG3QR/GZwLa7xrqkYrPaG2r/uPAQWrz4WDQ3/wsITZDfKONGpsaRWc+UQ4Azzkr/05J556kL67BB9wgBjh6S+xDLwOyb3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i19vdp34; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i19vdp34"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3820C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736955353;
	bh=LxaFudDArMtquPnOe/jhgUn0P+kKX6jQWpMBjdiGPSY=;
	h=To:Subject:From:Date:From;
	b=i19vdp342fH+iaKJrktloKctKc6IDw6jyVLU1lUiyVMVPLMH6Mo1hXfoZn38hSt/2
	 l6stB1FVgPNtRfC6YSH3XpPQcTX18V+h5VwRU6pSbvMnA+IskXkr2NyKY/PFRrJI3r
	 yVTOm1m3reQAaxapogEQlprnUSP0O44ZUnaiabMbM0fcBPGEsxYxft1iQglQTwpYgF
	 nSgne5wdHult6VfXbCo9ZntbcCSQe7ui6iQ4EXUmKU3T09HFpNSKW6uRJFYlZAmUws
	 8nVdFcuCe4CpXfxZQcwcACA0BLyfjYUhp5Jzd+rutQyFSG5UguHMewdfl0Cn2FWT/9
	 y0pIUIHihY0+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFC7C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173695535362.4807.5557741631730926773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68018e687321c487a8f2989953bffa7f516fa0a1054357ec1138a69e5940f182
Date: Wed, 15 Jan 2025 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736955353
