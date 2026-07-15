Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C8E3A9623
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 03:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784087314; cv=none; b=UiYQAZt3+N6D0N+7p3J9V8dGSxMz6Jgt1ai4nDLl3mzDv+LMaHeGpUF/0OhOu+Y0WsJZD41sIgG2e4NeQmk54lRlM87ck0SFu14+2KLfH8Tg1rwyG9iB3tDtI0Ho+ygFB+Ydr8f3cuZDZOhVlW6YFlwFwICOLvHEx/h0q2kbWvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784087314; c=relaxed/simple;
	bh=vSpurpc+aeHqh/ceslzCbLsym/1fIBWtuDnRWN1gda4=;
	h=To:Subject:From:Message-Id:Date; b=EzWznGKWUCesJH/4/4AQexVF9SbEh8KdH1whitWpn9AbFTgIwLsJDTs+GXl3FGAxapKNMQT7XNO4ajGPFt/ilALsg6WO/CvkdmDDAdF/ncxzvTBUsZG13oeR+Y9ZmsNQZctUdNDh+Xet9WsJHi2fIYLuiFrnqQDKRYKopPcIZ38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CoY/Fn5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CoY/Fn5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15D9C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 03:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784087313;
	bh=vSpurpc+aeHqh/ceslzCbLsym/1fIBWtuDnRWN1gda4=;
	h=To:Subject:From:Date:From;
	b=CoY/Fn5OYSaP/MoDRTw1N2HEux3nM2z7+Mwb4qj1n6LlQvUbIFUp9sdL1ptgxPvfg
	 eYyyR7na4Q58zgANa+ASzvm/slAB9IqbPvpZDT409CwznZAQC+v/ur3IIi3YOoZAmy
	 rEpzjTCxMOR3S1xAb97JW9jVbpUVuExttgQ/vDgG7Kb2lKXFwRLeeGDy5RJIJWd52y
	 FgRi+Q+g8z8HfaqE6Uqr8DX87DII0x/UMZY91JcAkfyuSycJaSObvOYiMYVahIMl96
	 on3Dh+BN0D7/zCnipVPBQL712OB+yri1IqpfL5K+460llpjVuWTTRXQ97SV8Sd/8ob
	 GRXLB6Ob4eT+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEACC44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 03:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178408731368.17797.5547460895378606522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce796580baa3c12fbb0143798e78f16bea56dfc889e1c9fae564b8783c515862
Date: Wed, 15 Jul 2026 03:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784087313
