Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243BE54758
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756593594; cv=none; b=JIz7mVBqqhb+/ww8ZG2R7lbndxqgem3Wf1R6ZV76Pm0SBw5YQNjqVnT8v7uRCK2732Kc3gePIkZotL94MsPJsigrdZv2oryTrg9KC9hcSLQJneJrykp9MSY8mF9MH1KkiOaNmOFx04xqdpLoRK9mM6W8QREuWhaQv9ivy/iu5m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756593594; c=relaxed/simple;
	bh=b3pOubNWc2aPWsfaafM62wDehhxli6HV/KeSqP5KUvI=;
	h=To:Subject:From:Message-Id:Date; b=SMNaq3012+M0IDrLxw+rxxD/p4WhorjsaUEcKCH4zb+Mpp3hRAJPESp2Nh3mpPdQ6YaEgu6fuXoSoMm0ch+DHtm564EfuYBZ1tJ+9r3hc/ikOaEjrDlf8GKoLPpnTGcBAX5qvQZFKHRxr3M2mxrlMqZl8ZiQHewWYj8SuF+xKQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fF2GF3Hs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fF2GF3Hs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4351C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756593593;
	bh=b3pOubNWc2aPWsfaafM62wDehhxli6HV/KeSqP5KUvI=;
	h=To:Subject:From:Date:From;
	b=fF2GF3HsZbGU7DzBnmf1Wo9/3lo+PGsU72FmqAbDFXuLUTy84Uxv5im7ub13YJSso
	 BAqatBYEZ9148IZz22rqtAgahOrxGberwjpBXWW+kTI54vWnC7wkzSZ9+WV0CIiHn2
	 GX61zzGC2eqmlsFTQTF11hX55hCUA5Lr/Xjol2k7oeCyvFUm6WrPs6ei6Z4xUx/SOg
	 hHgxJGocdj+c7G3JE0dTCrrK7GEO6E3/SIshBJjBlZKNCS91e/JNDYn51YUQn4FW9A
	 HIaVxM9KNJ2EMjsVtjR8Ha9K56oMgV6rUxTplLSvz7EPJwBp1UCdexqx3oMjL0Fnc+
	 c4iMt8h+6QkYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E7FCA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175659359357.14202.13340638944726819246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5609fe9244e27152a1647e7fd17d24f913f6e66f8d38915165a07e2023773655
Date: Sat, 30 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756593593
