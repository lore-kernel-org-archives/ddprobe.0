Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170B538FB9
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756946994; cv=none; b=t+hIoefvVmOnNW0M/O7s2VRCREeJgOqX68a3rAHrJEcDD8NZCGZXprYbSoIKU35+ll4TyzF76eai6O2ItUsDzK1ptA+trkRe4kfTUl/t93RXfeSAVO3tbgb417YrYqjK/9tS/R2O42Etn8fq1HXw8GQ4q+HskznMdQFVULR7h5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756946994; c=relaxed/simple;
	bh=iweAXOaHPFIPFDKTOzftkHCF2CTdAoP7Oor9ZlDlRFU=;
	h=To:Subject:From:Message-Id:Date; b=Mlx/hMCa9oRTCcN2b47MtjRFBKyAonkiUnGJQAkIsjsehODy72tjf/EK5rebW8y39IGqahPTIUB5zIxBeQ5jqA3vl2gJN3IjjYN//JMRjWmz8FMj0gaLbqnb7zXwFEskNhApEGGkRjPMDfLODMszBPtlMYQZphkFOOc3Cx8WOik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWQYA1cD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWQYA1cD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D97C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756946993;
	bh=iweAXOaHPFIPFDKTOzftkHCF2CTdAoP7Oor9ZlDlRFU=;
	h=To:Subject:From:Date:From;
	b=DWQYA1cDyHvANMVAg4q1M56kczHLWA+sJGPqDOVBOIWtE//sNC0Ab2uhxFYxh7PYL
	 sDJge6KSAv/m2C3iPpEQLLO9dtrRNxa3YyuLkBMCTy0/VPJ/UDzvP4fD4k6+hWbqUp
	 yamEc26N6UyC6LRVYuvSw3KSdzWC9+qPLQ4zCWn2i1QoZ553v5cRQoKtQaT9I1vAJj
	 q+Wolm0/ZMX9SBurTCdhZPIV7LXJk3fL8S+AyDs3BrQzmgeOIzKb37eRhfz2xKFdc+
	 exMBGkr1uc51/5QCOlVrxqIFkGr0XPg1VzVOv19DxPPcvU1soFuEDp82xTKxzD8jiT
	 AklUHSlWxnmUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F874CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175694699357.26613.14005303147103752732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18ac176336d1b8050e651f0ffb456b75328a1247d852be8d104eb9b9aab34a2
Date: Thu, 04 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756946993
