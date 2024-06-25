Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4AD1448DA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 05:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719293003; cv=none; b=Wc9KRuKUsHqecbL0s0Ahf8F0R6B9766IkyhEDWuzmhTdq95qD03ETFwVoooPXO6OfpPJtcJzMngs90LLFljAPTGq+710wkFss2S/AHMtIW4N7jGraWY9IWu47ACmuYRR/UP05PO8Iip86BKhuy5dgY6R7p3hjg2yBAhrBDRqUcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719293003; c=relaxed/simple;
	bh=NvdyfKiPWtr5aV2E7EKOsuvk1g+EHkarWWkhdsFzBjc=;
	h=To:Subject:From:Message-Id:Date; b=sL4lVxCCbw9Wl1++IRPtwk1ch64bHqSjDITzw1woDfPDzXdUv85vrOOzidQjC/y1mOPqq7uGCSGOAW3/GFpdOWdOzmOCDRQG+Qhc/jnkhK0Fg4E5uC2MvXlCXO75nC3oeePZR7RzRvVZrm50hxNY5uOELodm6YwwuRGMAqLazuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ul2R3w/u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ul2R3w/u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F1FC32782
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 05:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719293002;
	bh=NvdyfKiPWtr5aV2E7EKOsuvk1g+EHkarWWkhdsFzBjc=;
	h=To:Subject:From:Date:From;
	b=Ul2R3w/uz1RIL10Qe40YL5uP2ziM2eyO/07rtsF6OGNmH+0KDPtONOAzGvydotpAD
	 pNPtky+IAoZepAeMvELQK4MDWG4k6hup7F+89jFDXMt+VJdQ6fTTIlUuNGpPDwfFlC
	 /zrWStLmNdGtFViZ3v8G0RabKIaeifsyT721MGjKhUjDTO2gSqptXIhGaXLG7uiQs4
	 et00Q05jK523NDcaDPQeDSRovP2EgH8ph/zXbcMje1Hyw+xEsI+4eIzp0ty/inTNhu
	 Kx57A79ronSn6aitmoPd9BkjVWj9suDgVv8Bqfum+KklSpKXWjLOdi6IF0n1npkax0
	 GWQy37zqy1u5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE8DC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 05:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171929300276.14295.17521873529919788648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d4076af1a5ec213fde847220d4a78884b7649efcadacca3958010d22ea12995
Date: Tue, 25 Jun 2024 05:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719293002
