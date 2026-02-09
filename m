Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229663EFD15
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770664434; cv=none; b=S1Vsev1B+TVzcb3UU+SvLsFw2Lfg9+VnZ4biqrQEBA4nsBAbNP0DrADvkI6lWKlaaIZGKw51f+RfHtYhRrT3a3Zyf4oaYwuWvMBJR1VQrXZttwtSP+0tyKbk1D5c3O6/TkLGTapJkfr0hTvg5F4LJVfoE0wibWADiu/zpO5Bu2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770664434; c=relaxed/simple;
	bh=UWt6I9Y4f3E1674qG13oU3glOGYSbEuk8waW2SE6Hf4=;
	h=To:Subject:From:Message-Id:Date; b=JRNq+wwfoS4alVmZ4b8XRxmNMBj7dEn4kpxGVCo1uTySxb3jHNcnQRd0y8Jt32xBpxGzLJAH1qNkV870LcYHoSasVHZ+gVh3IcRHG0R+niS6k8Py6lcQkilZDnR21T/Xoxwy0EKkIjWiD7lAuLr9Nv+X+kDYwN96Vqq5Krusdrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cL8Uz95g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cL8Uz95g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A7EC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770664433;
	bh=UWt6I9Y4f3E1674qG13oU3glOGYSbEuk8waW2SE6Hf4=;
	h=To:Subject:From:Date:From;
	b=cL8Uz95gBMFgQKihUmpNF1UmuHUHzKrb6PEYIuLfpDiO/SaGjkM3N+o+JG1id7MA8
	 9szzxoZoeMFtQSi6r1OYvcx3G1lL6AaccHbaYRzEsn4gQRTtaD4gUDVjpMlnbdY9tW
	 EojPusY/aSt9LQc9txdV2C+XwF6QW3+tpjMnd0z61t5JEPozdkjJo/yw9SNwRV/Agg
	 +6BttvTbLfNZrbleTJZRz4oluKPTSN1RReXl1fwNdQT2vMbcb23z3LnFGDy962s+Eq
	 wiFXlzbCnw8TxEj+VTFtApaSNCVMvP69dEZ2SKQyoZ7rkki61o6/zpISjAqt96Zd5O
	 DSq+wHnS2pSgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DDA7E7E0D0
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177066443361.20780.17926834732715699418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7145860f07956aee471b78b0bb2491f5d257edb80582e4fd4a9d070dd31372a5
Date: Mon, 09 Feb 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770664433
