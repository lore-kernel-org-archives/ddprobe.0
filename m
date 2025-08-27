Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3307B1FBE9B
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756313994; cv=none; b=LFRPUiOKIT2cPeRjSbPSPkg1ceJ80esIzBEWln3+PhDj9z5l25n7esGe/0btHSkAAQYeo3wKNmVmxDKwHPSNFVvEgjBmFRHE3K+XQOFUCqarZI8SOZcIKC2n5dCH04vU9W2XBMOeI8q87VskWh95vaKFcxWcUPzKVsnVKdyiSP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756313994; c=relaxed/simple;
	bh=GIfPhEA1hZvuI9a7vpBTAjY/GmKcr4hMx7vky7+8k0E=;
	h=To:Subject:From:Message-Id:Date; b=G7lH3cocBM3Fj8ijbHHGUuqG/Cy+Z8yBXgxCthNVOs/ehrnuq1X3AOKQvaY8EUmjprqOHN2ij5WO2x3ws6QBwlDJDn1oTNpRNhEsIWpqoEd41SI4Gq98nVmAF6Z6LPPuDT9oKG3Rmql2GMo/xsBblhYatkttBENER+6IFw4/OXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V90yAJIl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V90yAJIl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D2AC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756313993;
	bh=GIfPhEA1hZvuI9a7vpBTAjY/GmKcr4hMx7vky7+8k0E=;
	h=To:Subject:From:Date:From;
	b=V90yAJIlI/V66v8BVC7zUnZmeVD9eh5H8nv+fBJKDLJWxUXAuqJrCyCA8FupRh15h
	 gw5eVaIzQwRFCj7EVnddA054m5WSgVdaVt6i1hP7lZGQl6ijzsAcDwlYkrJZHZXMdR
	 CEAAHvUGeofvMPZ25QMMOBylyUl2j269HwrSernURhXLR/30xX+i3xbJrl9alg10zm
	 GTLAD1mixpw7jZBKiRZr20dUWxgkFfVninRaUgZY9JHRBEuKXL71kiwHmJyUBIEdm7
	 TnEkiL4k+DVt5KdYO3Trudb0aUDvpAyTZeebNol7oztxRQ1oloIGpuDuLzp5lrAgoE
	 uifZ5QnakMdtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD38CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175631399362.29181.16648070166954188149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 462aae284592f4b6e35c08ffe9044ae164e91b01dbd6c6ba878cfe4e7ef3bf10
Date: Wed, 27 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756313993
