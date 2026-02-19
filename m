Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1199430B50C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771529694; cv=none; b=DRtstTxrRGZ1rApdzQUZMTayTLkKGkCxNjPXA90O3xFd7Ev00dejXW56pZZ6yEHy0qVZTZc7QcApe5cDzmH2KJvTte7shZvmwG/ZuuSlxHjBXS48OYZW6mO5IEOsMIbVMePDE4/AF6pLGYoto1SjhjFtn+bb9+576DNcLO6Mw6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771529694; c=relaxed/simple;
	bh=T4X1/oOpZyeBE5x6X72+mKOwavdzS+nna7pPq/AUZio=;
	h=To:Subject:From:Message-Id:Date; b=ZAxmUxIt8SEXrhYXgAoH1EuJcQSE7TmLGvtp0IFHih8MS71jmECyDNzKMlNY+vUYOTOZXJ9kOhXt2OWG0FtEDUOLnt9HAzW4SC5I8ZiTpXYPV7vYI9d3kM8E+Kxl0c+sMPhWKbL9wLgUzUnN3MVaHyWmhtivlULmPLDC0Gg9prk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBlb6FHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gBlb6FHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94BFC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771529693;
	bh=T4X1/oOpZyeBE5x6X72+mKOwavdzS+nna7pPq/AUZio=;
	h=To:Subject:From:Date:From;
	b=gBlb6FHVQAt7qJKeM/aKuPLwIP7Pg9gtt+C1qNSgsFWt+/0SldtKes1qiajeANPJx
	 jZ0p1bfzOdjSoKxNiiWciUaa91ma/1haLz82M3NAAwKgFe20M3b6t5PQm7Zv+GRWzs
	 dMiWQZ3rp9b/SkNPhk8Z8hWb6jClaez3pUP2KbXJzhL6IO+riXEgU/5+lOpV7yt6p+
	 WGTX/O16xFyu9ghWjNSYjMqPXdR4xf8WZpCq5Qm1O3FgPV/7V0Q4R+3xkcNX7aORMm
	 IAQUF7L1F+tyGbaq0IqFY3XxWdbbiVxr67+FrM5n70G6fc1EFlmxq6/u4yz+UTEbEq
	 jiIF3cH6GguTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95026E9A054
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177152969359.6572.666827237553322130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a74126f81eb5585028eab78dc1b93ae95a5f16d7f425a1b58bac252972f3b7cb
Date: Thu, 19 Feb 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771529693
