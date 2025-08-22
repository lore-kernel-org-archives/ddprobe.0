Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207C12C15B5
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755880194; cv=none; b=cqvNMs1Hz19H/E/rKm2/wLMrerpAnYqmWqaioQEJ8YY6ftEfbJcW15LP2ESu+GrL4Mo5sizhH4zbRBeJ/YBmxAsOnixdmPWGaR5vabkO/zLBqZ0cOQwbrajCqoEDVeCHGx4a06o1F0rPL0zlg/J/Dfnirl4ACKflXiIohrzIWZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755880194; c=relaxed/simple;
	bh=8Lr/vr8FlfqM5kLQ0xqvaC2kI7nTfsd6NRtHSeocuKU=;
	h=To:Subject:From:Message-Id:Date; b=drU/3EbFsSxAycqd/M4g/UftYLc8Z0Pnt1gu6BkPJNh2fmgBgYKUO8CFYDDGaZi2Tf3uGW8XTjtdHI15q2GE0u3Kc8n+pHqqZOgxlWltkXIVyihMj4rPeBC0we1fe8GkCNr0vqwDe+SmNkwVw8kGVEc8399MhGZyoZUsxj3qYQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2nI0ziS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2nI0ziS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CF4C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755880193;
	bh=8Lr/vr8FlfqM5kLQ0xqvaC2kI7nTfsd6NRtHSeocuKU=;
	h=To:Subject:From:Date:From;
	b=A2nI0ziS7lJipDAPtva2FOQddoq43wvB3f+0uesdz9+z9+K1m3XMmcnSq3WNacCkm
	 prVTR2U0Twtx1RGSCEXzu0JBPOAlKBq9Ubyg7A1DY5p3c0oRm95sA1iXLOy/aFX4Sw
	 DCkumOARbPlS23iw59Mhfxy98pJsung4/2G9TT0Sx12eqGqN9u4i3jVecU0QatheEe
	 k7vtVHmNeNa6FSPJMCNKHFBlRkHnx0Py3s9yAKI5OcLFglwhr8hHP8TUZl1aRe1P5c
	 hAdeCC2u4m7cxnGRM2Iuqe6f2C3DcvDlxjdV633ZbHFxyFo+gqdUVdUXFKe2VzGT1X
	 yw8N7w1wMrtMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA38CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175588019358.18081.17383165046487991236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e85deb33e748fca24f5bbc3c430a607f458459e433d4b2a2d486d621919aafc
Date: Fri, 22 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755880193
