Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2221B4231
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757803194; cv=none; b=JEbVFvlEA+CPEBjR0e3CFKsUCqspvH7Cs1qVDObbgp3wVZ+jvrlQ9Qqx2ZLlIk2czxN3agNq86TXyRPL90onvBhrWsn8PxRoBdjTJXnnwbUjsPc/rfaqmiREhVP5pH3bLeSg9v2hVjvRCqNOnrXTj/F/q6E9Ks0cS3bQbFNrKXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757803194; c=relaxed/simple;
	bh=KmdXRVRuqH136OSjybd2Sr8Fv44Ap+8wQA3BmEKM2PM=;
	h=To:Subject:From:Message-Id:Date; b=nw2o/bd96D+8qX3gtAkqncKe9g4+YHUL/SA16/uSKPRjjRur6RsBb73fM1RNjVC6Bioa8Qu317MFegV2DaRsOZ6UAKzmuBLiuWD2HmiFvcwyZc97n1fJD9w6deAJ1VpmFCOon8Xm4MUlfFUW+BXg917DpzaWREEslnYA6Czif0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/1hQm6s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/1hQm6s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33E3C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757803193;
	bh=KmdXRVRuqH136OSjybd2Sr8Fv44Ap+8wQA3BmEKM2PM=;
	h=To:Subject:From:Date:From;
	b=b/1hQm6sgSRXfD3EQztPpUneNQ3O483SmFVxcSqfuXz1LDqtNDzXGHi7HeH8F6GwO
	 NUn/q9oiSU65nOzLOhKMNpHY7irA1hKX2oSmMXHPi2jjGtC3uEWHWUxIyunKnngHr5
	 SALXQbrJoeorfbbQHoFAlamfahIEzMoYhuvxzGm1Pc2TRdTVk8gIEhmi0j/ZkSgUpp
	 VFhvQblcPajmKGaa530B2RxGWimEWJ+uhZVvuRXc8ckTNPkC2RzYroeAZ/jysCZQWI
	 twsgpYaWBCScjHpWEaB4M5vS8Z5ia2v1fuZVIat9mOFrsKSE06O3aiYVzpG/H72ydl
	 /gAvycuD3gAFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4F8CAC592
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175780319357.13863.3192381082173404540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6df377a6865efb5440f248b4f35f572ce0f4b7f8b4361edb4b088507d60c0e2e
Date: Sat, 13 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757803193
