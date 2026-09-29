Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3860C54DADD
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790706634; cv=none; b=VnE3kItOOvhtruA/nSokBsDzyTNMyksB1KgCmtR8CA9oRqRqbwejYgEfpEGA6OSu/c97dyAfdRsgVdydQ0GKjrf/c1jdjXqb8yrW3tjgaaulXQsu43RN9WmuDu3j4dwZbZF/QwV3IEkj7mBFQCAI40K1orD4BxXnv520TrVr8Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790706634; c=relaxed/simple;
	bh=54xPXIh4hGln4Ro13hguT3PZ5WP5eZDAPhAka5072RI=;
	h=To:Subject:From:Message-Id:Date; b=CA2rkUkqQZd6Lmn5OeIadIauLJ4uRT9N/KCOnkhUESBmQXNvzD2Epn7V3SvLA6r8w0oluJr66D5WnYYpmF6+u+tvLRPxIGQRzPu4Pf63vYN+o5UrTrCw1FIBrwXSOY4drTrCEJqNlSNCRjHLONUeYYqw47OjkY8t+Up9VdveekU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JeJyhMJD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JeJyhMJD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4D3C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790706633;
	bh=54xPXIh4hGln4Ro13hguT3PZ5WP5eZDAPhAka5072RI=;
	h=To:Subject:From:Date:From;
	b=JeJyhMJDCNEjArIJCPgaM22dekC1VtqXvszWuWpQr2YANaVZWqf1BaIf+3La32vr3
	 MCjVBA1gyTDrg1rLLg9zm8ORXcFp6VLznN8dmmLINp9+xY5jL713AlZzZXg2DVsOlT
	 DIIpgsrk79GEm0Ip1d6nV1cs09iF2nT5KrvDCsMe/ZVvAxPaldOMPcaMvXVOHTUoDi
	 2Sb1VUhfgqj54UPyvzH8+1SpaAyJst4cniRfngr5vtOhu0DijIL3R1Eg5BoWOXAz4W
	 FQEtP7h6jc6yvhMxCsRGKjbuXLqVJnA3vkvF7i0ymzKD/w1PPNvrbbN5SYaEF50Qth
	 zYG9lyb4M5Vag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FD1CA5FA7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179070663368.30776.5404098689750348052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ee7be26858762a86d8caa8dec17a2f04bb292651f1ad07d2d86ad1ebf0914ac
Date: Tue, 29 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790706633
