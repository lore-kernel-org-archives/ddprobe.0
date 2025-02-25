Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2431CAB3
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 00:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740444534; cv=none; b=otN+/JEFI+eMx5X1z6X0DtZSEu/nPXJ+gyoSk1jM5USgLY8OxZRW86MCa1ldPB0aIzWJmn9m2DoouBXxdZU8XIScsmN9mFBEqQQ4ndsoEpVYtlCTU4Nxt+FAAJ4SqIfJbeqnBD3XLpXrQcbP4KqbEjvNBTwxIu2Kn6u8WkEbiGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740444534; c=relaxed/simple;
	bh=Sx4+rFEqpHuH1Rzdok9tvOMMQ9r/sZBuNwiiGmoE1sI=;
	h=To:Subject:From:Message-Id:Date; b=QUnv+umD6vC3ZZqx+ZfJXDiophPe8hfFbA7byMDkJWcNeQ1MIhCaqjqWRmF2dZlvHFZsrkB2ekBp3KM4AfXAHActMgrC9tgkPtzqo9PvBYsMUbhpWrg71SzDV0sfBgOO23DstuGjTgiJEI415k94ERNDlBBDWUuroDSpexVUcp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mE6zinxS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mE6zinxS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89DEC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 00:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740444533;
	bh=Sx4+rFEqpHuH1Rzdok9tvOMMQ9r/sZBuNwiiGmoE1sI=;
	h=To:Subject:From:Date:From;
	b=mE6zinxSVlndDe1XHe/Vaqhhq7jxScW2JZAJLF5XuJxXF5MsmJ6fj2FiCKa0zFzs8
	 mSva9ktVTh6JLBfHn0g8ANRov7eZXolZDJW/KCgjGLEm3lpVYEmZPvMUIBp0/FRHyS
	 XWVWwiBQ6yoP+JnVQAg/ule2NOOXmmhuhVPJgQni/tTMjS1JiEbZSEO4914PoEWpex
	 gIsL4t7azaZg0REnevcCJpaL+iz/3NHG5MXcayRSieZmczIVfdA0b2qNy5EsPfB5fW
	 2hCS8I1oh7Vd0BqAqJ5xHE6qvCOqTEDs6XKyBFcXlzyFhNSt/82z3lw5fBKlD2QKNn
	 bPVkQrfqDH74g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93135C021A4
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 00:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174044453359.1982.2410323892319680710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f5a04a034fb2d54d42aca6772fa3fce56e645cf17193c9344cce8a7266521ba
Date: Tue, 25 Feb 2025 00:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740444533
