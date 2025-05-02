Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB99376
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746211193; cv=none; b=loFCiSf5idekSZ02MwvMu+eqB50UUorhTs6jHZnRjjMLsC4iaE/rcuGvDdNHVNb/xA2txwpdtV1FQCSm5919uP8/eJ2BSR/dDsnXw2aidBZ5l55MbZzEqHCbl/xNhOZoPEQLQgh+OzepZItc+VDxI/qktSZIhH+FNlz7ieQRH0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746211193; c=relaxed/simple;
	bh=9msElKTxcv76x58funFX331HUr/jz0VQZs/MUx8R3RE=;
	h=To:Subject:From:Message-Id:Date; b=uaq8bMBBjD6VMunEd8Mwlvcw+jeJJOfoq2fDXZGQNOXeXwKoAwdqW18CUYcZeplTYX6XdFXo5dssFfpbv7RDjdpoBknCnWcAyss4OjJWJAD8hXZaMhVb5IBS9w67GC/ZgVkzhLMfepA27UGYMRY99eU1jnAF1r4d7PKIB3pz91w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktCHhXGc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktCHhXGc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EA7C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746211193;
	bh=9msElKTxcv76x58funFX331HUr/jz0VQZs/MUx8R3RE=;
	h=To:Subject:From:Date:From;
	b=ktCHhXGci9UwOYmD+xqbI+Abnl3lnpVt0dWowSobaA4UqlLqig/DLe6icVEobdnZ2
	 NhtUKBRc90DS+4DHehWG4IzdxC6xAydDvvlqNoTXA+h1GVHzemlX1rQ+n2+TcrtOXS
	 umUOTsJwe4PN/VqR4KFkhkZRoEEZHyA+0hUDNX4eplGMEZvIp0X9T312XoHT5ZVPbq
	 ylxb4p+h1XesJF4wJjCQL226guFScYCXob5bnFvm8xxuwKJSYjiGZ0tvclo6+fDOfP
	 padTnhoIplhYO3FDpBlctOu7Q7rkDADM+8HdGC+EdsoyB/8tD8m1NSmpi/19gsFM8s
	 mRvLI8SXiGJ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944BFC3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174621119359.8306.92117620746527845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49b7c29149fcec903868699ae26b120dfa2dc8e42f8cf7f11d5db7803b1eff2f
Date: Fri, 02 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746211193
