Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0CD1922FD
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754721595; cv=none; b=UHmbwM63Qgp1ABX35319nFblNhVTPKlhJPmyHTWHqQBellh+gH/8geEYJJNeeUJgSGMTyXEIffG1vu+YgWlIWcsTYrE0vlxbtZPAu+nbepQXCFp1rmff9Ji5v8lzUPIJR3/ldRhTw835qLs51MGhp2Zv5cEfT5Q/kHXKUA9U0rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754721595; c=relaxed/simple;
	bh=kxE2LgVuQEKILoMteYD1w/DovmB/jM5zTDmA3A6nnNE=;
	h=To:Subject:From:Message-Id:Date; b=Q11pL5+MZ2VQg7AbG1+VKgHHe1uKXOR7+b4gbaMhvOw7pYPcMy5kJd+72AV7HYiBLiMJDxerb2MlDVUxjlQfF4MgjqTXJPcaVSjmfRrAZUtwpcFAcAWNGj5TxAQMjMF9sleEo/k7Wyh5C5lHM/gws/q05pFfh0NPvdVhSyUqxZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uAymk3g8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uAymk3g8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30C5C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754721593;
	bh=kxE2LgVuQEKILoMteYD1w/DovmB/jM5zTDmA3A6nnNE=;
	h=To:Subject:From:Date:From;
	b=uAymk3g8br0Shuor9nlXE9pqjr+InVj2JmWlGbjBhzm9LkjpG6dObX/F/OFsjWEb+
	 sXYVRXCgGHb4SSk7RZRZqMXhaeqvtvAvHkHtF9w7dOiVSL7Pj5iY3gN+VWaM7taif2
	 Vgdsb6EbFVRRiXcm9nvGUfPYC0SL++xKEtVjk43exo3HnJEpB1BBzeJeVnn+F5mR4/
	 3FiKSUZwpuhhCRnohX5kSc99PtpXcWcuZJy5iMcWV4bZUwnoSteMTKuVLhzUZXYt3u
	 jVGx0rGLVwdWWy4IRsp+UPD/AEMRWmJohI/y0IbXNAU//30oKLVe8tfIi5zUNae6xX
	 rHx8tceZwEkFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919D9C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175472159357.22316.13475323670190680479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7b9573da4e5c6c7597d63234ec31a58c047e27d5883907dced710d0f8bf4e6b
Date: Sat, 09 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754721593
