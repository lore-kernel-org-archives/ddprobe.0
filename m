Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B27410A1E
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759923594; cv=none; b=MHnrwG8PjZlP9H4df24bdJGUNjpCVhacJsbYPfan4asjgkMAzJSscqKTVOQ5M00rULual9jjMtkiXK2/Md6p5k0p8cUdvKfly6PoFJ1p1UzHKyc6QBznkSPNz6+j0Tnjo4YWCmHjkem88qoQ/c0b7ZcehNrJGjGaPyRNpW0HrZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759923594; c=relaxed/simple;
	bh=cKrncy/sMgy96lRY0rNrF+fjApQTOG1PRbT6ZZG3Ur8=;
	h=To:Subject:From:Message-Id:Date; b=bG5tg8VPajUtwcb0ANUOhmjbkMzxwu06zKF2M9g8nuyVOuGaDtaNXsWuCbH1gWCDHmmh5tQg4OWIV5HL3ph3+M6O7cxON79hGA5nUCAA2HBUdw6Vf3XkH2L8lkqHEMOSXNRUcFFrkxqVp25wa0ReOXcPE9JiwEPAyYn9yPmjD/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TI9vJMtT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TI9vJMtT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED0BC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759923593;
	bh=cKrncy/sMgy96lRY0rNrF+fjApQTOG1PRbT6ZZG3Ur8=;
	h=To:Subject:From:Date:From;
	b=TI9vJMtTV7lTgsQ1zyOoob69/joAhIOVrjJwgXnV/gTwn4pUbmWFEtlPe4U6kDPgm
	 B5SVp+CeT4A3pVUkZce94KmoSkMzeRYOJXigFREja9Sqwp97ZoffrI0Cmq2pWzacdE
	 wO1wjQZv6INhCai38wfSnoyppOj2c2bWZik+NLzn3MKvQHy8kJLazGHdKPhSCu+PVL
	 j52OC7ow8PyQGCrVoknqjTx1mFA1jQmCGzpwDYdR3Snmy9AA6mIrDbgoko4xLqQPYC
	 uIUPiso1UX04c9Rp1xqA88lgquAIJJojclB2ZPO6joFKDGO/+/0Ump7/LUldqHaqO5
	 Xk+AKsk70crrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97724CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175992359359.19842.8645233155849415839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71f348a5858b1fdd3093f572ed5768ecbeb247addf7bc4ac0d302c7682da767f
Date: Wed, 08 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759923593
