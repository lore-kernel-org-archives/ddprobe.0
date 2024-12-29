Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D97F1EB36
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735458954; cv=none; b=VTB8W81N5Jakz++xwu2HWre3gn7lz10A61oG0IPbrwnWHL1pNWH5rK3wDyjj9rg8uigCGbmtolKWa4cYwpmjkspWICFDTyADrE8iCs+o3rtBtZ9AzTA/clSMv+hwl8NG1cM5PtJh5h0Bg2Y9mwTuHEEdoRzxIw9is+AWimyfqsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735458954; c=relaxed/simple;
	bh=DmlQrm4EQvJElwUmYmJ2xwkgaZCeQFSI3djVnN0Vndg=;
	h=To:Subject:From:Message-Id:Date; b=iHmJmvKDAhyw0gpwwYA/MFLD3bZg2TQDfA7I4sA072dWLe8WQqVUCCecvPWMWNpoSgNrz11elSCXk0kYJ50w9BlafyMyX04InVJxInVujCr6Z8jYd0H23eaq7H2PdrVfhhd/rYZuwbUtYfmhQzBGs8QnpUnNMHhXCsL14Cufwm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aiRkqQ4Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aiRkqQ4Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6CF5C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735458953;
	bh=DmlQrm4EQvJElwUmYmJ2xwkgaZCeQFSI3djVnN0Vndg=;
	h=To:Subject:From:Date:From;
	b=aiRkqQ4Zco8eDQQdScACVbyw98kdXzK124EEe36u/TUmX6cHel/AEQiBgN5QWdE/j
	 WFKhfZrQaVVVJxkOa4HYpqOgpoVWFauKx7OcUe+1UYMRPg0OjtJLaub9H1Ks48hreS
	 O9Ovtd31N/dt4OYn0K/Db4gosUDio3LShk8BLMX/kebquhAwrbScx2Nn+GbLOvC3PC
	 4KQKlZSl/xyipqnoHvHl44q/fUc5EVTB9Q+sagZ9dTl1nVHy9ZqPqjFilKPTNxdpF4
	 4Z5zjxg4OG7PV4qGKITi5mzXsBpRZA+JTHzxjPCXY9QmX3RuTF44clmf+n+9TjZ5b2
	 5Pi+twdRAnZvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0641E7718B
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173545895363.15129.13313546328775010940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78e5f5c4655e0aaeaab2872d707239d6797d3c47c8d1ed64592868be4fcbee3c
Date: Sun, 29 Dec 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735458953
