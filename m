Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9AB433E9D
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 15:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783005514; cv=none; b=bYsjrnTOIdcOsRc+uNPsY5fZ24m0SxGCyGlbxszhzNJoDw1Quf5GSuA0DeRDUjjsIIqdpsqMN+s0MCm7wVv/6haGwIZ+c7c2V6+PrP6NqmSOeKyz8RaB8ZFIUlN3E2lY+/CI2dlBLcsAe2TYA9nNJ+ln0BK82x95YO4a20WhsQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783005514; c=relaxed/simple;
	bh=jn6aMpETngM+v5/9PTpZTIBU7YXD4PPH4ZXTWT8qdDw=;
	h=To:Subject:From:Message-Id:Date; b=ZpPDn94816uM46BNq73I2RJ9E6CuBmZ/HBTwKkF8++j8BbiMIUlQwyQGkRLEsXKpdYQkjYmy/w0FRRkYhZKaqjigayHARYSr5bzxM5PqoCgVvTMIxJVB1/6sniWZhH45j12fw7NYaDOFWtiHkJEX1GSR2n0VtVgHAHQYACm4HvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBngHp2v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBngHp2v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD773C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 15:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783005513;
	bh=jn6aMpETngM+v5/9PTpZTIBU7YXD4PPH4ZXTWT8qdDw=;
	h=To:Subject:From:Date:From;
	b=EBngHp2vdUIq1EbIDHdTWwa++Xvr0shw6o00odM8MkTS08VVruElcrIfrIAWGr6nk
	 dwdsJ8fKBOk07pOJWEL+vZoypFTzbTpOS19ufD9Sj9fjPVfKqk+ijdPT0ob3i0kd9A
	 ghYyAuqkOhrnr7YyxLSh0cekZLZfFFtEcZFAYOp5wywcrgJBIiXytkvYtnjE+4olKU
	 6Vv3Us4U1qteADhBzqXulDAm2n3NPCjZWJxPFKkjnhYsgMOcJKhnEs5ymieifgjTKv
	 Oo0x6MGM0cTiFaYZQKRacYLqk4vjrhiPnoOV/4HyXZ+CNgPU1xERl6+sTFRhX1TnNu
	 BM/9cLCS0jMEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F58C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 15:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178300551368.4285.3670036034622368984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e0abe003e1a7028ba036e5accf5f897b68b3c5e0e2dcabd93da83b3f868dd20
Date: Thu, 02 Jul 2026 15:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783005513
