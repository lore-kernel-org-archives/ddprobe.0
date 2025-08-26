Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C67D199939
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756221594; cv=none; b=aAdwGC6iFiXG0p+iIl2xDB3ROqyCGfAtDmKUXuXy+9x4J5UPxKZv0srUwP15BEOCBs6GxiYpHKG4XON01yfIa8vTQ+KLQbQb4lGf2kWG1sw60TqIEfwnsvoUkFjLAUdbWnShyBzpxzZVnr2/0fXCn23C2yLyqg9KAshKHo9E/+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756221594; c=relaxed/simple;
	bh=IO9j49DZd/bj6f7I/bFK3bAr1k8pjY0wS37jCtuLmxA=;
	h=To:Subject:From:Message-Id:Date; b=qRpCuQDXQvliZhhOgDBmncmKPBM6sumXrhfLvQ+Qom1s6fyiTZzMwtdMOPCqSsumbZ7PEt9hEmbneGSKVo/Bm8lmY7qoSMkwF1A1nAkHQZ4LjYSEQ246RB1x/mD5wmmskDPH8PBeT5B4G/A20PnS4H/dL7KZ43GC4bzmCvQly64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZ+SKeMb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZ+SKeMb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF4CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756221593;
	bh=IO9j49DZd/bj6f7I/bFK3bAr1k8pjY0wS37jCtuLmxA=;
	h=To:Subject:From:Date:From;
	b=nZ+SKeMb7qn0ryZlJt+DZ32gKGIIvywvunxPAuGTI0ovbsPMi5fDffNV0cZh6m7jr
	 IA/CKwKSqSPMO+Jwto9vKbj+ZQjBaEqCUDiSp5WoLeEyyhMHDpzVhyprcMreNp5gTX
	 41zkSKUCWM/FQ40zjD5En0Bnb9xgWcwemDQZYS4dWCyPtwTU+vM937RmryeifsDSH+
	 dLd3k1nVAQYzXSK9aTmOZUiVW3u/4uLHuumQQXNTNYBwACOKMonhLJ+Vp8V9rQpkHR
	 zOc/tmA3/Tg6UKAAhli6qSSgyyc5NyIHoBm3Uv6GzsFNMEgExfofuUYvGu3x/R/hKs
	 wDSkM1hh0Owtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C4CCA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175622159358.843.9461030060436042945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a242e1f627fbacbc2d63398987e4330573ee3deb2bb84cd45d93a2f70c09c651
Date: Tue, 26 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756221593
