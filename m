Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166F834A3CD
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769881434; cv=none; b=Ofacm8bSHI/BnZMv6t4tkgeNMtHXt7/1UTuRVffm0qjeI/S0UMnS5LUYy/nxbYUqZWvEvxzQcEaQ69ig2xC+uDEtaUk8/B2349aiwRQw8S5n/iBzlNlxer4F3EaLs3KM/60526lLSqkkG6gHuVezIWhJ1uf70yEft1H0HwBXemE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769881434; c=relaxed/simple;
	bh=R1PvZ36ezZst7L7SjjiBx1KcFzCpH5pyfSJqIN+MO+I=;
	h=To:Subject:From:Message-Id:Date; b=t0zb0yLwv7FEW0G4tnwuRRj+vuMnAkv7/hlkQTrmzB44PM6hqOKDGOtXutYkuJMucxTe/P6ImA8rUaup4wHhyXK3FuoHoxEpOrUapaRXFd3BfPzF+41zk9tB38t5j8HxkOdN3HDsLUiek/8n9UXPkJORRkiXRHjsH3mba/qJPSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdAKJlVF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdAKJlVF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17EDC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769881433;
	bh=R1PvZ36ezZst7L7SjjiBx1KcFzCpH5pyfSJqIN+MO+I=;
	h=To:Subject:From:Date:From;
	b=AdAKJlVFPbezcZu90hSsVXNlnhi0MspfHX7U2278wbLLB5FgdRympB7pyhFcwZqqL
	 ZyfNlBzNRTy8Zck3BoqHMUGpLQhvFzhkCcW7gK4fKNgdvefWSEymFD4wDu/+oEpj6x
	 NTyNfKGV5Bwwx1MRWzc/iQ0VN4ceJK0BDdM2UW34girkyCwkOpa7DU96z6Yf0dntjv
	 JqJHk9mrxIOvLPNe34Kfu/39m349KzI5v2Oy5OFMTdBCg8g9/Gjnp+JbZxi7qi3jca
	 B7/cEqVxtSi5P+7aJnjJaa/J6EDXbyOOOa0lVh0qOx3MUyR5qcq/Es3WZDHAkVSHSZ
	 hn+jzLOEvcSeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCB9D73EB3
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176988143358.15940.16599181573698358280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c74c9d1f9e80732788acde4f5969faf00087e3f6a5d95ad137e2c3642adf339
Date: Sat, 31 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769881433
