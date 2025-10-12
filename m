Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DAF34BA5A
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760231994; cv=none; b=P4WmcqFsuj6rPpp7kSHw2nO5EHhYCrQUejwqGZCrlB6S4MoyYMiTClY54hsgt+Q2IhQtgltaMTBOt2J+V3AoLNTl19GP/Q6lTIGrl0nO3SwjMm7D8vottMcwmiJCLFXkicUniEpoPMQs5F/8s/TRnmEtk5AGXbX9i41l4erbLXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760231994; c=relaxed/simple;
	bh=FZwfrzMoeT9hZ9PYrerBudhRM2kf0HfNW7bqoSjUApg=;
	h=To:Subject:From:Message-Id:Date; b=bdSmWRSC3quSeBFKE6EaPHs7a3QSd/IZLfkkqML/+i5jKdXpxenYviy5/bjDRkKomeuuWL29fAU2iR/AAZtprwowkUzoRU4eAd8KyZaH89um2LbCfoCtHWjtZbw/+oMcROsfnMpl+4Rq3uZfksOUG/LX8P715XKRxo+dHGuUQEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mdd6kM9i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mdd6kM9i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5231C4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760231993;
	bh=FZwfrzMoeT9hZ9PYrerBudhRM2kf0HfNW7bqoSjUApg=;
	h=To:Subject:From:Date:From;
	b=Mdd6kM9i0btkw8Eplgufmu9RBPHmECNl3FpQvrLI04+EiXvOVQ4GI0BwNOy7qd9f1
	 2QGmz0RamShiIx2vNlayUMMDpqSoxjqjkubtDHoKxrPblBA0Va3BJpQZvudvWAxX7r
	 XRK9dJ+SMcS7IHDLBAogdy0sVFJf4go/PsQwRiZn53ws3B93rx7V3SKOb9qJ0cQzQZ
	 ywQzmEMzjyLbvr7rPZ5NHFtjVHttGm2pGhMRJLji+RFp1q3QRLnnZE7o9RMRH6gOpd
	 OdzSBMtgCgnzEVWiYafGjK0H9eQq50YHGnyIbM6BFCTzsyAgP6n6UjP6MKOGE2CwQX
	 z1lcw8LsusihQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94830CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176023199357.1270.6327242062409368070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 076cddab952d75be67c2e21b06d396f72cc6d71fee628abd5f90bee2f35cb804
Date: Sun, 12 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760231993
