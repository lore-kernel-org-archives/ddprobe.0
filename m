Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 656FF52D2C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790869234; cv=none; b=j+hmiJSI3ceDm8y7JX0Idz4p3BtOBjD1rmHCg7r5XPGx1PkgnPv6KfSK9Tzt7Z9WB0Bygu1TAVLBFgihlKxgba6cLM+K7kDcamsbIPLkkbe9gfsjfdaMcHOouWfl7NTudyjasq2Da3CHC61DYmUtFudBWuvsgYGahet/fngLpLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790869234; c=relaxed/simple;
	bh=7ZsJOppESeG15jGA7v/hpi3MVVMK9Grx7xLlCrzSq9E=;
	h=To:Subject:From:Message-Id:Date; b=uQl6UN1nq/sZAygIjiFPGP04gMesm5Myv/dKpJyWn/cVz0x+uMaa4bI7cRra+5y1J9UoKt1ME5K9XT7IuoF/o7H9FpyoEC9T1PadhOy0LVybYlGOhW2ktlsvJEOlNQIHZwQHG4AP/B9VnmulKt4Shf8xvrlI8/UJbZDYJovefs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPRI0hVt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPRI0hVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBAAAC2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790869233;
	bh=7ZsJOppESeG15jGA7v/hpi3MVVMK9Grx7xLlCrzSq9E=;
	h=To:Subject:From:Date:From;
	b=rPRI0hVtkjTLj+BNDhlS8TrhibKMUapcLFPKBBdtBhucyIcfn8GSqfYS8cb2GW0KQ
	 SE2XEjaPNTDMupcf6Bb9wejHEXK8KEmgXlhXqOBVMeRfnSuPfJYnMsO3A5IUWhcFwN
	 UfrW5+FY9+6UVeZ0M1IhR/F07wmCq0FYJzTQNoKAFyBqoHBzVxcYI82NUN0lFPXacX
	 Y0q8qaANirUlD6xi65smbX3kHgldPpF+wOoXN58deKR4emtZM8t2eoigzDoFmfDQmB
	 +YOYU9fdDfASUp62H7XZDA2TrkpnGN27D8FTxLAd1x0iJMMH4aTcc+9MGMUKEsGg8x
	 mG/yF+UEQu3rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B574DCA5FD6
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179086923373.24459.5293607594351062586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b2f68add4c0a70d91888da2a2b269141661a029b49ec991f1fb7f8cfc802c05
Date: Thu, 01 Oct 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790869233
