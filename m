Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373074C81
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757378394; cv=none; b=GsayKT1oyE/TUYr5pkwG2Vjpx7+SgmcDOnMkx5pRNpnM7asTkPbXrmOnRb3EJ4zG3xP++tjkiAZafzEEX5ZCfZI8mjNLvOu2P4xkHCwV56f5R8i/DntMWcBbLR3O0zald5bTVymVGhOydc3cpfCsOBj0SU+sxATR+cr9Vc1sfa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757378394; c=relaxed/simple;
	bh=dbd3wFVMhGb/3t3GDqaIQNyvsCK9YDi1g8Zv1zwnx8Q=;
	h=To:Subject:From:Message-Id:Date; b=fIpCASh1YAR6T0DL6Na3j/izCCEfTIM98bPYeXQKyagB1eUo/xo/HAKImFGWzeD3++J2Q7z1MQRBJaNAMdbu19u5AQtR5CN1nQHTfDSsHhgH8mAnwJOnL7p17yDmaQrwKBb/58zmjHPe6en89Tvma+6ZgXhPGRW2ME3P2DZPaRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+D8EXZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+D8EXZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1034C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757378393;
	bh=dbd3wFVMhGb/3t3GDqaIQNyvsCK9YDi1g8Zv1zwnx8Q=;
	h=To:Subject:From:Date:From;
	b=V+D8EXZmcDFIm9IAyHVXDbfgQ4f/9X3HQljNxB7nUGrSQwYcqR6zN3dVTaR2zTuj6
	 glFZnDH1G32NZykuqVx3yb3fIDqZubUzdFyQdB8UuHKlNyq6arpFC6LcAsAHu406Qa
	 3QdzX6KlARYD/u25IIR6bmVCo9Ij9KcMOVFmXN2fUaGK8d+q7vr0c3W8mZbXwGwE3o
	 Ffu85AoRIUmhe0d8luD0gpO4zol6gniHb/KHEAzX+QhUPXj2Ed7Idk0DFYEQjAo+Zt
	 SCIYVUzf2Qd+JqcVWz3DXaN65fWGj6BTzQDn4PI/9JwiiXmgp3yA2FrWGp45RVLNNC
	 nOxxsUlEJN9Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F37ACA1016
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175737839357.32752.9320055863478325364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6ee78eb7d58f86f0c380cb92bde0b5e0aa8ff032a2ad82813ca8b4fb2452b97
Date: Tue, 09 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757378393
