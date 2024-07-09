Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619A07CF18
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 22:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720564583; cv=none; b=BLlzYVbSxVgkuZQP9Q0AuupjTQqY5YTr+wclMP7a3hcLT2uNl0q+jkyToxkcySN7xx8CtCnBbZiU62wmdPz43a/tujjEd/anaVKoZAzbTnhky6CIJGPVlirR1IB1i/UwZvscAlc9VdE2Jc5j3T88RxqLDo0wLLvR+fbGlGP6peg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720564583; c=relaxed/simple;
	bh=ikilqsmKff5vYq0Az23SV4W+ePEpCfHcHF28fzOp7BQ=;
	h=To:Subject:From:Message-Id:Date; b=tBIek0k3DtZzYHeDm7jRMYPCzlbTdSU3n2nL/kRsMAKH/dMoIRYMRcUcxBRaOuKgoH02KlPbE2V5ZX4FqGjK2VFg9yoXcR5fBbmb0YHNVw87AEc75ROOgyPt5bPDI7l7nxsEAU5SVHvF8wDoqMxje/KTOvWSSues5HjKduGF1Ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XyP2zh5F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XyP2zh5F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F4FC3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 22:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720564582;
	bh=ikilqsmKff5vYq0Az23SV4W+ePEpCfHcHF28fzOp7BQ=;
	h=To:Subject:From:Date:From;
	b=XyP2zh5Fh/QYyqgrVSWPNOZFA7ZoUXXVFQsyBMryq/8EKq7LkKH3JhveTVhuGWQdO
	 uoZ40DS30u5UDKhQ9LTZrHzUqvHHFUpLSt2n4ZteA2c57fASIBmvMWzM1rUZVb3N/u
	 aXHXSDJVwTrkWus9In7uUPBHNydmlErVPuE4T2EvbaOwVNEYBpkNOwACSqJ6q2ZMcv
	 Nx2gw4rwbHiBgVluyYDAQOUZqWNnhQk2ksC4NQz9kwK4szcDV6AE36dRX5kqmMiyC5
	 QZ+l0FULO1SQMqzuA2pTyix+fd4D27Zw2SsDJzimMHLZ73bwg6BeKomW96ldEgyKhJ
	 2HWjXtG2MK+1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C644BC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 22:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172056458277.8044.3486315821863427592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db78734be4a64d4acc592cea6262d1dba36a0669bd102ece1a40806d7f9f0f07
Date: Tue, 09 Jul 2024 22:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720564582
