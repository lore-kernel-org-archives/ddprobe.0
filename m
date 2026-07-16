Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364B7374A14
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 16:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784221115; cv=none; b=qGN5nxBgfE3E/misgFKnDXLCz4Lazw5UZZJ4/aRw1EXNCSve/vVRctEh9n/rwS/XW80zfOO2tuE031Kq3vK2plVIGvzn6NBSm6J5sGbvXfG1brGnp1eHkJ3qpHqB6n8Bc1ThvnsjXTnVhbLM8zWDBs0jqp71pgBwPcJXQ8YpS9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784221115; c=relaxed/simple;
	bh=quOUSINhYmOBR9JCFuf9VSJTpECWH8/6RBbnLVtgdBU=;
	h=To:Subject:From:Message-Id:Date; b=muP18RI6CylFE19YlcmV7Yzp18OFsrjUK3wV8YEnYh1gL9nPphVJLJYho1Cd8wWzXaVz2+2EBij0yubz4Wi3lbWqxlNniyUGHMLuv7qBqlIZj/td+RAUNU/S0l51I1NJAH1bahnb+gLKGw0FfgpKYaz5iK/o5/Wcs4EeVyrBWsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f457M+Uu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f457M+Uu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C97B0C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784221113;
	bh=quOUSINhYmOBR9JCFuf9VSJTpECWH8/6RBbnLVtgdBU=;
	h=To:Subject:From:Date:From;
	b=f457M+UubROdTiT5IRfMpFY/Y9i9i0TJnSZ60A6HY3xW2hKie/YCKRXnnodrddDm4
	 sfncu3aFKrau2Ywq6i13cKF7+Pma4VNf+tY14KYEc4Kgk/qn4cyqGfaPi47TrbmaLm
	 K+88xgtAhH5oJTjO0Gv4ncNp8dQOsepxb2R90iOpmKKWSpyf6kkUNyhw0uwAo/r0n5
	 iJN7QrMJxrbZEFfx28giG+LIaeAfV/yNZyAUWUzawgdDiJo53gqQ6P+Qvqc/YY6nlJ
	 pwzlT97LSsYsvwFvQ7VzN2akG4nQqNlObPIi6xSLQBG9KnYfNFGiYncJaig8voNTyQ
	 e88RyeCjsGvOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A889FC44511
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 16:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178422111368.18745.7713765535391557274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bdbf0c3d0e70d1eee14b71b67e48e0408b9688a8cbd803c8566fd634c01e1ac
Date: Thu, 16 Jul 2026 16:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784221113
