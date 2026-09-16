Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 799993D813C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 18:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789581635; cv=none; b=R2+2Y0P2iOMOkLuzOLh39vpM+Tystzdu1uVrEUYxUk1xK+i1oDdquojPk/R6u6dexAY82LNpDtJaVIpXIoFuRwkZdi12qyba6hW1VkACQIY5asAcBJRMwhP2eZPAR/tQydGsIYHwU2B7xm+tkeC/9tZKlhnk8zHZ7Rp21QtMBnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789581635; c=relaxed/simple;
	bh=GUgSW1Z5aVs3rRtEAmHEPPc6OofE8byqtQLV0dwE3Nk=;
	h=To:Subject:From:Message-Id:Date; b=UCwJ9sZTls72ppTPyIsLHSVkYHBFHFCTatZbeQoRUDAjdTMvZl1JQwrQBDhol1+5HTrN4QT7/emB7ccZ09gozuLVXE/a9Q0a0IJwa7CsHjm+z8TqwzNj8Kwv+jm7lCP48NwBKT2Sd+wnbJiOzbF182Jj38oFv4s1V3TM3Fr1N/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWkvVIKf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWkvVIKf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00B81C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789581634;
	bh=GUgSW1Z5aVs3rRtEAmHEPPc6OofE8byqtQLV0dwE3Nk=;
	h=To:Subject:From:Date:From;
	b=GWkvVIKfk3XLUA3dd0hth3iCzVRVme8oTjgwMMLtPA3ob0k7xVV58y1KoP2FpuxYM
	 0WoxcCmC/V9J8MPN1kYWdW3jMbAnqJBFKWawJH/kTVgU9kFsZ9e70jbLiqxrDXIFRf
	 ZyAYBtfioMNrrhQlgG8eZer0HRbWsDwi7UV+4LVb7yUhDxxqR1UnoHMaS8Jym9YrqP
	 62CmbaX53dQDxz7XP8rZBbgv1ZB0brcMWE/Y7Sto/dg0y2MFCW7pLl598OOoLrttMH
	 3VYwF3IlxxaZse5XDTiyVwaJSW3AtejGja63Bf6X17kkuDds9B32C2Xi8SCXcIxjS+
	 GtJStxCEAFkwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF4D5C982C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178958163374.23116.5249706533906754439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a119166c85d8f0481fa1f69246d3a461e6d283f5a46e06ffce37efa600a983ad
Date: Wed, 16 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789581633
