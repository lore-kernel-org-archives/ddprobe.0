Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311FD25A326
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760807394; cv=none; b=rAALfHp8t8h6p2wd36UofjfbQAe2WFqg1ic83IhlhiAehCgm6tTPHiuY7ja0ksiB2G1WHbvB1ZjLfeNzTGtZytHZV/AAc8Z2BYiQ42POeXZzFSC+da6yvmkgYn6PVNGsqWzU9Z/k2UC3sIbHhxAEiXYb89kx2UcHFxJ1VWHcpKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760807394; c=relaxed/simple;
	bh=nNADXj+FComtSty5AAu47RryagoGSbS9yG2YlD/tM5w=;
	h=To:Subject:From:Message-Id:Date; b=CAH9+gclYK0+S8mfsoT9hjSaXck9Qyckn4wOoMb+BV4jY0NS8i6n0/B7x/NAD+jMZo4E3fzVR07EkYVBt+FkuEo+t6Vjc0eu1lzIBxPKLRoi5lc1A7G0AdQva6SFM3cL+LMtNXflWS7hrF4HMuOFY3c1OoHSp7t2BFeEDKACvOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZaYogly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZaYogly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66CAC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760807393;
	bh=nNADXj+FComtSty5AAu47RryagoGSbS9yG2YlD/tM5w=;
	h=To:Subject:From:Date:From;
	b=mZaYoglydpX9Gm9bA5RP/dgj0qSfrkH/GVyIRiyxw/k8oQjIVcSFg/HBa+u+X4EOw
	 Slc9+w4FgjfHSLimaIHHrkhm98givxrcFQRToVhH2brl81e4spVPGhDg88z0+cLK04
	 Krx9haASqPBAR9SuLkDmMPgVEj4RHXcMj0550XY3r2J5WRUCk25gPOBD97Lo1z9gzh
	 ZP/W3uXMYDUDoUQIeS8ZdcystWZT0Tgbd+CQL8tWQw+2Zp9K4jBQyoQKRfmqWCgnnr
	 kI/7u1cWjDCM6LpKHN7TEubV7PdkA24dYwaxHi5VxSBaGdKKe7bT/1hXBm2mBo0XRr
	 ik15DszE22zkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92814CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176080739357.12961.14766908176180953505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4931e1a2e5e07ce0b402a7589ff4e8c923d225fc813226f27602b252211176fe
Date: Sat, 18 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760807393
