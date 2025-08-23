Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE64E552
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755970795; cv=none; b=jjtNLju4zVu5dHMuFHybtxd515k0t/y26UIJBIGPc3a4iMXt5DsYA1HF4Z1XzRSPAVaXK5CagRRqMlbj+8bIlgLFrKHDe708scfaNe1rImKNV1sVOHp2O0B3C4kNdA0K6LLDpVXwDT+tv8jLEx4cnp97d11b7sNnMVJ3TURhB6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755970795; c=relaxed/simple;
	bh=1fYrn6mPRowpYyMk2Hf7sGtKtmohFDy/KfQSkvw7NEU=;
	h=To:Subject:From:Message-Id:Date; b=N0Eo+ONFGIvf9CBpnPVNWAp5DZoKIGCXFk3cCGTsPsqzDmCp6FWBn9kEwET2JXZEvEId+D0msf7AHroh6iT9m14pWhO34RcM0L5bicbqW5NBwV4TjFw/X/+DA9+4vmKbuDBzZuGm3KCYySD/NXRPY1JnfuuhH39IE5JvdbI11y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GdRPXasY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GdRPXasY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE51C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755970793;
	bh=1fYrn6mPRowpYyMk2Hf7sGtKtmohFDy/KfQSkvw7NEU=;
	h=To:Subject:From:Date:From;
	b=GdRPXasYEZ5YZl54wYUJTICewWfBV2qsSNWUCT41GHlOWMmhvjRVQOflSXJLoAd5j
	 EYom3fRZZT0sjKgPIr3cmjZx7RQHfHFxR+ng6DIzm2JGTTQIzOlHU2D0OWFNOhwIBN
	 Ayx3H//5Qd9zQotZkH92DObqJELhqscCtQW1GB5VKbQxn6y/al/W+zonBJ8vH/RtS9
	 oChL3PrLNDrv1TUUUVRlcDAUV3NZUKcU3zicGr4J/U6Pyf/myijFCswOsntrEMkGXS
	 HEXjJ2IAFXkbxDKCJ5FFRt5bkbX62MTJjD+eBx2q2/fPHcB7JPY+fSetha7B8iXY/0
	 i+mZd4oE2vbvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1BDCA0FE1
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175597079360.21975.3379121176418522574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5401dfff36b8460d36068a0b42f667eec9a5eebd2365e69563b99991d11867d3
Date: Sat, 23 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755970793
