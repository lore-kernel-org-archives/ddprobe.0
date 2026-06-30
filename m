Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D93B477999
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 16:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782836314; cv=none; b=LrcHMng55Hv2afMJrLu9F7qRBmp+mjxeITNM01Y2qwGE/f/DPV26orwMl5hbdnu6FdeGbWTJaVTOO4YDbsRVekLJJkUbKpaWxDXnYWqq5ppdRSntyMf2u/aaSiBkqbxuHQPiFgFTcybb4F7aXMwi9dkPC59tzKOXxt0HsIBav78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782836314; c=relaxed/simple;
	bh=rdBDYuoZGRlsGDRuQXqZ3uOfOtERYZXeiikadRfb8O0=;
	h=To:Subject:From:Message-Id:Date; b=hoiwhfiMDcDxy982WKDbs4KpoaS2ocpWX2x+DOd7OwpML5VTDgn0E6NS1IJ14ESIr9ZIt+2dqzguMDpgnAjhBCKTv/Zddf7uGMClwFmIhG3Ku2j1Nt/sumXekE2/hFj0J1EcrhXh5xVG5MexuIH1JE2h2zadZeKbyWNt+h+ginM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWDdj+CR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWDdj+CR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C1BC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 16:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782836313;
	bh=rdBDYuoZGRlsGDRuQXqZ3uOfOtERYZXeiikadRfb8O0=;
	h=To:Subject:From:Date:From;
	b=cWDdj+CRh4qoIdemvJzh01WsJntx9vbarU/IMOq5jNrlcEBmWf8QUeVrwUj1bzbwJ
	 vp/BwzkHSLbFEIAlGtc8jOldl4LJy7lyoB730Zaa800You0e79uNqs8cWsc5IBZ04P
	 oHGmEV5vbRmhUwQ7cAsusi+DhyMvjNapSzhLGFX53HQP4ZeeqWzM/h2059IuLnz07p
	 GhKBMcqoJCtUIefK660DCHInupAAjj0A2g82qaKSVXsHHAGmURgba4tiQUmmg2QSuX
	 N3XZ5xWdDsHnLAIz3QjI6MYwyuRd1XiP49+F08IYvhP4+ahbhqn/UaXhifjE70geA6
	 myuQqK4pIXBlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2FDC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 16:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178283631368.17059.5659320549416593988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e47b6f85d8758c672664aac249eba5fab2495f2ee4cf5445465b8887ac9a512
Date: Tue, 30 Jun 2026 16:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782836313
