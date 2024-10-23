Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7AF1CA81
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729650354; cv=none; b=RNpe9foc7hLa7RMDENB+Ib1xQb1Y6phM4IlEFXDztOiBaYX5u3zAhjKHGElWE6MLeKguM3nwC56S4Sn3PoVIDt7Frr9Oj6XhB7IHex9VdhUnV41E4pYBg2HDLHy8OtA9Yrp1Kmu8NETxEz+7lSyoTyXlzwHOUrq4XavKVHtpb0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729650354; c=relaxed/simple;
	bh=yCE2pvk+FShf2/xRx47iBwD7WwQoJnJRMfc85Y5LEAw=;
	h=To:Subject:From:Message-Id:Date; b=Cd/yDwqFVoFCM7sPLUL9KJX7pA/RE9Z5flJicF0lG2m37URo5lCJActy2XRskA948p0HqAn/ZdbOSptHxjLTTK15NDJUws9QwdxvBSK8afO1Ijh9IbfMuOkxsG0cIc2vFsrpvqv8J1JtgiMi4aaovOE8ftCVXkaSWcWXAdVKlKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NxAFOYFL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NxAFOYFL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B90C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729650353;
	bh=yCE2pvk+FShf2/xRx47iBwD7WwQoJnJRMfc85Y5LEAw=;
	h=To:Subject:From:Date:From;
	b=NxAFOYFLwLbOixHsyg8728/NRtC1n8EF0oFJQV3+4UMG+M77cBWAnlrMv7RwOgPnP
	 br0u5SpXdeMmu+skxdVEQt7jBQrSH+bszPrWJfz/Mau5Jxs1jt2UWNsccmRfIaxZ2r
	 KRbc/ibm1Jcrz5K55zpy9Urzn1XgvAmxM6otwen06SHTDF+o1C+qHuZ1Ybgbr8HN6X
	 k6XZiYAWAx3K6cgfmtKeWLCuBICmSWxbRNT9u9uJ1StFpfsm5AdtvB+CXeOd8yfLnz
	 fwEjukgfpX3JvOxoxIDOVUB0L/jAFVCJyCnzaR7qwl0oyLexgFB/yvs/jNG8V61gra
	 Hyl5d4T+pjAwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955E1D2E008
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172965035358.29459.9229918990590942703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fabab78361a2e2a1c9356bf7c4a339eef257b254dc9f5c05a54c9667ff9593a
Date: Wed, 23 Oct 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729650353
