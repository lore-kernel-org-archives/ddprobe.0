Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E84236F902
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 08:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779525754; cv=none; b=uZP4SuTBRLYyfGntoJ/CdFAtFAkFCOwAUa6GuRSyNe/Og68MISGSs+gmJRoCmUnXGc8s5ycNBV/EWepUMb5cnIfuPOF2OKoYs7ILpGEm7/lI49nO2oAaEfj7irVylttBlmjR+wDCBXUcDpPfByrpQrenL2f7QY/6HP64usBz7co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779525754; c=relaxed/simple;
	bh=SHvH7lEFATO0gXnn8Z1kjap5ARmLwZdfMEFxUFuZnGY=;
	h=To:Subject:From:Message-Id:Date; b=TyCwUkqdhelk+/iPQE1rth2Bl3tt+tBi3J1HNha+rYH+JDIDSFIZPcaAQeqGw1UK5NXngqIfr7yf3ECGUIfl18+yA84cXxMF9A+FWx1Pe5ukOM+9IRDfF9ljcZCwZBh/w4BVbSq9hmb1Tp86Wz6gZtalT9j6bKxz5FWL4KlrGqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7VvCqGe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7VvCqGe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C688AC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 08:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779525753;
	bh=SHvH7lEFATO0gXnn8Z1kjap5ARmLwZdfMEFxUFuZnGY=;
	h=To:Subject:From:Date:From;
	b=r7VvCqGen6bg1lPc5tG5qKN/KRs9gKnocJTKDDgZgxlhKbMi88PNl4V8jc9nyqC6v
	 piKKBSL9w8E1JESxm16FYv2DrrDaDXCC5+h7YTIPuJSX59jDbNuukyt0EOuvBHIFVT
	 kjYYMKS8jh00RDEC6wvFD8h4jq4fOoMNsQxrT+RVCc34rBvC3C6Yjtl9o0keODumwu
	 4soN0Cnxn6Gc3IXboO5sT1ERSivwq118QjYokpnnLJ8ENlvFuy2swdR0wksDDb9gmD
	 AcPrDy9U82W/G8k+3o2BLhS5+Dbo8PO/IwH9LW6okXu0F1iintjNTixFc1FTypsDHj
	 fQQ1y4fiofyVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA58DCD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 08:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177952575369.14454.16909877399707801662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 495d1e7188b42aef0cd6a36d97564f0d69154525a1bd49cfeebb023a3ff294ef
Date: Sat, 23 May 2026 08:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779525753
