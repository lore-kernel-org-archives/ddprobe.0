Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D38053B5FA
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791922834; cv=none; b=pVrEftgFFKkgbk9+dxLc0TUhC/B40lcj46zLpGy2HQF9qFpqt7IvAqmByLCBvpp08iZK7qWwBH+fOb0Iyb1H07n04+c4w3fPz1ixHKbQpI9aRZoEHOjBd3juFqPRW8MbxPCgVIOpJPQmGfUillPwoFUs2/1V9QKVspnfEkfoYSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791922834; c=relaxed/simple;
	bh=d+2NWoqcKF+5KWopbRgPakPhWtGCxNv2T4UZ3+E3C2g=;
	h=To:Subject:From:Message-Id:Date; b=gC7Z5PMePWuCwuE9d4IBa9TtuYdpxYBL5B5XVGXHuQEuyBHd7W2ToXZDd+m6/MpsMYsQGU2fY2ASZMMSu5DpyLnkwU06zmyJfzUtaWr2PkczwgMq8qCo/nEGgl0k+cq7XAyqmB+hBOxDC7SXTaL42x3Dv1DNa0wq1KQGCTrreHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idbTSd7q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idbTSd7q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7588C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791922833;
	bh=d+2NWoqcKF+5KWopbRgPakPhWtGCxNv2T4UZ3+E3C2g=;
	h=To:Subject:From:Date:From;
	b=idbTSd7qs381YbhJap5ndez5cvIyp2FoFGxGuHbMFjl2AJjsOYn8iXyY1sHEYitu6
	 KlfjV0bxj4U65xpYNOxf5O8Au1l3w8MPZlx4BVRs4Ng9IK6te33/PqTrfD6qilYqz9
	 u2RSxYVC4GeJsc5Hhn55s7I19JN1TYaeQVksmJAWn/9Sz0Ekmnf6bctOB2I4SMNgUw
	 CdNnTOjLILPTjyWh4Bj6Q5jHYb3Btg9JXNlSQY/d+uQmfv1qfRWLmkRZ19gnZsEtEb
	 mYeuatMCS93LlcDN0rnZAUE2X4tOH8ANfNlTo1S8j5I9ndkaiUmBe/GmBsEU6JutxH
	 oMPOfiJHdjDXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1C3CC6B19
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179192283369.15532.7149266131417218936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c3cad111920e943bbc7240db7bd7e12a1b923654259841872040977aa9ca644
Date: Tue, 13 Oct 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791922833
