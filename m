Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2561CC8A7
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 22:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736030755; cv=none; b=aQUz23AwiQl2e/4ceAKebNpfNACdwQ2Fzio8SMIPHOjo02oz2e5IcVoDqG1Wl0XkdJJ5pUJcJv4YQEhev4hHnDciADWQHpBSV45co72Y4YcOlRPrpjH2eNURh5M8fYVGelXf8jaGjtd50zdxN8FQjJeEqcFIm2+XOQQ3i7h0mBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736030755; c=relaxed/simple;
	bh=/CwGFQLGmFsp7M1Sa8EHU1750qLLFGk931B6PJNkc90=;
	h=To:Subject:From:Message-Id:Date; b=D7yl1xxSzO2/3tid1azLK4BXp5TUQfF5wwoHDtfVGIYIGOm/jE/+Z6FUX8WH9/r22Ttz/321ZWxt+i2gC/F3nKoNeDOdwNkgynL3N4nPZdMfAum/m0WeWf2w7As8fkjWQkht4seDabiVsU+PnhThRTiMouZDdne1y3pdIrToOY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANc1PUAA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANc1PUAA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16D7C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736030753;
	bh=/CwGFQLGmFsp7M1Sa8EHU1750qLLFGk931B6PJNkc90=;
	h=To:Subject:From:Date:From;
	b=ANc1PUAAvijH1UTebVni3N7qM2H7X0siTsajtJ6F4YfzkbMNB1pa4X1tZIqW+/DMg
	 MDUVVRgCbsOkt+NrMHmUYxvrwvuuSvOLQdYCU3iWZb7P2+GSnJT/5enkjaAu7HXzbw
	 wkTy00Q3TKKcSI02G2tU3CenTc1z1/VoRDfEP0wt25NLRO8kxsBFH+dDNFxHX2u09+
	 aXQbpSEtT153q5vu3+aEOTFmNbqsjkE+N8QhciDCyn/LjSqZHGBlP6Q/kQ3s4R4BoK
	 1N0YRAEoMW1WLicpYYhn5Kh9IGqH/PLyKnppfWxnSaaNvznz6FHrAX/xzN0738zWRm
	 4e5WjWolSErZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB36E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173603075364.5833.5487675071473033113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca6971e365fd64912173972f0c108ac1759b4974821c426e64ea733bc3b1b4f5
Date: Sat, 04 Jan 2025 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736030753
