Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67CE422EE5
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 21:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717277723; cv=none; b=snUPsEn4bcsfME++mfgLGj2WwlJHOkuREYtVZhXXg4GEZXHpRc5WD7opSWNqdMXRFGaXou7262f18dompVEMokzcI9X7iwYv41TmOY3KyRTuwCtuHkfOFlWUpM1P0sJFIFZRIxUAo9o1BlF97yha5whop6cTjROrZucHsOPMRWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717277723; c=relaxed/simple;
	bh=CCUMo26YHXH6AFxxtofgpTWDongRTmlOoNOrN8FsS5w=;
	h=To:Subject:From:Message-Id:Date; b=CqbPdkLRKNHOgR5JLcY1Qwki4zxj1G7qKerc4TQOJ3cli7SVw+CHcZQkRCC2GXy8FOHbP2u/E1Z4z0XeKIbEkCD2rYIE/jOqpiuj2/q6b/0Tr4WyNbidYESiGr71bFwFfqa2+KOCJ2f3GL2LX8+oc0IhhV3lScwYpRYPx+l0CJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pPUenZqK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPUenZqK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D671DC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 21:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717277722;
	bh=CCUMo26YHXH6AFxxtofgpTWDongRTmlOoNOrN8FsS5w=;
	h=To:Subject:From:Date:From;
	b=pPUenZqKPddh2qd+bxQoxxkQyHiLFQNXJgg5VSgy3EHVfUIinP3g2oxfztLLRUlB2
	 a1V2qbHfeemgowF8FQcQGPU4K8Ktu+W28qVvzDeeiL+pz+6cdyEA7IlEnZjwrFJWry
	 VaaE6lDYVS4NibzKQaEKYKB+tvOVh5j6x70G8i0gUrTcMmeWoDn9YgXuvmdpsu0NST
	 HxulKfqvum8e9Lxk3rQf2mF3kIwdNDA6aaxv38mCtVaBxMSz0+4C4KWAlDkQBWJO0w
	 TrvkZw82aGkaw0PTynP4SD8042xwFC1Qa9j3szijm+TIDIdh2aSVyuf+yRr9csQnPD
	 nTVvD/Pev0m6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0EFBC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 21:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171727772276.12123.14275970252403032523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ca93662c357104100976eb5829df7abbc6384c8677b2841103f701703fd208
Date: Sat, 01 Jun 2024 21:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717277722
