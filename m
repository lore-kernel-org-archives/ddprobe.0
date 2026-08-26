Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69917154458
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787704234; cv=none; b=gNwhN5Mt5IXH10J/CIu9GN0mOvUm9A4x7ZE2sXXUm/pwViVENKODcfyGlvOHjZjXSEjdvl5m3wRDJtQ/7g9/I4mHg858+53RpTDh+jOkqceq1K02xnQlLzSvvs1LGIsDHITCeTDzYbAPAi/y6TVgxMDxNTawVuwznzS9JJmqq2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787704234; c=relaxed/simple;
	bh=rH03LckxZb3ru2DAQps+CkUKfpnSyXFZgk1YCbFP1v8=;
	h=To:Subject:From:Message-Id:Date; b=rKT+3NOLlS41k6h6Q72M1uygHrMgYB35BDXJYgRoE2YwbeH0mlxvjdSMaWuOFNfawVSQLCst3AW3LxfjwjYhVuMRkLoAzPKakQysduKvLfuaBQtN2S+bhd0PXpoazGJGWvI94A1xqPrIDrGth9zO9a1z5WSE1n26QA+rviWRFJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQ6PAl1Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQ6PAl1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98CEC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787704233;
	bh=rH03LckxZb3ru2DAQps+CkUKfpnSyXFZgk1YCbFP1v8=;
	h=To:Subject:From:Date:From;
	b=CQ6PAl1YF/w1o0EO0UpcUKObo6rtO3PQXOyUr45t+xtVjeiuh+jFIVcp2bkSUYshn
	 RCXcrr4cVuHSIqFHygxmKo1Ek3t6KI+CKZlVUIT1802MfzrImTwFVO+b7kPDc7/0KN
	 gdSIUvbKS5PbL9E5bzg8FKlCVKGz3tp4B8a0fz6+GUEz84GWpJukCKdLzkIG+3dEbo
	 mFzVuyd0d3twA9qogc56mW8BHnINLp13oHSsj9oRsIIecS+vUgPpCX2TWTuZkNDcS0
	 kz152iY/dNgRrw0sdff70NoeEGoNrcVZdX9Q8LuBFN1rcnw8Nf+eFUFDOLMSLKGMAV
	 VmylFkBQx5oCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0CEC61DB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178770423368.4059.1530064112531131215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daa825a1922051813c1faa64736a185d5f4b35c4ee33c5db0ebb570b4f2e60ab
Date: Wed, 26 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787704233
