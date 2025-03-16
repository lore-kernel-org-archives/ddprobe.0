Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451E2199E94
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742117394; cv=none; b=GwglNFxk+CnYXSdFfaVnLbgcFdozHP8SMKRecj23AdHy4nPgE1NQT0x3Z+fkxqubzZilI6ceInd90cNbVCSzmYAy6rtQ1qeOwEWObRGOB34vI6E5Qv+I7DiL/XngF9Gs9UL48mdoTQv2PKmHy8tdKch0IEv0xufdLD/NDKl4PdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742117394; c=relaxed/simple;
	bh=lHZt1lLCnlIbm4zpaLxE13nhufQ8Sjr3sLZR4zgliA8=;
	h=To:Subject:From:Message-Id:Date; b=XNj4yAdJIo9Ny3zdiF6eozWzCaxfmNu2V/Ljsm9i5J2Y4i3/sTixXpHjqkf7drikZaGnUnVNF6azeMDdE5ZTSSHnK+w4f5aKucATS90LQdFqnQduDCzXquynJ+m4DwXQqYJWe0nOoZ4WiA9hXC+Sbf3IbthnAVRxDS1o7Btfong=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQVxZcAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQVxZcAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C62C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742117393;
	bh=lHZt1lLCnlIbm4zpaLxE13nhufQ8Sjr3sLZR4zgliA8=;
	h=To:Subject:From:Date:From;
	b=hQVxZcAjm0CzkqgiSrZzgUsji31Co5F8hN1VqaTzMmgaJUctoJ83bPhlI8nOEPyWN
	 xeYg9/kPBymIAXuaJ2WDpfWikFUVZo6py80K4ZEGkH9HFz0DHZHkuQd+HdUmSSGd7M
	 eMWN1oaLYYdWLCxiMT5XSZZ0HFm+vjPLRqd93DgOpSK5r6CxPfeSMKF8k1GFkumwEd
	 XQ4MzAyfOgWUmnKTcLSic/bNJyp8tpJHGS+hKtIcaTsJ50HAD3Iszxxr4GDNEMdNL6
	 O3bLc72qpJwj5VMCcFuhu9UfPoz64/HqCkJQS8qVQuoMY/O5LhZE5E20Oxb5koQO0P
	 ta8P1haVoHAUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C1AC282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174211739361.16181.10721270053921205064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a711c84bb3cc23f81d1e1ac598db7f63356b11cbc7294a4fecd04ec9e3e42f57
Date: Sun, 16 Mar 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742117393
