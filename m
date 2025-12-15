Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A55F29AB1D
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 10:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765795974; cv=none; b=MHLVOoXV8frwEeel5FlP+Zpwms+rR6/0qpIJssd5Y7iQty2NPKXfyOQ7vp8FNagTTZkjXiPKv/tpAZXS/UFuyIv0V2vTCAPRtqxlzvlF95Fs9YHLeZrGjDVWSmq/JkFsJUYmU1zBs/WiYJaxJEjnlfJTRDj6L7oviMM+hx8Pqm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765795974; c=relaxed/simple;
	bh=Byc7AIp2PZnLvTyXQQxCYdv4BBrdJzLiMsx422lB6vM=;
	h=To:Subject:From:Message-Id:Date; b=UpOoX5+hhpHIGWeR/fD1SQ2h6jBffZPYOTy1Cqva5gePPjQcv9D+zYkPw9w+ZK0zI8A36X/l5ZTmNc+dBL0Z2z/vlimoZQc1aFkYR0SUJmLzoENKo2AO1SYKJImYw6VJJd5zghM4bBqioSAIHCF08xcQbHtrE+FruzccEbTRdXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HvyUczgO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HvyUczgO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE0FC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 10:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765795973;
	bh=Byc7AIp2PZnLvTyXQQxCYdv4BBrdJzLiMsx422lB6vM=;
	h=To:Subject:From:Date:From;
	b=HvyUczgOAmmE9BKJgblPh1C3JEEf3hgfWnvtNonfJDCF2dp1il0bvd0fGMw0pvCUQ
	 DJ8GT1HENa/7G1iCDUZnsX29NMBvLhZM/0GUZkjBswOJduPP76RvDOCyuLetlBAi+k
	 Ogl04sUV9PT+5eM1/cfqdmA/qdoEbBDrgIpzRf2UQ1OZpvLonj5EFaE1YLoM8pGmJy
	 8DWBBEYbMlclT805YSRHkoH3U5tMW7HbZFQI0U3dr93PhigDDGiZd37rwC5PeysVGd
	 Bqt7V5/Wotm4SkkBzu4LKEYcUkFg9QWWRhH5Aod+VUZatwLmn/shWheDiLcqiSNi/g
	 r2x+/P3HBYqtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9085ED41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 10:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176579597358.18144.7495249845107594133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a58bbf094c9f1a77265455b09be33053251066094f224bfecb031fb8747030bc
Date: Mon, 15 Dec 2025 10:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765795973
