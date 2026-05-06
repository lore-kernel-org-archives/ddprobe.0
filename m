Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204763EBF02
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778086054; cv=none; b=FYyTHgN9Ndqm1R0lTP7cfNZiR60sUgAE9ocHHLRFbUIcPqzcWafxr1fPf7gh23+Q4kwoaPmaTyfkU5SCoX7qxsG5VPX2K6VA7e0ttRlUMGiGfdYWdVjdiLIl2nG0w8fgh3EkJEzGEbfmoihVHjABAlPhYeQjFY6DQUp7muWxVv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778086054; c=relaxed/simple;
	bh=SEAMBeyTO+3UhyOrK37lreO/7/uX8yCoMkt85BVclVI=;
	h=To:Subject:From:Message-Id:Date; b=oSSD73fwcbgSdOFgdFSacZm78NWJ09sB4r8CiRWCeDWNzF769EQEuJj3K7A05AK5Kjzem0gN02hfs6b0XLgjQKewRBV7TQk3dtMNdmV4Tv07J77qEYXE2Q1QOJ+65pqYgqTcHEVZkeSXuebHykLYkTryEhJSAjH4ZwM2KX7JfdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsSAt3KE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsSAt3KE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE8B3C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778086053;
	bh=SEAMBeyTO+3UhyOrK37lreO/7/uX8yCoMkt85BVclVI=;
	h=To:Subject:From:Date:From;
	b=CsSAt3KEQ5Qr0RvlHHt3+/Nyky/7CNQ/qImnnR2yqJBx5QKEcCsmzXRs2K3culGqh
	 d8u8Z3CRYe3EQ8YeW5Wam6e0b90nVlhVrChHq33+SfyNiwFzMir/x+t9TkJ0LBLpeC
	 SKkIu5Jpv1SQx+R34jOvQPA8RuLTtrOvbabtFx/bxnkvEvKJjeFbc4c7kVrQX7m6dm
	 DEd4lVlIXJD28lYhY+fJ18Wlp3n/zN+TrAlwJ2s74G2PeaPcwAD0aE2vptIcuPO5Jq
	 oFtEfl8PxjYoWcHk4sYsJVsd40fmaOyJuXX1IvxzorlxtTHfxTajeacuMh/QRuBmFS
	 uGjw086d72Jzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC44DCD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177808605369.10328.13702281474925148636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bffae9869b6461bd659aa8e6c1bb3e91a1633e5f5b7fce7ae6bc50c4c3eceaa0
Date: Wed, 06 May 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778086053
