Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ED6842376C
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791379234; cv=none; b=Nu9y9h+y/srVP/TqJSDYeFNW82E3xvH5qKdWa6aiOa/N+JSMCBCMdQoGX8CuXwpbFw67nLGwSctCNqwvbEL7cVWYZ/FpnfnHcuJmU9Y1e/Jfl3PSZshdaFCQ10uQw3MFR+rf1Wyd34rOVXxZq+qjVd30b9Pa8Lky9WXtT2kNsms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791379234; c=relaxed/simple;
	bh=cYAsEPPi40P+E2bSxrkTl6upNGHQZwyyq/cRT916jyU=;
	h=To:Subject:From:Message-Id:Date; b=Q7B5Lxt+eQCcF79VNNTjYgolqIMdf3ZUO0XImtS38LcqTuS28w9Q2QhWsM+ExSmKZVue2a1gV0DE83MAA6ckeNA7WSYSwgYhtjG5czkdXiZieDNzjGsEE/WROcY25XXtM5g8GBFiJwMFD7UywYYqHhdGpKbtAioe0ynPx+MdQko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUK2r5zw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUK2r5zw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7EA2C4AF60
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791379233;
	bh=cYAsEPPi40P+E2bSxrkTl6upNGHQZwyyq/cRT916jyU=;
	h=To:Subject:From:Date:From;
	b=UUK2r5zw8fgwa1UklqVL1UpF3J1t2ceIl1JXL3rSDrKdwOyVgOMhiV264dsC2HQ9T
	 geJuv/X1izrc6e0xYJpugWwg0mUVqhVvZiQ2CUlEtfSnjklQ/uSQaDHp1PK4wf02rd
	 K8TSduYQAUEwzi5u5yMLBLm+rciJUVK1VCSpdu9FjPMcl0ZsbAmutlodOqjiAVn/CM
	 1T88rLf3/B5ZyFozW4ot2L1sU9BCa6sx21d/kzCGDxVPwOHWwF0kaKmdcr675l/bET
	 iUx2mBFv6Sq/JYDMkR8AEZS5w8aw6Gj2HljcVpVwSKjlYI5QOtRiHSMssndwtWFi//
	 hDIWXU3O6S/mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B200ECA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179137923371.28205.14383046413832494848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae248ff3fa618b3eba74683c66ac11ab7b60674c8e6ba2ce1f3932ee1ac3fbd0
Date: Wed, 07 Oct 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791379233
