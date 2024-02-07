Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED161CD13
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707282497; cv=none; b=nI2C1QyVFQJQ5z7OcfLoOuVFPTrYUBQ0xP9bL/fiPd9hNmfVEV8ITsaw/Ub1INR95VvZaR7+bnAC+ePh8dGZywDXBgiDubRE8VJK/lAIOQeUPoUtYGoDsAq2r5B8GVCPHdaPvSymi/LOKhmBkFebcXj0lmPE0A46HgaFdhoWLAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707282497; c=relaxed/simple;
	bh=3QVPpMgRnYyTjQy5Ne8fIKoraGIidC0UZYr5PMy1wNo=;
	h=To:Subject:From:Message-Id:Date; b=m6tQrfwJhgkZARDUNbzIzcwlZwThC7CZwUc1nlVpVOAS/3uUwdnZvsVAHBr0gm/Tuokfgjjwh52irU04w9azF13sLyMUomtdSHoRIo3jLSnTo6yUBilEX3iXvQe7s51U7GtcEIUH2v+QRb0yFTh6y/L8uaqhxyAML8hmqIwdpss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHZhGVsd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHZhGVsd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8897AC433C7
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707282496;
	bh=3QVPpMgRnYyTjQy5Ne8fIKoraGIidC0UZYr5PMy1wNo=;
	h=To:Subject:From:Date:From;
	b=pHZhGVsdcJC+4IZ1b+iU1/llEgeeeg8v8VWJJPaHx9Jas7ezN8H17YF+hJ+y455bJ
	 5QgndV9cZyt81ipjUST0+3o2313Uck3OeDriK61ldp0yPnika+WWzaByZHMXgUWjyR
	 YEiiHyj9Fnx1MUi0BK9hi2WbymzUDaGtfDbI84F3TO63ECEU4mSf+VxnYO4Bwh1o8r
	 K/oW4TeIkblssDc8y9ciQxA1tsWTNcR1ZHRcEZWzcQiVhCHOEsffbBbvpkoeOF/gZ1
	 mVv7pnaFfC2zefCGpvoH1UdGMDTUQArAdUbYd7aPtY/IE32yep8Sz2K2MvCXfZZT+p
	 ++2LpXVxRC5WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69B33C4828F
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170728249642.3771.8824794198661466343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10abfddcca1b85b75db79950524578136f5b0908a8e29947de2df2c0e83d5d8c
Date: Wed, 07 Feb 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707282496
