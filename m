Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7262E7F2C
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 15:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781105194; cv=none; b=I3+ZMoC+EcSrxiZFD+hCH1urmVHRlnbGHCP6b2nKgIudD/WUWyl5TQ9hYczCLjX57EUmH7Q8n6xhCG5mE2NWdt6OoRwiGCOCKKBSMhnIlF3HHQVLEX9EO18DGm+Q8mnh8jWYvFCc33nKXXkSZFW1x9Qp1eZtAnjYsCaogUmtmNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781105194; c=relaxed/simple;
	bh=+LYsQ8X+h0l9oSSpIyI57fBliZmkc0pIBBqpr0ITKR0=;
	h=To:Subject:From:Message-Id:Date; b=Aehaip5NGs1k9ae7GXwI5PaWWYN8ZtlZebocMulAq2VZfOdun1ymUoDI9GjlOESlGShxJgbWoA1M5f3bfmOd6a/yOUtl/dfVvWZyG8jwxeRxYwHAwvF1Av9wv5s14ss5dWIid+FfD0MlkaHdSzCcHY3Ok4QQvua3ArYgb/vydw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjUvlsKY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjUvlsKY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDBEC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 15:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781105193;
	bh=+LYsQ8X+h0l9oSSpIyI57fBliZmkc0pIBBqpr0ITKR0=;
	h=To:Subject:From:Date:From;
	b=jjUvlsKYrTN9egi7xQAQyvURA1dNvHE5P/5PQmC0MRjoXa03NIXrzim+rYUYs7qB8
	 /RekLYnksQ227YWxlGS9jTltJrKl4tA2IOwPWWZa+SiqTvOn2S7xGy1LdKwvYdSPvi
	 7W+c7xN1wbPCGwJ25yYKhz7nLHFGNRlkkPvovD9qScE1RHVjhvQx2c2Ogc18pRolh5
	 RdNjXrUC4W+RvUH+RxE5NniWlfzVZ6PUMk11s7FYm+UcY+ELUOF2MS30/ve68ACK04
	 h44ksNHB4EwYZTgNC52Kb5rlbAD55NpFkqfJuCRlBQsn1qkuSXDSxJYkhYDDj+e9A9
	 zS74muVu93l8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3D5BCD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 15:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178110519372.13958.13234533748340031171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a43ea1e34a2d06556490ca0a815603b0ad8ff27b7f676a70fc785a76b890db20
Date: Wed, 10 Jun 2026 15:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781105193
