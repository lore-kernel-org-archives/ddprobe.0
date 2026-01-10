Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3B218EB0
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768004634; cv=none; b=kepkx56wKOav6SZJgaIb3ddroa/H6SmdlT9Go2YctRFHQxZZKWlV6OXxaxKtXMOtkOePcBd4NP1vzmllz3EIM72tZA7JP1UeokW2K1mzor0jpEvjdr+TCrDF1HEn50D5T91A++KPyQNqfhd4btLS8e6GdC8Y3EECf4+QvKVBkc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768004634; c=relaxed/simple;
	bh=9fGf3+6wtjH44pR4CpzNpuEHeMnuGnJuXzdEcJT76ek=;
	h=To:Subject:From:Message-Id:Date; b=dxacrpRbFnGjegISZTGvHPmod/pcC7xJuLfn1s3LNBw7VrabjLN3R7naz1q+W03Nu7dWACqIbj68K/j5Hsl4GJ5Qvi+vx8uyCCNW+P8mamVQRuJE4UdnRod0/zTKJ7jiLDDAXb91NmBuPDK4NsO63H8FeOlqRv8YIi3bZn8avSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IzdNBp6e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IzdNBp6e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73B3C19421
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768004633;
	bh=9fGf3+6wtjH44pR4CpzNpuEHeMnuGnJuXzdEcJT76ek=;
	h=To:Subject:From:Date:From;
	b=IzdNBp6e1m28FTdoAbGPipDO9X0fTxnhRxuiKBhltR/0kpwW1B6vBnyL+WPSoQOV1
	 /EHbZngCwAf7P5wTKxdm+Pli28nSF+IIxQJji3lEsWHSSKUDdhcgyJtWB34/+iMO00
	 kbFKP+jgkKp7d+TYI5+avczg3vUgXH9QBlko0tLphbFgE8clUgl2y3b+DX4zPhVIH6
	 Hd2AWNqT0sFnSOelAyBIjA9T8mrvg7pTfhFIjd2Zi35noMxvS4Lq1FM8mdCmZN4pE3
	 ow0xVX8cKTeGGn/rtKpKl5Rw+8Ql74PN/B5c3CAHNFXCsS8LGHgyUzKZlMV8jwvQp6
	 WG55v8iy2l+TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92549D277C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176800463357.20563.14841530135899710225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2316cb5a982302ca0875ef14ca937e25c21ebfcfdd217fc1cf992f0a2e5ea32a
Date: Sat, 10 Jan 2026 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768004633
