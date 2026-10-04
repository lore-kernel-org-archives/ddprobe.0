Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271D53B2FF2
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791131434; cv=none; b=AVdGwOgic03Zsc/uLwqBgLZ2uagsyJfZ2/koUFg9OvicSY2Pc+0VshA5JEkdMPccK+cDqkfwR4zvlcQp4zNZav/csyAbUeO2Efrmv3MSB+ym+7YA2pJb+fNW5vYVV+Uhj3ZmG3SmjO6dmQpej4Y3Gd+sTditYHdM6zsLHpViHco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791131434; c=relaxed/simple;
	bh=sUW8DMv/KVix7KZFG5YvMcRlc2/6M24FR3Qf+GYFkdQ=;
	h=To:Subject:From:Message-Id:Date; b=OVOTRZHRrFcfU9JEp9SkxO2Iju2VIuAhyoU3/OG3J4sjU3g5YJuwhxCjoHj4ulTphvth+JuKSRtf7sk3iejC5Uy3ehCrriAChIwm5q/+fRkx3l4gsVFgYgFWZzK5/khNYEPLoNwaO0jGIAnASuodPu0JNfaRWzY44pgGNo9SLDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKOn10a5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKOn10a5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC51CC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791131433;
	bh=sUW8DMv/KVix7KZFG5YvMcRlc2/6M24FR3Qf+GYFkdQ=;
	h=To:Subject:From:Date:From;
	b=jKOn10a5zhQ0WV116PnDXvYe+z9oBX+GaW4tDpifswrSVMcw04pjWMuyA3i3FOzUV
	 RC75odRVqTLudmLhSYCGGc0jhH9IHsXGGIWRsGItXwLlCTB4infb2AS4J2DJVpMowM
	 +HqO7AVrGPcWQRNkUXDUG9WSSInES3aiuyLOpby/iG1YlX5j1JmW8cuAWbFY1Krse3
	 qRFReydAku83yhwmRi2rg3DvaajnBAkUqob6OO+tzdWO6WxW/bV+e51sFEDXwUoGMp
	 PjZ/Yyt+Vl7BXRZ1ob8j1VbWbuhnCieu6IpJvvrR2VmN4izRXIk4JREOrYIHVHGvNM
	 qh0xufMnVdWSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6D1CA5FEF
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179113143368.11298.9774972151752230770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40d92134032b9cfa7e38aa2c8be6e5f7e17ad6f3ade6b538937347f6e7568c97
Date: Sun, 04 Oct 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791131433
