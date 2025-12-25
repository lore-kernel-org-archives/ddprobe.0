Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2471FE451
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766688834; cv=none; b=A/tR5FgtUsyQQVi9uVYlg8RIvEe/FXVxHUHy/FvPcMVOTUt9jmATDR0xkaeFcjfhRw7Gfsq67esjZFeWLYDyOEm0u+0HWp4XkYCmmhVl7QQgTDE9oADCFJiWVD4ivg1pM6c1sh/+wH01tB6pxUS78fcH/dmycayv1ZJBYj6s++E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766688834; c=relaxed/simple;
	bh=kaDAPYBxYwIsUnPiG8bPmkyEderWkt+GAQVjeGaBdwQ=;
	h=To:Subject:From:Message-Id:Date; b=PNZd60m9hd14dRf+VtxZfns07nW2MpAYRwwX6eH+FJQnm9uATuwF8BFG9M+Zpba/Bs3U6+i28iF0AVJjFB83vvz1E8BxhCH+lPeb9E121SMKzPZlkJqlPjgbHcV6i90wpB2Riz9rOr4ueJvmvGxSSPkShY6VxuRq88VJffP301g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIayTjHT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIayTjHT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7534C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766688833;
	bh=kaDAPYBxYwIsUnPiG8bPmkyEderWkt+GAQVjeGaBdwQ=;
	h=To:Subject:From:Date:From;
	b=CIayTjHTrc+FcIC6iKSPFiNZFUv5ah+nQFx0lUidNlp9cVoOEethGJFHSXJwzTQLW
	 ELI/LnHI+k/cKM8Z3HU5wi+TcHkpg30bgoakFJtyb5Qf51Kv0ESImK+h9ctdfgl/no
	 pGnj5NG3dCZIIFhcXuDtY3C/X3ILDPQX6JY640MQLbCM0PTR4pX0r3AmAzlKQL3otX
	 7vSbB4YaugTEIwNXSCwlh0LGBaE5+RD0my268olOnylRlIxyl+lQhJiyqCINEbuKM+
	 i5HauLZjV3PJiFgQHGXblKMdVQRYzCCwdThin9pIoMJA7QNRuUfQfUskCIUhUu6Tdd
	 RYADi8R/rmDRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9728EE7AD4B
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176668883359.15120.18269391947352413680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99ef687d80df7b2429c8f4d5affbab695f8519bb1042ee3005e1f5e354041107
Date: Thu, 25 Dec 2025 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766688833
