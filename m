Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3182B2749E0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756731595; cv=none; b=QWk7U5NJekeTWZQAyN//WkFA/eGClj+r2T4Cz6BuFzjdmENv3e6v5nlb0EbaiHXO905ZWpIbjp503Q9eJ0CD+El0RsDMy1BzdXoVFN2gzkPRQbUUJv4//PK66DUmQSOPEODq62yFr7z0R/fHQxtdz8DJ9StK+0l4vNhYPWWg0Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756731595; c=relaxed/simple;
	bh=yrAlmxzzGBQ7pc1c6RY7urolCCiBl+YNZSoPFafAJXE=;
	h=To:Subject:From:Message-Id:Date; b=DDNe/mNJkiWFmC2S6JDekLyiewLBGXaikyySr5kR9fJMZNbn6j6hPtEYE+gR9TFomDYlG/KQFNMdIXkjoYFMtDvaf9SnXegMDHHg4eLJCaDhNnEjGUDdtTm+xtpjQ6Ai6FzK3lNVhYCzR7nPVTsihSzVcJem8rbweMAAltXAoHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVHxAe5x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVHxAe5x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2588C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756731593;
	bh=yrAlmxzzGBQ7pc1c6RY7urolCCiBl+YNZSoPFafAJXE=;
	h=To:Subject:From:Date:From;
	b=jVHxAe5xaVXqjMNKN52LBgbc3Gn8UO14TNn17AtHbo0gZflpENI8j12simjLbHrjL
	 C0Aozw/BUqRmGM07vHdE+KB8MN0JsPwyDt+9EdUZ3xBmqnDilIc+8DZhEcfRpPaGZU
	 1bXAGJru7aiNi8Bne5O9EUoxgnh8ym85mjNsvXFF3Iv5ZW5QoHPgWtdzM4z7Fmiv8p
	 EFzUfTP6LLINrkVpVNgeKYStrg8OFuTIa2uxyayRR2kfUaSETGU7p9GSW6Ct9+hykW
	 ByQjUUwHHEyiHGBpAe0AS4isNF2jgDjvOvnnskoLaq8PIOzQx85q3CIx4nWuTe5wZo
	 Oeuzcnt/2PIFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E761CA0FFD
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175673159357.20512.12075941769424294446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d9c2de0721c3f328aeb54cd20e1dd846fad46250a4eb99b7a1d4d2564950f4a
Date: Mon, 01 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756731593
