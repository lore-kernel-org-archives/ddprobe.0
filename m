Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA4F43B47E2
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788762634; cv=none; b=H1v1itGoSyniatbzNGFDjeLYurR6HnkDe4BpxKiN6T/0RzR0GeOGPtGKighWHL07UJrrrgvI0tYXXBEreHJtPKJo2/kz1O2Ga7JUybJg2mUC4FeDTA8nvxPF1F3L5UcxR1OUEUC6vJSvV2boi+fGS9abNMuNVoyFUm6XayeABBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788762634; c=relaxed/simple;
	bh=MDf875jm/C7StVjSd7C9kFX4RA7BhzyA2cQtCTerJMs=;
	h=To:Subject:From:Message-Id:Date; b=dcc5tYlJitBZYcdZJ2usejk8B4PSG88PPz9YKBjBhzHcwKb8ghgQ3QXboNk73Wp4gQC1g+wYqk9lVzLSwSWF20Gh8ZetxrFF4QZhvqLOOj1mlVQDnoqVQsqjMvtO4hkby+Rn0uNLSeZs8BOwnHQTMd9SS8skij8suDMhS2jD3+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMZ/TIIA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMZ/TIIA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D108FC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788762633;
	bh=MDf875jm/C7StVjSd7C9kFX4RA7BhzyA2cQtCTerJMs=;
	h=To:Subject:From:Date:From;
	b=EMZ/TIIAEZcowWx1vJLaXhXuovXG9KO/J2y2OE7Kw42sB7yOAl3KE4zbjhk51eTE0
	 HqpKkLzk14JAa/LS0tp9JqYS8E518odRCq/uST7kFJBnLepL53CKUFSQcrWK2QpzOF
	 8n8MSEcbMVKggEstkdjy69Z+AeuJJmEL0ViSaqwgGZsETlQrr0Fk/kdlNUjQtZVQx3
	 LBd3Z8jmLTyMEvTRLK1WFzgqcszUprMfURnMYc/JaUQUoZReM//XmHdvXrJeGFEhDA
	 /OkHqi5OWGXJHiBj9bMWxg6LCcRwkRkXHceEeH9waRwD3lalfzUduxVRmDdeMActyu
	 YucN8ppD1n2jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF49CC79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178876263370.20913.7691686084348660012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c333890db9a3ccd981e2c815e454b1c9044f5de2fed1765240f258e3cd3271d1
Date: Mon, 07 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788762633
