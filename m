Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA1C42AB5
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 03:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717557383; cv=none; b=oyHzURuXaLssd5xajnnV1WVQ8i7jIw/g2sGgwXtY5FrF7piZ9dj/IHVNqrzoZdmUw+DnYxDCbhSQyAJ5rVukvgXuEelVLzd5WF3hgD0aKkxa0Wr91AtymIIK5LVF6Ey/SNIVm2eZewPp7enndVD86lgmEamn/OEBHG6E71UHSXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717557383; c=relaxed/simple;
	bh=KeE/YOrYaCo56iefbKmYq7yMADpwSkb4WKS3Wa607eo=;
	h=To:Subject:From:Message-Id:Date; b=igy18m7L33JgA0aAC9Vg25Ac/iwKEbuRAFEg+vsYfsUMuzdFe98bPLv2S38ddLO9HXyX2/n03R+Oa1f2GIbjMtnQd9Y9QO8FuMhMsbNLkzsKpCBSFx7Q0LAEyhx6XNiHswLlpwLutOU1YypjDtliu+pGb7+euGuKkqLnyzqVBxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBRtmncD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBRtmncD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB0CDC32782
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 03:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717557382;
	bh=KeE/YOrYaCo56iefbKmYq7yMADpwSkb4WKS3Wa607eo=;
	h=To:Subject:From:Date:From;
	b=sBRtmncDjt5dGUHqzhuHWOiY+P+nd9GKX1Dd9l7Kjm1B784+nFd75arozDP/SR+Nl
	 CbpQU92nGq/IE1EquRNnCAZsmNwVyuHQ63zCL8e2Ea29Mtv+YmFsPAJqj2t0+CD8lt
	 SABvvjTowXODKjJ+gTxZmMBdH2e9BdMYHnaySTdf8fSxJyV0E2k9OPT8qk+28kA+7b
	 2CToU1MSOt8GILiMml7Sy9i9Q0m/K1L4ClLX8WQkOcbWoKGi6qj98SpPlceGonxTBc
	 2OmhQ58JzSjyug8MlnIS5CkMG0Dj3pLB0lJrcfMcKPy6IOezNkqYHS0D46fK3PuxhB
	 tbXGNonMpea8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBB05C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 03:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171755738280.2844.1738220870767359785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e88ca1fe41a51bdabc3c67e0e372b55c0d07ad2bbc3c8fce210b7c485f296e9
Date: Wed, 05 Jun 2024 03:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717557382
