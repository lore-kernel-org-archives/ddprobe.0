Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA5D28505E
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788121834; cv=none; b=rd3a7JWWP072cZZQxWhkwuFK13c1xnhKC9kM/hgsAG6ST8SMu2FjfWJFEds2ZyPPXTgEOzKCyGZm/+g1qbUC2R/BZqQ8DeV9pdyhPsn2Ny1VixMeHgTFCtRwaCLlQXp0A3P6dhlsUPUP7w1gm2eQDIRWThzzUeIjkwqxSeE/i08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788121834; c=relaxed/simple;
	bh=+eAz/CGJbkt6E70GAHdrJJ1G+pyaGCLoub5dpSwBq4g=;
	h=To:Subject:From:Message-Id:Date; b=BpJ0uaro1cek+FFz41boZMFIkr1FhVwB0qM0ec72OFdsKtsE7mMfLEGuoRi9v6ApAXNDy1UpkUpzOrX+1tF3DxU8XdOsMqI0q7YZV0V5bWF+H1/G2pvA0a7WP02ZvZRAbyV9tsJEnFKDTFAl7AS38oqsU0FJezJ8tHIn5U/fctA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2gdp+Bm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2gdp+Bm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF878C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788121833;
	bh=+eAz/CGJbkt6E70GAHdrJJ1G+pyaGCLoub5dpSwBq4g=;
	h=To:Subject:From:Date:From;
	b=g2gdp+BmHkV4U8mo+FnTR8aMt+cg3RJK3V82Fp2z0VRAkQ5NnVx4Pn97k4NkOJZvF
	 lM2JTw3T7yR2DjV8IVPR4AbbyjaHjuM3+KnbRuVWvtAfJNYPEphpOdo+jynwg/jaRj
	 aiQzoCL1snWH0Y8vQpn96bDBYVmx5QWSnvm6b240sQXZpX3kED4GIzjgINsiAw/UvG
	 FF7dZCTZuffBYdl5KF9GHzzU3LO+dLpcm0iOXMO9d29JGdtSNG62dnzvSYhQ11NiFg
	 Z7KX8SRhyf0Y0AhF7/sHeh4u5FEt8oY64qjlq6xCEi3J9McvsUvykTK6uk8z1hS6Ex
	 UiD2imIexg4RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC962C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178812183368.32069.17659306924379844507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 087080fff47d0118546c359d2c5835a1fc405b2670a22e1dfc1770ab8a6d3f6a
Date: Sun, 30 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788121833
