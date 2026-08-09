Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCF01D7E5C
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786269634; cv=none; b=fw2/+WzpREHJM8+VY2tHuc1icvfDQ0SMlxVmBslz2G4JqeWSM/CsVzXhZmgIbzO66QCFt3PigRQB2SXBEdD3Czed3B9qhwpwgispuN2+XM7uGEZfZ1FSvQfboUSlxsKCdJR3QANCFdnZxSMKFqSnWUlBheeKlOrEXJ2KqNpUvfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786269634; c=relaxed/simple;
	bh=MgOrb4vRGSA0Doy2JpsUK85KknlSXA1HU6cXeSBMbeU=;
	h=To:Subject:From:Message-Id:Date; b=YKTezufoLcD+X0B3vaaGJR9Vg7yO1qQQRbV6I9rnAo1l4J5DgOiTiuLLEDC/8nUBsIElVdIIbizcWcquXRVPe6mctiZStX5r2iWrd3Xg195aXK08WCf33zmCD3wXp4FwDfMvB+UmQFADx2jifSR5PA4V7NDsCrsCuHdxat/BFc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hwbHajeH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwbHajeH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D530BC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786269633;
	bh=MgOrb4vRGSA0Doy2JpsUK85KknlSXA1HU6cXeSBMbeU=;
	h=To:Subject:From:Date:From;
	b=hwbHajeHVVMIaevQsQHGZrM2HjXeaVRGLat86rk/W7WWQfMZSq3EgUlRDpoISPBgN
	 apMhShq78H7SSZMBfzVwKqK6feYVq/zUzHFvml2uh8zPF+8TBVypgYZMJJcmTroRw/
	 eN8zLG7azan3vnsMLpYn97ZRQr6/mULA+EYiqRj9Cg67KqmiNXBkAMG4Xtto56LZRG
	 ctYNN7dc9tUWOFswFFIn6zZy9AKMeDTfqI7om/uVT5j/+vBV0gX81t4YNA2/ODz7R2
	 PCSH7zl48F6ImrNoJE/hCKiauKhglQDxHttHhkDmc+pWXkMi/UtJAIG7gnyMkvcXxD
	 XuNTd8jUD5+Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECE4C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178626963369.17787.15875222832445046255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dce1e24ed4ce94951727871d3edd135f3e90ec5dd954c29401fc19674749762b
Date: Sun, 09 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786269633
