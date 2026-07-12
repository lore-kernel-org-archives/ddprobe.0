Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3209137268F
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 09:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783849114; cv=none; b=h9Q+QV5u5nxIQ3wIaVbE7vkKXMSP76FHag/osME6xSLTSWKE1AQcmZcI+wyMTLjhk3hLzbeFLApDu8gIkYIs8IcqrrOQiyRiRONeMaTrpHAOaUCR8gXcuzv4IyaEcKG6G+z/Ud3qJS3/gfdw5aGMWA+XBwLVPvtgqGsQuTUEGlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783849114; c=relaxed/simple;
	bh=Hs4cL2Vcdjwl/2fsYCF8iaaw3SrAouAKAcHhiYdYMF8=;
	h=To:Subject:From:Message-Id:Date; b=Wk3btB7/iEKsxTvw8U16peaaV02az6icPb+XrQJzGo/rtZk7AcF5uLDczYyXCd1+8LFUQT1PkjY9wIINU7PQaq1nIoNg6w0FSpD2Z/yXOlD2z+4QsycgP8Fh4ZMrI38/J8nIe0db0UJVEP6CTJ4eICyGezM/Np0Y6AA9va2mpW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AsvXBxO8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AsvXBxO8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA287C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 09:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783849113;
	bh=Hs4cL2Vcdjwl/2fsYCF8iaaw3SrAouAKAcHhiYdYMF8=;
	h=To:Subject:From:Date:From;
	b=AsvXBxO802ITv0QBOfIQBIeCv55dFSGMoJ1gptQhC3HDBpnt0b7eoDAlIzZD/rFiP
	 ZF9kqGwMKJJqSh4b+O8mfdM/mr1t10QpTwh3W5t9IHSaOwPybjjMexPiv0fg+GAAt2
	 OIZ2hXKrkDdbkRDTkbKsbcrX+tvpAtmW0rVq2WL47gyvNAndMtp1yoIEg3uVyRNgMb
	 L6uoSqoRj464xLRxWe7tWvRcEk5bK24NrmMjsOo3k8sOxn92wO5iTgjR8K2JBact6v
	 3NO4a7PFXDfhQTA66/V9H9qFAG/PTNs9vMIeBicsCsaU5klLPZtK1B7cN6B1YLrS6Y
	 EeJIWOPOQ1Cig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FA3C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 09:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178384911368.16539.163453302719580047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d999c28b600e788ce2733828ae7b20e6d3f167ce050af1a5ff0b18d57cec4b
Date: Sun, 12 Jul 2026 09:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783849113
