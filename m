Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4071D30DEC7
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763059194; cv=none; b=TXPPICoS3UcTcIRhue2CpBov2e+XtMZ95XjrDB+41x+SZb6f8EbOgjOliONhClimiIs3K0fYEMylk5SdEDOgDSRml/1co1NU8sYWuBO1jRg7axKVOM3i5YIwJIia0m0ASwsfUHs7BMkGXY7dJBNs6TVgGJ40jJuKADWYv4mRl94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763059194; c=relaxed/simple;
	bh=iYzaLTi+Ys8cQ7sDxvGbyxQz/e6PaiZznemtYwuK110=;
	h=To:Subject:From:Message-Id:Date; b=pdvM1QF2wCMxFf58WQTHckjidTdjuwnC6xo7d45AT9CohMaKG/UpocHZ1oXsPLqVbY79qqeSjc/3WVlEEcEw6EoAiZdNvj6MM5KLnsOel3leNJE52Hx83hCVH8r/039Qz/BFO/oik5OmTjhwZjdYYuNsdV1/hd7zc+z/B/0a+WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oymtv9Lc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oymtv9Lc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD29C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763059193;
	bh=iYzaLTi+Ys8cQ7sDxvGbyxQz/e6PaiZznemtYwuK110=;
	h=To:Subject:From:Date:From;
	b=oymtv9Lc83Dma+PH04RuJqWudWZLzEMiV2O9PwLSHHZc8mZGZHT/fiWylG5Clb6ns
	 IafZNeA7Rn4PT9WsvJwPa7zHp2j/LUrYTxEiK3z6zC8Oi9lWR5qkRdedjXFfp1Rp23
	 OsGN6IWpD2AXW08BkThIR/y7BOw8KwdAVLmjVawFF3Ub7y5MRQRxRB4QKLeo/uEUvT
	 4CYwVmzwrlrPsSBStLN2eiUiCVkT8llzzotKrbypuMf24Sbm7dgcgazTVuyf6muLDL
	 McF3c5UEBXCZrJ9LIA5eVGgAsvN4YXr3AhLWheACbfwJVqyQvAsownFlol6v7FJhGa
	 BzO6bXKUhzHrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9373DCD98C6
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176305919359.17771.16405946895790740756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f97c51294ca6e455faa8337c1ec3b8ea6c308daa0bfd1277c2a99e4a4ab584b0
Date: Thu, 13 Nov 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763059193
