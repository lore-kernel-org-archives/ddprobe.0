Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE804A21
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754855394; cv=none; b=iEeu6qmdfGmuYdPByaIfmWLIQ0UEve91NjJkp4grGRQ1PPKK5XbOcGNqmlBreFKlr8ufFscwe3tlk+IwaqmSdCBtR+7zKUNDPPETnH4PkSeuHD/ltIzVzsHO08oTBHt1113VQFQY34+9ArgUoftKQCpVYJmRhEuGA1MV1V9uRfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754855394; c=relaxed/simple;
	bh=24dS6Rb4Y+G2IWRBKT7rkmc7QH1hukm6cfNTej+1ing=;
	h=To:Subject:From:Message-Id:Date; b=CU7GBdGKWx29cVKXV+zmClgjhc+/sRrgWQ4XNq8o4h2ymqRlFm1FE6glVBboyNHLeMHjGmYU621Qpp8Dt8AdSzLbV2OiYZb6wLlQfJXYBsBmV77lO/1jBwtbSDfVPIdPK9hNJK6wyKAVZ8vRVZ1zpfsLdfORz/F9bkAGnDtAeT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhuNc63g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhuNc63g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E07C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754855393;
	bh=24dS6Rb4Y+G2IWRBKT7rkmc7QH1hukm6cfNTej+1ing=;
	h=To:Subject:From:Date:From;
	b=dhuNc63gRMwEZT/+2SDZhNA24lBM/cwgneNdJGPVkYpxxTava59Jag/TBEE7gq88z
	 QrBtd3wpfVg0B23fN9HO4IpulwhAPVKztoWHy4DGvFWHE8YSbiz3MsSbAsZzTrVGHo
	 LO4jlr30i7TcL4b3fDswYSVJu1Ugx6aZ8Xnk+QcQyTw0VCn13z94UJeR4QEWqfD0YG
	 N5leI9npftofeoVWdmpWTdX0rkowgT7qn17o38R6jhczkjahpuM9vJRIE1G+MIfhCX
	 UgB5M6Hq1NS1a8DUsVNm4c1DV5dsbVDyMsqnkDt1KNmSRPKlmpICNc4txnqI5OGQ28
	 TMGRpXavY6Hvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923BBC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175485539357.1204.6377306813341310724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b963669a97f70463076833bf797fdb74d38c15f1dbecd19eac686e6d29bfd7d9
Date: Sun, 10 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754855393
