Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CE337AA8A
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 09:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778234254; cv=none; b=TBMK4/W/seb11w1s4I/AT2TY1LcqzzQiJ21cHOAJieCSYr0jkw7pzP/JLXw+652LBz3E4EAhu345rmkPw2GSINKouwrVOqFAG0MxCTzS5Pd5o6JssAY9GlG+o0V+WCs+ydFbFxN0ggmN/hXOWOjDX1bsFrMABqqrL16kWq7mynY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778234254; c=relaxed/simple;
	bh=lGYMGiuGPtxeQxfQzq5OBI04PW0R/htmgI3iafZWLvo=;
	h=To:Subject:From:Message-Id:Date; b=aM7YAZ3Vmd7+hqcogTo3mN/yWHS2T82AG7S4BDWle9/5Iq+oUdfZn1beA8ahBAJItRBXvjVTWlS58PxupAqbD/4IiUlDQXJaUWxUXjGd8aZU2N08bslFaO7qCZ0DxTQEufFey3VJ2dNyqBvuX/2+BGieiP0n18/eNWfUiyWN60Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjacZAyk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjacZAyk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C63C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778234253;
	bh=lGYMGiuGPtxeQxfQzq5OBI04PW0R/htmgI3iafZWLvo=;
	h=To:Subject:From:Date:From;
	b=HjacZAykNP9QF3oTUjXjJtQjMRMmA8MYdM3iUInxcGaxMuWhYT5kzpv+V4zRE86OP
	 acauF+3p1nNTRHZ5+271WoSMAoRSm/5zhQTYhSg1sOc8GQw5dTByF5sJ1T2XEzgZ/i
	 PWzAq2cyeNyuy4gQ3NOAdEIcTHp1AuIBIKDygocnySa+mKXBgYIkNNAsKKXfIxGuT5
	 N5p4G47uBGSHKBldcKy2a7XhmmiVJyJwiTjAttRLd6D0p5Xmp1CIQ0VSQi/Vr8qctS
	 QnfpHAz7z6YqqTlguZU1gpbxZJbajPDikuv6TmnufKCiawrriv+DDz/WDeYpe9kcRz
	 50l8fZu4sr1nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB028CD3447
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177823425368.25530.7189701560131341514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 842bae467d844581f9e6e2a9569a2e758c404904eb811bb91974185a0a5c6629
Date: Fri, 08 May 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778234253
