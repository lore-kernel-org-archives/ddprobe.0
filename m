Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED3D24061F
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746819594; cv=none; b=mKXmBOcFXFIB6zeoczKELr+GIIJaeHp+aD1DXHAViVZjGD63f9I5DcLQEJZlN8lwVrzAeUubJskiyzEzKOs98p6xvcOwBLSAwOtgRtlb0iNsKedEHFLpALRsTk97T1idr2LNQ5NsY7kV4uCCRjiaaJwLyGXj1xwSHbLw4IHPnpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746819594; c=relaxed/simple;
	bh=owGSGs97lA4ZdGLFLouaH5DfrLRWusKbkyNRDPUCMY4=;
	h=To:Subject:From:Message-Id:Date; b=JitRTkiebUu5HmwDD/Bw9yP6EcubHGk2v/UeR6HlpczqyN/o7VJuhhOdWhzelGTPTaEvGGBht/MY0KxQ+q0AQoUyaSXd4vCIZ9bPT/fvJ/v3eIHQV2WTlhniiG11hEqdUwRM+7deVWxHgYv71poB5JEddb4UC80MqGiCPetqW48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlrhSx99; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlrhSx99"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CDEC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746819593;
	bh=owGSGs97lA4ZdGLFLouaH5DfrLRWusKbkyNRDPUCMY4=;
	h=To:Subject:From:Date:From;
	b=jlrhSx99PPfSEyEc1t+dlj+9JROi5H6AOvPgfWC7G5cugxwA+oVLFBK8QK/ftS9Z4
	 p3lXhCQeEZdy8sf0naX1V40z/Md00oB+oGEGhlB8dBPLTpnW6D96m7W0aM4iegximd
	 8d3U3DqN8lsHz5eTOvO8Pdj4s61BE2YgoPETbhD/HfrOXKPL8MKCr0seT5XzKNIw7c
	 tEH3dV3HctC+jDoi6UpoqGX6n4zTDymQUiTXms8hrxrEv5McpZsLLf1UNB2STQ+bw2
	 BGTHRW5FU94/F48jp1Zxoj4CFrtyPOQ0ukcQStP65w61EYlfonT9cw1qb3bA1pGa8A
	 mI03CF4j3GqMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95212C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174681959358.16780.14853210848831387787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcccd2c7a5156dec5cd5f98c16a95fc95498195862a74dd68185c6cb880d924f
Date: Fri, 09 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746819593
