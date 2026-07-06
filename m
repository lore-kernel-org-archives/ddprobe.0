Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A4034A3A5
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 23:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783382314; cv=none; b=GVfDoDvvLPV6nRm9hDjzD6VbSPsw9nBLnDz7jcrHTmDtbY8DvuzcXvGQUZfp94dMlyuj0gV7zlWLrXH+Ttb2Wed+RhxE73v5BNhHcXQxXcNHE0e16ofovNf2hsRZwjSF5FIaB09tZ2lNQdw2gg/XheGHhgIDnsSgPrkHqvgKOOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783382314; c=relaxed/simple;
	bh=eDexluu7uDnVFaCcy5pyASdmygeVTCuTZl0S7gov0Ck=;
	h=To:Subject:From:Message-Id:Date; b=j6XEi0OQ/gw4H1IquDK14kB796TJvKfcBmgwaQnsNGLNO/S99OzlBSzRr7vJn2U7fSR2ZR2xouZqBimySwjH87xRnh492Iib39xrUEq7OKxAdF8MlTb/209l8cR4h0SSEVyKbAhtKswLA1fm4bdsvt0OyCxgdWh838x5m4cT1bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ej2vaH4s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ej2vaH4s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B50C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 23:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783382313;
	bh=eDexluu7uDnVFaCcy5pyASdmygeVTCuTZl0S7gov0Ck=;
	h=To:Subject:From:Date:From;
	b=Ej2vaH4s6ZOBKhK2uRs1iA2nMErfOdM51alkCuSFtX9rxRJP/Np3YB17z/H6lJOQY
	 2TqglfXDV134PINOLZgWJyuNHsa8m3cRZ4xAhLWMAw2gH0dFFctxy5fuCL54iJeAHP
	 Ps+p+xJNihJ8TsHQzpMqhJs2FKxbbNmJbJjGcbvbzm4XT2omuMYTmv2jxWLRuQD0Bv
	 F1VwkeGFSo9x6K335LDHN+2s7OqDm5gXBtuYm7otnEtq41tvevrVBVVXPn81zfRtbA
	 paJhTCIqb+LmmG4cptjho3gNPTdTPUp578feHZNXGU6ibfRJFFYN4oc3QSVV8iTKup
	 3ViHJ6wVztPhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ADBC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 23:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178338231368.4028.5293785754013162373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cccaee6401afb6abed8a80bd391f51b152ee7d5a799c96ecace9ac198fcf9b4f
Date: Mon, 06 Jul 2026 23:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783382313
