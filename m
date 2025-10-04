Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9D3156C6A
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759572595; cv=none; b=uZOaMpvyktDE82XDK/HYjBqctWGVX7WpVHEQKnI03DfemO7TeFg7oZFuzUGuVyY6ebRZ+5VUSA0d7hUpLwXbpSqGHMcFkmqaYsgPpkiDCiMtLW60v4POBI8BHQegFFKGiqsfj9AW4y3mPlYRBWKIGq8O1GexQ+xFj80ZP3Uh1Z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759572595; c=relaxed/simple;
	bh=L/3q5rRtgCPDzhtYpAKkf806bkwSlSDGfkOvzNNriB4=;
	h=To:Subject:From:Message-Id:Date; b=qthWNzlJYmC0b8epGvznHpu0lBhLPVFVaXF1u78Oy8eFW36H2WenBgjMd3xMvlAdvkbtw3JWjL93UR6xU0n+7kf6Y1mu7W6NQbSu1xyCMTlHlFheOLT/EkiUteDMPAf4UsXc/0hm6Rj6rVqoAezUsrHdp1L0770F8sYYk59I8Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ck5uldd3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ck5uldd3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD94C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759572593;
	bh=L/3q5rRtgCPDzhtYpAKkf806bkwSlSDGfkOvzNNriB4=;
	h=To:Subject:From:Date:From;
	b=Ck5uldd3DrBtOpC0lYa2sGevwrbcY6JRpVWjzfRByy5idqAJuFXfYp+RQp368AHnU
	 UK9OkJ4Rq2LvVRxnrX2ORH9bdwGAkvv0I1jkSqpZSDjlVpANubXLCPGE28k9z2FmHR
	 nRR48X5iLXJ9plk1mAjFdhjSeechMSYKyUEex889k/ERL4HIUXXAAChSlmC44PAUsD
	 521zqANuXZ/tT4Bk1H4ioortSNn30DxInKKamRZuq2ECs/7BUab0i2nh8BjBI+Ike3
	 017Wj2snaar93JG/DCqcqARhno37a2vo6E9Jr6AyveN2qO4R52i89/MwUV7kwH5ov0
	 KMxSbMyYs8VYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F00BCAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175957259357.25247.13047664840208096702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceb1a378f573115a56c4ec1a0090064a21a45aff06ed2bf76d43a574f3697938
Date: Sat, 04 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759572593
