Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360732EB11
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755190794; cv=none; b=rgaIk+XWtY5hKqX0dY8OhmNdUFZzIKpQ+afT5rrTsHZ/iVd2JmLm2+vqbjRPdH3nfwPtIKtw515Oelk4StWSc4USF3BcQQLCSMwxow+iDW2opyyJR6txwpwNm0Y0DkCMdJ6t7FieNiuy1QJrURnGUKErdBdGBTXbIP/E7CAvaFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755190794; c=relaxed/simple;
	bh=1IAOl+PuUTvVPdiIaFG2cn4y71vqvE6OTsoplHegkYk=;
	h=To:Subject:From:Message-Id:Date; b=i4SYcCo062RNg2f7VNDlUAPPnUY0zpBKKEEFourXfXKdfq8FYjH7ZI3D0J2Zqg39TwEKOEOURNJPwdUiEnibObi0rgwX3GuO542ieTeY86138nwz/XEflzV8SRyLsow0JWbo4L8m1evdxfgOBwVs51Kt1l5MeCo5z5sgE/I+4vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CyrdtiFx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CyrdtiFx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3BFC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755190793;
	bh=1IAOl+PuUTvVPdiIaFG2cn4y71vqvE6OTsoplHegkYk=;
	h=To:Subject:From:Date:From;
	b=CyrdtiFxIVspPlJs6cpERe1QO3FED2Y7LBBendC8zl80grcDbYhNL2uPLF7JC1EvR
	 XcZuqaGWF84f0z0QrezX7SXyUV02WZkpeKWIareLT59T4oixSFIc9t9pcBpA2B0Qo4
	 Zl+Tm+2xgubC3n4vKLodhDPIAG/naOLQiPV+uK1SI6+TIIpBqOnHrRPGgiSt3ynbvc
	 MFm3ZyWSwBBDvhznrlsDKjvpSxpPsepMUroxkBxtbDid6EqQzWmwJl2KqCKiVAMHCu
	 PRrvAxUpf4wIJ2HGcAq9Bp9g6LCHdklr4sGxhvZFX91lZDqYRX+R54pG0TY/QkMyIc
	 +nPwHuu/Zpb9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7E7CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175519079357.6952.17734037463347009252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4337cedfb7e664f99c925cdf0c3c9580966869e79853a994c4af18f6a2d1869
Date: Thu, 14 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755190793
