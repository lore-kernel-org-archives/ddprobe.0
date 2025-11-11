Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E68142FA0ED
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762861794; cv=none; b=EQSdCeskPq1riq4FcUstSkU9ygswGK4CV/wUub73hzEaduWNS2t9qPBvkb8DE/qF1aIGhiK2cCOOU56Eyf5RH442FEL3OwkyVwIEiA+QgnvVlSijHKQkJHbLPuNTDj4VjTS6mEDs6SL/RneTjsNG4sE07jDFJZgrbaNFqfA4xho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762861794; c=relaxed/simple;
	bh=Dcx7to5gDDWUl+iwwLZ5+Mrl3tawCCUKB9jn5kAPHqA=;
	h=To:Subject:From:Message-Id:Date; b=FNyh3uqCTB8S8Fp7/LFxTdIy1UxFVbxU3+CXFlJgVxT3fDi1/ub+f4Qc559RzZE7qEHAvPijND1roXdmSlVXHmv8am/4YcIa5t7Mr3/a74hXyGCbmF3SjMzepjFG8ppcKojPXU2ITaSoE2BLBPfGuXzkagDMwgAd4jTjevMNOso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5cMFL0t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5cMFL0t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99E87C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762861793;
	bh=Dcx7to5gDDWUl+iwwLZ5+Mrl3tawCCUKB9jn5kAPHqA=;
	h=To:Subject:From:Date:From;
	b=s5cMFL0tPcrAepyX/cyOHR1W+N5w2RicFNuvq3u8eBn49UVSRPHXDO6+N4Lol0+F1
	 5OKE222X6xCvn34yV4dxr73zToINh8HYFXCxlHyYq44VVs5kzSRPEjUStedNODvLnJ
	 9VI4Iy3CjJ5ijPwaxgHr3GE/XiXg3i18G4bHU4lrMwBub9VFZB7ZXlAy4joU3mMGFc
	 hcILzjjQzS0gTCqmOg3AJM50JnelctQqRSMoYRGHkFSWR+Els3Goysml94zOuz2MB5
	 qvmYZ6Ac33OQTBaMjlrP2WVJEsAi1qjmG2KvbB9jovJjdJcjcRd2Ffk2NCQaPzkPBd
	 W1iKrdyxRVr+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900B0CCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176286179358.4851.11661540656035346908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c38522ee76091a1ef1894da14b32b42b7daf39cefb11a0a47cb9541382735ac3
Date: Tue, 11 Nov 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762861793
