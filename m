Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A23223C4FD
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768743834; cv=none; b=P+yVi/MHwnZmOcWHzFfipKn/JH9aMkcCPdjItglxhdtYpxLTVarpoHPwDfycipvMv52/WFALyKtmmaP/hhtC6gFM5+hQuHCBPHs7HErZpATj7FAglbzopIp+J1iYlFBoIsQvC57osm/1QwGYjT9fS12zGEG3ppEr/1oHyT330dM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768743834; c=relaxed/simple;
	bh=U71sZE4xQhexlvMWKbsQgQf4DGlfO0NaTcJb/jNVss8=;
	h=To:Subject:From:Message-Id:Date; b=ugI5igzW9l6G83HJ1y5L3qLd1Tde5OzUJKZbD3VuFhaTlyHCG3SVK2WHU06qptgMlnvbo26f7L0w4puYDKG1pZhm5npdSMInG7sqE+DP62IvAMiMF6oAm7BH/fKukOfBL2Kw1zH8atkhtkokD3YcZyozbB6ECDClVSYyGcFq3Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxAKcMsO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxAKcMsO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7047C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768743833;
	bh=U71sZE4xQhexlvMWKbsQgQf4DGlfO0NaTcJb/jNVss8=;
	h=To:Subject:From:Date:From;
	b=sxAKcMsOnOBrEAogmfwUBxG1Xo5ILoPODCOM/aDXeDXf/ndPQ/0SriRwLt/RZlFn4
	 JDwC5NbGhMWmAJwNI/eK359YgrEDU15G+sTHcBOnsyWY5RHxCb4++h+Osta/ASrRFl
	 hSK/gciyY+ElWW+SpHFMsi9EjUAwCi26P9oj2AF7Wmo/RCQzvlvrpAK2BsF5Nq5vOu
	 G5zl1Ct3SG6w347M00wJSsQgyOjKMn114TEjLP1PvSLoepCpCGHA9kqmWEzsjSKaVy
	 fu6hZR3h/6U5pSIsOP6nlGu3546G/idKtyd8urZtxlwDt7CA7jPK1k+sTxe6nJyzjW
	 vDDok5pq5yIPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F5AD4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176874383358.27755.2835035399571772684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 618809585a520633a1c71daa3b9b487520c55d5cfa2b91ec5b173a1087dccecc
Date: Sun, 18 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768743833
