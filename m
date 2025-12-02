Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F28A22097
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 00:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764635574; cv=none; b=j2i2Qkgp99+iDJWTUpfH6++vB8Fv2rnsv2VjNcomEAsiUR2asyQ5GZs7/tXwwH3sGurSPgK9GTducT46bJkvjA7/vcEC25+z7O7Em2huGp9wJ9YZdc4gwWUf7Pe8pmWdBOQzt+BHgnYSelD2mFKuco+hRsGvaVYFxQTCbeCduE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764635574; c=relaxed/simple;
	bh=kGpcBuyrkO1PMLDCzJpBqY2j2TW465+C8EReSNU8ufA=;
	h=To:Subject:From:Message-Id:Date; b=J/nHe3Jy2n/Rl/kvm07bPcig1M/KVHkMfCeGzJNoOLRdS72d9dPHnQZkPAszetxT9zspSiKH2+k6tLRnU1geS9B7LGlc4aP9n1hdzTlWkjnuLhviK+o7GtqQg8nm6+mYhF+zbYk5eHGb7eh3HN+I2OATGtkKb1gRwY1yeKTzbGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNS+JMtb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNS+JMtb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A400FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 00:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764635573;
	bh=kGpcBuyrkO1PMLDCzJpBqY2j2TW465+C8EReSNU8ufA=;
	h=To:Subject:From:Date:From;
	b=mNS+JMtb4cj/DBSsKBDzTIoCMF43m/OUNbeUHq8vUCk5tev2Xqhbe2/2dF/L1F3Lp
	 WpP6b9kMzC+hFuhVSZR+W+RlquZorD/5Uhig7cijLBChVYGMGh8+8qe0+l4+4c5Hus
	 OPDyVOZ7x81tk3wzAy1ULw33jB0NYe1BfmpzZoF7uDfvZVMakM8DW/KGkqShhAY7Kh
	 Iro9A7wmUYwAuYhgvKFW24w7wURFamnVADsZ6vU/lx24yzoj+jUmDtGnAH5zwqGoyu
	 WXRwQVqWlR2fu//hour1V/U/V6RZOccuebNEg0VTVNRVZNjzFFUVTOZY365rP/UrQR
	 s3seXT66AW35A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90708D116F1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 00:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176463557358.23169.4117791157880362174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c674ec515a9371f552aa6751ac80fdb2f521772b0d15895b7cd2ed0e1700ee0e
Date: Tue, 02 Dec 2025 00:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764635573
