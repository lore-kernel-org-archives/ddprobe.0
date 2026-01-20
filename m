Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1790E1552FD
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768875234; cv=none; b=dKl5skxx7WUwc0K6nIw2zZDyodcC9OLa1+6Xw2SL838dI6CyDssejfbmbwMlcPiKWAk/kLM6jH/jP/ALgMurBuIfbR2YRwX7M8kKpY5l0bHBNHKEHQ4rd1DFlZoXtWqEplKJPwVWDY3Di2FbuElx4QwDVZ7c7xcFEqDdhpL9Ri4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768875234; c=relaxed/simple;
	bh=qLbyK2JO7GhfsaFTs86A9VlDGtwz2hRrHDtIYvaYNUY=;
	h=To:Subject:From:Message-Id:Date; b=h3EKaOD2DzcUfLDog2P0U3DoRnE8SH5NwYu2s2a5NanBWZrmpJu/09TTcyyxOVV4WogI2asZhelcIbzdrcfR0ZpA6wRiVGzbhj9gG+O8pQAKke3Q2NCo9tHS/k0LDqOwZegNvit8xN/qtdcPnfxSzNYhrOy1GUpAQV98ThU2BTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swXeY4bX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swXeY4bX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EBBC116C6
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768875233;
	bh=qLbyK2JO7GhfsaFTs86A9VlDGtwz2hRrHDtIYvaYNUY=;
	h=To:Subject:From:Date:From;
	b=swXeY4bX97rpaqqqNaOdsPLSgehXjU/W7jbTAl6ww07DY2H0Dwt++fp//m4owCWhZ
	 FQhAAQ2qw5B9g09H4wIVjO+Nx6Z4c+8nSmMGtJFa6b6x/GLe1nnm1VxcozoYH5dtLc
	 AzEX4QhTOqaQIoj5rgktFWVaZqCmMRNQ1Xjanq5ACJWYYzR2P8it7CdYBmvkcTEZ7Y
	 F4JYHCxHz5nsuGYpABcq/+fcdyfzCHe7rjRGpkaYYNiwH0TD3G5xizrIvtDYEBMY9G
	 cZyxv17VkgeTmm2Y882gDQN6Y5savHgikAzQkYrAs4FEEsSbGNiPr0E9UKp/w7DiAg
	 pCRudkpsP+kaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9296FD2ECFD
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176887523358.32189.17812471157843097216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cac660183956e56841b35f22e2f732b4362facf4f8834d5f06cefe6e6417e133
Date: Tue, 20 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768875233
