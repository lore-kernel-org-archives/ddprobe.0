Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F90B23757
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705517297; cv=none; b=UQU4hQW23fpW4F0ttqDvGaaAb/a487qZz+M5lc+Onw2mISVce5TKkmtM9URXKtrhXawh8LkCJ8SEg/3SGzrRj8hJV74r1iH3BwqfqD4YUNpxZ8/zrGeLS0o08+r5zNUzGrRi7r9Hy2Ig0dSSgOF2z47xAMtZM7Kf1J/DymRpbAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705517297; c=relaxed/simple;
	bh=Qn3Rjyc8ZAMCgIRE6+y694w43C/tIR1NSM93hpFHrFk=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=tsKPmyKuKUmiJ9P7hokoo6r+Luc31dEGGF9JvhW545WjCMcfJhuqpImzgjD+DjorY4mnR+N/KJwttKQSTgMnS8p7gDyVSb5QjNTMfnEd4m78X/7F4wAWIdjHGWY2jqmlT66yTW6y/c8XXz1pZqaKqTyaDO4USmOo7+uS/AQGC+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aek9ZV7o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aek9ZV7o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E30BC433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705517296;
	bh=Qn3Rjyc8ZAMCgIRE6+y694w43C/tIR1NSM93hpFHrFk=;
	h=To:Subject:From:Date:From;
	b=Aek9ZV7o6BXTPxSaL+nZxfyWL3R2FpT+7lhQmLR5g2WwMhfV1GlPvsQV2COGs3IYl
	 BZ0vp8wHqqC9KmAi/HwDP90sVL+aMlTScw1Y+G3vsLTLPrbh91UsmBCIoTn3987+RX
	 t4e5Zg4SSLKE84rLusJavSQuR+WTb7RDyhtHoCXo0WwFzFHJhPwxcIG7MRbbc2BgzM
	 +rdf0b4kpwSv5iZBdqk7po1SjErhYF6XaCmEGlkosg4rZ8OnweZXe1Rduy20z4JVMs
	 wsmBe3paUINnNFKUGd8M2HEsrUxiMhOKQg6uy5JdPW62R/GO/aXSMJjeby8psSLqh6
	 ZeDf+8gBmRYjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63A88C47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170551729637.8667.11656304723032516077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27b276288779aaa849335cd6990f0fb0063be1f186e9c5f9748939cd5a8df57e
Date: Wed, 17 Jan 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705517296
