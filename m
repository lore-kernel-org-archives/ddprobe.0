Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D08429B78D
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 06:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778482234; cv=none; b=cMgh4iFjQXtwReTuCjvqPMAYbBLxhBm3tDL7YwehGkt7jKYLRk+P6CH5T2Jqkgd1Pa8QOb197aBAd7P8+Gizedg9sh4+iwcfOxrK/1N4XvpKY9SGlXs4zZeSSSwNahCWLGFvmjZuY5cLduutNkvH2HwZjlfY8HrAxPPHsNYuVp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778482234; c=relaxed/simple;
	bh=vB8NCdDwYfC2UMytgEXnCWp+1X0FTQpKure0fMzA+Bg=;
	h=To:Subject:From:Message-Id:Date; b=PoKSZsiFJT2p5Ev5IL+IfJQ+Wat48t8kiTeHqlmBZWOQQo2qStD5PBXmWJKEB6iI8HwoAxZkFzy4WNrQAA6oTY4fPeFNN2x1TiAMtqnWrEVBsio1AAF5BG8PjcuforJNR38qSV8GNdE9vB1fwZyk9vXNi6g73EWahfTY6Rg/cTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VY9kh6Nv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VY9kh6Nv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C15F6C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778482233;
	bh=vB8NCdDwYfC2UMytgEXnCWp+1X0FTQpKure0fMzA+Bg=;
	h=To:Subject:From:Date:From;
	b=VY9kh6NvwCOuevYRxiFkanxWFLuZDNctKt4X22p5ZHY3jBEh+kimjPNYhX8nedaV6
	 gF+mXfobySCqoTUtCf12zRJ1BLE0CoNgv9G5YZ49ssEm/DF/enP5nZrMUM5jIUkLQJ
	 BEZdEgL3l6FRgnpykJ5iE+N9yZzPeH8R1VjZgv7J9rnLOh88T341CK+3ZJZj4JjKRz
	 DIEzIT3642lNwtPFFO08w3MtPZEMEx3KRKOZ7bxXxruEVIrzF4qTbGzFfE82D3kxJo
	 qTk3SUJr4VT1d/Qt38r6K4zdng3oesAUllnVgyBWxHHTh0WM/IqRJ+1/fJomUV7mFl
	 cTyKwwQm3DuJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF948CD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177848223368.6792.2743435801092834403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d8417a8026b55654fbc56e3edde3cc6b593afbaf59dc549f8ebf67717774e3b
Date: Mon, 11 May 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778482233
