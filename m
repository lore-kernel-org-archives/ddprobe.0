Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302E13DBD49
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 12:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783687714; cv=none; b=Li1ljddx9fj/pBIIb0xzPjyCVFeOra5/4tTQRiFIkVOTcKyyiPBoOqs642fmzHHz2xGWf2UZ0qJZwxvkOR775aJf+FH0Yn+gbhD2CM6KzLOSaIwWd2/5gS71XuFhMh+KvwpV/L/XbLjIZfW8SkJ50rq21bEoh3waetV097LDFFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783687714; c=relaxed/simple;
	bh=qeP0cIeDsohT75Yx2M0n0YuJArmDN+LGe/ePeZTzNWE=;
	h=To:Subject:From:Message-Id:Date; b=QyY2ACONjq1wz1p0SPO868zdqni+bE90DYoAGkRQx+QUz4L9SC3RpR24M/QCv/JGX+ywDBGPfwbHRvlKnFeqOlxmhC3eua4AgGG8Z42xpDDfmud3YyChUPz74K7Lc5FfO1PZGGPtt8mKzkJAXMmeoTT+x8K/SVECro/Q46MDi+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gz6H50F7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gz6H50F7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA19C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 12:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783687713;
	bh=qeP0cIeDsohT75Yx2M0n0YuJArmDN+LGe/ePeZTzNWE=;
	h=To:Subject:From:Date:From;
	b=gz6H50F74/UQlKvb2elHpRCjL0AEQ7VVuHZ89onmiZf/nQkM5t5hb8+fE3y0pstC4
	 CVHx8KHKTdJUUPpMm2ZMwGYfc6sd5B5AkxUsZgbZrIfjNbDJFg+3Y53UuE8ADRujvh
	 nF2dMd1rkigE08yHNdpIupAUKfWT+r3Jur9BF7McAZJsHbY4Tr5o7z6LYd7AcTK5s6
	 RRfLCSJA4vzkGrf6RVWdwzTuVA2dvs/RD8iwbcHQAVFaSFjnu9LJsFd4ZyQnUAkr1J
	 6CLOl24mw1fjaj2cQFGZeDFEMnN6926MBhOvlTJBM/CQHaIjfa7pNiVsMRTVqkmzjQ
	 QVznpdS4c0l0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F1FC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 12:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178368771368.21158.6876201536445605655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df99d2b7947476e0d216d4a79eccbcba0b457ebc488a892d4f59efb74f0a142c
Date: Fri, 10 Jul 2026 12:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783687713
