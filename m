Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E51FB3AEF3F
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774275294; cv=none; b=jHbITrZrU+tSDvSmvJmFKZIQCfK+Hmw7pu0a1uMdlc97BC35eo9qpwuHsdE9HkJqpAQjdgfCEmdofCnJ826oUM+Z9CoD/ziENHnhTaX8QM80fu+GjVHsHGekOeI+/mVgdPZSV7LO47xznHcx2IZEQyzDZcF5WgKZFf8JO2lH3Oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774275294; c=relaxed/simple;
	bh=2D86EsHV1D9xfMRERRq4xjaUsOLlA7tqqh15juzyUhA=;
	h=To:Subject:From:Message-Id:Date; b=IwrZ2mEB7Lr0B302SwHGKThjjHzVweKijeT7oSTL11OmQTVIKrhc/X4jQhJ4jyTFhyW8XFlnC5J/jAQy1bCFAcLPgoag5nf7WwgNagzW1uuamT8AKZ3z80CdJScX2Ly0TwGwaXEfmJZaLaZ+4Yqpv2nX0TPkwyJ/SL8CEcnQdKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQ4+1OpJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQ4+1OpJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A899CC2BCB1
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774275293;
	bh=2D86EsHV1D9xfMRERRq4xjaUsOLlA7tqqh15juzyUhA=;
	h=To:Subject:From:Date:From;
	b=RQ4+1OpJ8pWWTlShX2jm3a4qoadrPtuA1ugGOcHilWJFrYRkGUQwsQaKSwEfbPIYW
	 LH6NwG6rNX3RbgVawQBWeA/3rSuEeO5+iCRVNNmN6F+YzfRowwwKeweNqoZVVdQJRU
	 KMnKsuwKCTYhFrzNE2HowaM2hU3e9F3H9h8JpKT/9SZjEsZS/43quaItpCODM4BhED
	 V8Nx+tYLLpt3He1yNNPoEbwCSOphLpMLfQxXP/A4Xq/AcQbYjgiovHznUaIoZqlWpF
	 PHesm94t5nkDa9c7EL98caed22O+q8feIonRjareU6sI/OtgxodUp1XbluutT2IMWG
	 Q9qR83F+IiMow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AFDF46129
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177427529359.24095.17683312315022690434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da02a183e6130daf189c1ca7693343ee5f121085914a1544b830326036a8cad
Date: Mon, 23 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774275293
