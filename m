Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF1917A300
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763174994; cv=none; b=X/QPC89C5QA1D5d0HUTqvAFSH+OyiyO2z45v5a31y3LaYe2XeQ5GVEIx4n7d/mNZmgaIdJzmLcmo5RScxlQkiELENKu2oRuMQeTKCYMOAn6f//18izNjFjBZwVZWikuzDmexh2fmzrAPAKbH97SvQur+W/OJljVJhezUyvir1nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763174994; c=relaxed/simple;
	bh=OoiKIzXLVZeDv8UHvmULtwMg0tbMpvzaz0Y/D/FKsuk=;
	h=To:Subject:From:Message-Id:Date; b=P97NaLIsjfIYy3n5j94SPCYbqy3rQimav7v1FtewRTmhJa4gNqqWrkLo7iAcOLOGNFEYYNVdCDu7Dn39PuPTOKXjaFTTaUKf+9+Kh9n+582LeaW54fZt5tEd5YNRXDjIKuTotZytrd1qNmHQKQiAnUz0zJhb1/5o0MyR6lxkuwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGIQ56vS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGIQ56vS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5916C19424
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763174993;
	bh=OoiKIzXLVZeDv8UHvmULtwMg0tbMpvzaz0Y/D/FKsuk=;
	h=To:Subject:From:Date:From;
	b=qGIQ56vSSW93No8KknQWIFf8IXyVHr1dNpu3XzWVX2ioQbPNqW2egqTg0FK3BP9OS
	 yhalJdU06ICb4BljMMgdfKBFiO+ZR6yGf7drTxqhRqXYgKM+N3Gx7amrMIzdI23euC
	 0Fdq+5xe3UhxUZfeG5oiptjt8CW2y64kQB2pixUAlemErQK0uduIuVXh3bSeE4LVL/
	 y/6IWEu5JWtVm1XOtd6vSDASDV72lJc3nF38O+EikGPOLb93IfO1sQ7Pghuj7AFbP8
	 ZU0zrMkdhgpnPQSSKT2/pFX0fdZykGYkQHD9X+p2eHnmNpdcnKLw6Fk3Ni+t9g+7H7
	 Nvx0jOXJsfelQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A02CE8D6B
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176317499358.30406.14699633066372545146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bd76f3cad6c2bcc5d1b1355adc1dd6ab591fe209ad4102ed96013ad38e1ceb5
Date: Sat, 15 Nov 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763174993
