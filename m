Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD69C343D80
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773776093; cv=none; b=HQo5Mm0ySsWX2XMjNmnAgCvNq33eKWRE8G3G298BsjHD6Mz9DGFY7wNACWwEc7tEPxwbnTvFH0BtYM3qHAx5fP6CoCcmsnb2hzvnu/6SCIOmY/ZChsxorVeAXgs9Nf8jDYGJvJWQAIEKlrkHHzlO3I2ENmSoQEiYCN8TzU3V7go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773776093; c=relaxed/simple;
	bh=4kX60m9vdUm4L/9olBdHF8X0iLuApbHeFNpvlCwWBs4=;
	h=To:Subject:From:Message-Id:Date; b=DwhI/6VNq7hS44mATtgrdDg0WT9g45jX2X4gFIdQAzCfNVQ3JOpTo/o2ykKV4FMxltoCtwSvjYrLZE+zfHBZQ+9J6p6mcqVZkHvZEErpX5jx6BWm3zJwKCxpmqK60TTNCYdPiAko6C2GSVM0FLECCUzSxmamGGBulpVQ5/KAF68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZT656kNw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZT656kNw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E95BC2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773776093;
	bh=4kX60m9vdUm4L/9olBdHF8X0iLuApbHeFNpvlCwWBs4=;
	h=To:Subject:From:Date:From;
	b=ZT656kNwnFM4tP1sVsaT5tusmqlbfG9skLYwvxoPcj2RLhzN4VtjZRoPPnygD4pjG
	 vJV6XXcOfeyPxDxh2YegA2mmmaB/zQA3gNWDQkKDzRnlaMxsHLXmC3YMF3be5Qo+NQ
	 hoCoACQ04uBQyKupmX77QrtnVf0Mhk/Aewml7vtc1nDBx3NbCnPRXbN90ejCyyyaeO
	 83Qp4kKSxrRho9a+nqgtycPjtzfsrvphvFaMmb4wu/uKVvjUevTGp/wIXvrPt0qgNf
	 I6B9TbHkcrYFcWJATtPJM48lUq23+bKVQgjehkR1LfReuV/B05AzP0Q1W3dk6UM6OU
	 6VEdYJlJZG96w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E937FEDA18
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177377609357.29317.17451743947399301470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68a3d836cf581d9efaf9c8ee8c42f8f56f33fd9d987340e09fb1a25ed34eb08a
Date: Tue, 17 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773776093
