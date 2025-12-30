Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261C1267B02
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767132234; cv=none; b=AMDmLzfC2dkMx8OyF7tlo21NBSZFZe7HF2jSaLrZjHKf4gqf+1krTNhSSyIbPxzr3TOAhqKLVd0FaRnjp0e3xpHWNJR/JHdukBIE2o1oKfy+PJaiflvCHR4iHZVd2B7RykLh8XcBut40nHSVKYvtnV60qg1/1UEPD5Zf6ZZQ/Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767132234; c=relaxed/simple;
	bh=eRgjaGvAPMV2/b10ddF7qRPy+SS56W6elLEDIbRKpfQ=;
	h=To:Subject:From:Message-Id:Date; b=E6c06ZradjV+2ayfS1QIUf1qern0hpkZFostoojZsp4Mdks0WIbNR5iQKukviBR89g8p3eeH2pGPvxTExzFx4fsk7eTRaceekvb80BKESD3iqtlfIoF6yPLh23bjIf0KemG3jlY3ZjGRGkYYn4LmEn2fXhwXc7pRNojXe0iPI24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGRgh05g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGRgh05g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0548C116D0
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767132233;
	bh=eRgjaGvAPMV2/b10ddF7qRPy+SS56W6elLEDIbRKpfQ=;
	h=To:Subject:From:Date:From;
	b=XGRgh05gZ9DeLPT7i1Ff/eFBU4PVi+FRMXvJyo5nBbWQ8FeO0fPEjiEGwaGxIYKjV
	 QZ4gzdkLHJbQ2CHGUVHh2LfrU6xt8aBj3ya25SUr+ZNmTVBE8rN+WuNGaGSxEPPgc4
	 mrRtgNESuARndJXVGjlFfeT8ABzwjUIn5nC8/mQu9jb6AXHWP5vjX/xRLG+TFLGGr4
	 +ij/gbE5v+wewidCn/cNftcr5EOg1uV4PuCLN6VaEB9YMMnmDTa6SSvEpv+HhUht5Q
	 CTwc8jVCbBPPmQa/YH4owRK/JG8KJ/zvynmCilqRUZIzEz96cZ+PqBlqBzC4J2bvMp
	 DBYmWlIaMLf9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9177FEE01F6
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176713223358.3240.17369679428274790997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd4e3218a76c8f360b179d23462554ae2637849c89b84322f0ef72e70b0c78ba
Date: Tue, 30 Dec 2025 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767132233
