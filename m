Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 846AF45038
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788675634; cv=none; b=P3KV1cya4HRsTwT/II3coNNMnC/BsCbSQqnM04jiZSc0lHJBJuSF5I8044TiJz73rRat9SKV/nntTFGha2U1u7PIAN+THUkDIjLAXevpFJadiY6RNmIBbcyjT5rGNAtaOQPBFqEyWadpK/BccaxaKdoZLT7kTdoUAgGXoMEF/24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788675634; c=relaxed/simple;
	bh=ouZz/rwj9JLhPJ6+PXqjPpRlQZwji5HuIy8Y1v235ik=;
	h=To:Subject:From:Message-Id:Date; b=ZPrtnc9lsUb/78di/osmtXARILLUE1dFfRZJxHB/apFPKnnoFxOGh0g3o4mvQgJwBYYKOjNESa/IrZRx3nmBrxrNlLF17Uk9lCrJ6LH6Bp1f41zR/Tx+fJnFouQf0c5Ae/M71eg+S1JSUqW8qV2nX35BkUSuqc2EIRodEzVq9gE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWCAEqyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWCAEqyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE86DC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788675633;
	bh=ouZz/rwj9JLhPJ6+PXqjPpRlQZwji5HuIy8Y1v235ik=;
	h=To:Subject:From:Date:From;
	b=tWCAEqyZ8b1LXsV5BcTj0WCLZwbFv5BdhWZNjd22E9jGxQEJ1Ed7gmcZfEikK9YB5
	 +u8Go1LgTIjUx2PJ44NTOHtT52XILtgCSCaeLwiAWM/JUinOndf0Zovx82/2ylbxn1
	 aXVih3wpp+x16qy/g2+jK8uDKvjAibx405JD9m0DVQy1sU4Q3LOebxO9qqeuS446Wa
	 EefVNjhltPT4Ceid5cYKCV/a08W42Uh1eHdkybGnf5yscGcBJImSkOKfU1NG6HB57s
	 qZKWT1yQwb/uOTT6hPUzfXr+u/DR1JhuoJu/hP0wGSdb4Youd8IFffDJPcLs6AzG4p
	 Ev22rEdPEstug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1C6C79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178867563369.18895.2116302666254329986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 294d03e0e8ea844a311af80ce6fc6d6280ad2596fdb672a017da10426a5b775a
Date: Sun, 06 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788675633
