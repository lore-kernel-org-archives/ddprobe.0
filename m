Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2A81DF755
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749235194; cv=none; b=epFRRdRP4dvv+KeJ2GnzkkLx0RjU4Tz8nl+XEEtdZm+L9w8fzT7P/HSXnzlgaFX7ojlXsFQ3xNTLFGWsA6R1+HAtArzfud9VstOhUaChI8OKz/AtIaGqMd4QRQqx4TveA/m0wYBAXQHJRCpmj83SbQBWLH6pyQpQJtkpjZe21g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749235194; c=relaxed/simple;
	bh=hyNphWMfF17TIypkJirNOsmHyLdyky1TTcKxFrPxqjM=;
	h=To:Subject:From:Message-Id:Date; b=cfWDxmfpa5FE8sOZhKPN3L8sbD9zgc2LHRAINmKdObPk3VEfBsc2/R8RFrHN4nU1oLqAb5GkMEvvfFrIfQwBgh6lez2QEomglW3T4G+OXTI3LuXjhW7Pb3AH1wL/JazVbTCYTFi/4ZaUYAAFjgGeNdeNsUtti9F2EqD/sDIvkbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECcf1WJ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECcf1WJ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41A8C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749235193;
	bh=hyNphWMfF17TIypkJirNOsmHyLdyky1TTcKxFrPxqjM=;
	h=To:Subject:From:Date:From;
	b=ECcf1WJ7Ew0q0UL8Jp9CvSDkZv7Go6WBxiTbkywuVPxCDUZjTccMuXgd1eqfPDOSM
	 Zh2Q7yNcVS9vc2jxRaw5ReCI5NjZIYAbhEX/EKLohwsckSpV9lVtaFz1Ihe/DZ26hv
	 qvyYJxh2gYU5Uoqru6JtniIXfA1QEPGD78890WCyBJ2SaD0rw1hLgKb/I/C8dxXXxT
	 eaCtFA6hFmUShsbF9h2jwY5zdILeZfcuIIknz+df8f02zDnp9/Q8nTVIup5HWZNDZ3
	 1Q5cuPNbLZ8sd91VD1EX771KGUO2+1nPj/Oeh8nBziGYDTxAiOa7OH/+q/vpMr0CEq
	 Rvr9HLZDbWnpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FD8C61CE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174923519358.32721.18351673492708643392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e4c7b72f0fcad0f48adae4aaba40cebf6119442b10f8703f294ee6899da608a
Date: Fri, 06 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749235193
