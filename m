Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331FD1ACEDA
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 23:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763853714; cv=none; b=tkYzfimuCvP41fHIlttwI2RqLGSXe/kCHXF7YVJ9DRn+L8oC9QZaCMc67AnvGlG2CidokQPN+s1MLLuWUEvBOMDcPoVj1wj4rjO5rY1Vk7DGYXLOmViUMh6ByFEBW9zoBr74RXFYn5g9kYQVKKimPeVImmsz9BnOZebMMmAVC3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763853714; c=relaxed/simple;
	bh=sR0wR2jKvDxNB7CTOhevzpPk3zSPnTvqs5/F/OmRPxg=;
	h=To:Subject:From:Message-Id:Date; b=ZjWImPB9DtKyY8gTO7uBmqDZCDKIreBEYXo/Hun7q3yKWf+17qEwrFs3Fsi90vvClv+KA0EGx0RzmI5xJ2FYIcj7SKobWn5mcNdjsuT1tc3RdaSHGoI/pRpNwzCJEG+pO+9e+9FgiKMV9/pZ3uWy5RcUInwvyqydoI4F3G9lez8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTHjh/Ej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTHjh/Ej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC447C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 23:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763853713;
	bh=sR0wR2jKvDxNB7CTOhevzpPk3zSPnTvqs5/F/OmRPxg=;
	h=To:Subject:From:Date:From;
	b=XTHjh/EjO7XEQRc8UMu8kQHKmB1VpdhaMv48XV8jWA0pGrHQXSG5wVq7490U+Ulg9
	 A0wIdVetonq7HQnZ4RKq3h9Tlb+pr37dk/axBt6Rvq8NDft7fnppHCmo9tZrk5fcXf
	 9sJYQiYeeHkq7Bu+MhM5ClZQJvIISVOhFRxpoR+Gi+abUFztHIl2uL34roVC8cqVRc
	 VIn2YW5lAyQ6rwQL1DyOuPy6NMDLYFsS273a0IbB7F+D7KoBko4+y3/qkyAYvuHW4Q
	 yZLSESXxPfkPlBdcIpHf+Sfkbw8NAXGXpr3PHEXQfzb/8045k3Se8Vr+C7VbIMDVhM
	 Cwtw5MGD+BB4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9943ACFD2F9
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 23:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176385371359.14887.6638634693326509977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc14dd879d1a2d7268e454cf1b01eda269192e9130b4c21675cda4b0914d0121
Date: Sat, 22 Nov 2025 23:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763853713
