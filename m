Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D261DE8AE
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756567795; cv=none; b=OB3bXNbHTGraYPy/687tbPJV8/SX4DPcK9UnO6L2rmBrKhnTfw8KHJ5BU13TIaSDTtWuQVwEk1ToFCFX+SwVeNrow8cU6UrBqxjUiVfmsSuGVm2nmq5E1ixgrnM0MoiDEjHhIYxLvfMKyZn1+PLX6azVTW4c825Tw3QD2c0kzFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756567795; c=relaxed/simple;
	bh=2LcMhN8Ykcz+SFWWdBZZLyA2YYN1V2oQlpgvIfPCqdg=;
	h=To:Subject:From:Message-Id:Date; b=a32V+nGRko4UMd2R1a6Ay2cmbd0Ejmx+x6OUmKwyx65UMIMbeHYeuE7/DGZqov7T0hV9dx/2p/2YID3uf0iZ4zJt/h4cFXL+dWbq7G1zHo4vPCZ3WXbu9yUMhR9tQxIqXASv48ZL1tV/qNF36LIAdPJyI8KTGFQrRH2CeiuxQuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbHGtapo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbHGtapo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E82C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756567793;
	bh=2LcMhN8Ykcz+SFWWdBZZLyA2YYN1V2oQlpgvIfPCqdg=;
	h=To:Subject:From:Date:From;
	b=cbHGtapoYC9mBxJgg7e5Le7qaehKI2lRuruVDPPM1ZvssOr01HmY/nGgj+Rdwpmka
	 dGU8OqVz40/lRnF87+tNJ/j17VMMGxr45adTFqAnO/UDbos3ZUosIceuQ+zh+AIYgL
	 NN3VcIao0Yzg2cfRQIzNxgPUhJc+rEFx8KnnmhfRrP2um2yb90g96/dutn9wqQROnH
	 VlwdUmRH8tjYhHfUC/yLBSrfbI7K9TtzKzbJ+PVmLAlBOsdCDlHw2LUfiIjo6r88rs
	 sH8dQMr9EbMwOwProaShsErbIZJX0aAxKPUv8HeRix0ItekoDHCubG3v35ojkxfOgg
	 zXbPPmj5r0QZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F205CA0FFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175656779357.8840.1755154618283630094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5da84ef6b817ecbb6b6016097c01e081c09f6ba8f65663a5a596e8fa1bbfe193
Date: Sat, 30 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756567793
