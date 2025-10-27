Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF7B2F12B6
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761554994; cv=none; b=ICzdF2q3ii/ZCBy/NoNsztqCmnd6L0Kaqic7W5zuCKQJ3XiG/qbl0bzERCluFAxsfip6ed899dE1CaaH3aMzqwsyn65uDvrZkYdoFQ4FTBf26zsxFNrCHQEOXj8acFXYzECFpmloi5BBPXzWLJ6S5Dc0kjxHixVr3SOO6l2zOaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761554994; c=relaxed/simple;
	bh=XAjaAgkOeBuSvsBikV/5fLoO9dkD0T5CuB7kWmCQ6GE=;
	h=To:Subject:From:Message-Id:Date; b=EIAra4MfkdBxV8Wi/OsMngdW6NAKLL6irIXt1EnuY5WQrP1F71G2ZzChCSuAu6m8qAx6+SiE6wYASIQmmlHCGYok5FXyO3tr5uj9t6blJG5j7ZgaEJcgGWrlxGIF50mpVDQ/Ye5bJ1zSkjlLmSMEAVRvlVVC0vmv3mhNcxcWIV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAmLdBkR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAmLdBkR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3294C4CEFD
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761554993;
	bh=XAjaAgkOeBuSvsBikV/5fLoO9dkD0T5CuB7kWmCQ6GE=;
	h=To:Subject:From:Date:From;
	b=OAmLdBkRzj53NEW+P+r/KXHyORZCzCZil8v3PcPoD97K/aGUqIlr6Lh01HLTLpQe8
	 +wFNHsri5+3aP2szFgQRm16dNzQi3rdLQyHcmT6jWKktlWB7DYZJ7Dh2uCY40Qxdf7
	 K1f5fe1Gb/XFTC6oPWlBadExGoZXOSK74qK0GtYYpTtaP4TuOkCqZn4TXOz+ntTaTA
	 nZhaIyzQUn/At+BWvh79YA1cVcKSA24FpytG743LWLMKjnuaXry+wrPOg941UczCmG
	 Ju4mJlCPga/hpg7D7QZAz03rmEhGx8r6gfTkw91YmBVy54mcG8y0tN1XeIFDn7szQ4
	 IBjk/hkzPLMKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90917CCF9EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176155499358.28622.7632468965158953185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af2e51e257833769bc48498a57649f43abab7f1bc10e9b2a801aa519bffa15e5
Date: Mon, 27 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761554993
