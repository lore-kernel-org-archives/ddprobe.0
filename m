Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0A614E2E2
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 14:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741445934; cv=none; b=KDFSaxYok5BaO+9eBg2PEJ9qNu+buA7SDaaImInJfPRvEwnXkI9q0yRK48tCiLrqG+S+dcLB+Sr5+WyXr2+uUpOikPMii61zYEBeSNg2bwolJqrswwIWCB8M3NDq2sEfmDWQW6+YQqNqsS306jYf+Dyu/LTxKqCFVSvyXxHov4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741445934; c=relaxed/simple;
	bh=qdzyPywmdPtMJxzHJcJwZuGWoxtDKWINTp1uT3FJmbY=;
	h=To:Subject:From:Message-Id:Date; b=PBH5Si3YoaS5H3c+lMkqLKh7LTGbICLPDqHLKdzbKUw2PxxFcSuDBSES7xQensNFCppn4W4P/8l4jDmxFChxAntVDNmySP1z8yZM6Dsh69nnts7XPmmGzYzHM42VoOgWoPOCT1t0WgGF9ZFAZ0+UT3MKKF+HaGq42bFLPT/uI6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pRvV2ndd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pRvV2ndd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B78C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 14:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741445933;
	bh=qdzyPywmdPtMJxzHJcJwZuGWoxtDKWINTp1uT3FJmbY=;
	h=To:Subject:From:Date:From;
	b=pRvV2ndd5mXJ/9b/2nK1VffMl9u16f6fktUh4ID0hXPyVCy7bulsjgBZwoJL4V8Gy
	 b3egjiQUbYF1+c7Uil33LbyXbNuTE2ZYV3HW2fbQkcT3yoDNixnDTSPQgsGlp3N7mH
	 lbBwPi003Ba06Ojz7Odiu83Np5XailOH6Hh7iAUsKH5h3fYTssCeK9dHLOd/nfrNRL
	 L6jDqKm55EYbNw8Y3LBIqvgUXqEQChv1HtF2c9o+nLvlrDL+/JZO1bfmdfnTFFQ5bH
	 fF1u7wMFFxsMYGI8gvUbIH05eCil3ceKm4a7BAmuNTiv/F1aoyz7B1SFXEbeAXnQeI
	 LA6OTqNF5KVIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C48EC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 14:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174144593360.5323.1967124536750262068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a036365a4b4e52076d7c8cfda0efa865180d170048281c6618098689276525a2
Date: Sat, 08 Mar 2025 14:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741445933
