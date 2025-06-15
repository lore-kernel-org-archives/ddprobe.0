Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0551BC07A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749993594; cv=none; b=gZ44QmfU2uxPGpnWWwme+wuGDIw6Ga4bijx2QjgJ2IQjgFSCnjS9PW/7RxG0H9gJL5lnvZKQVFDsQxUZ1I/89ZYk/G+uVhrZNcVLDJGCce9jOcOJt8TLOkXBx8RlOs+LPxeNUnvQWY8odtCFQp/qqWBPN5PBarS4wQGTuoYhQ1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749993594; c=relaxed/simple;
	bh=CZEw7iHeaCB9jM5evB9O9NHq4a2+jBwnjOEPubbPgL8=;
	h=To:Subject:From:Message-Id:Date; b=H91WsoZSPhhQvPFsHELXMqgMI9JwknViFK6g6f8bZDsy6VeQScGF7f5nvQzyIvBrLDfAtFBxZMwYbnk73vVnKA++1PSTSxh3PW45KaPFhoyUJl8SC1tbgW4AhMj2SnOoMmczgJINi9VvS9FH+NUnedqvSoC03MqlBVtrdmn81jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mz5mddOl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mz5mddOl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC57C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749993593;
	bh=CZEw7iHeaCB9jM5evB9O9NHq4a2+jBwnjOEPubbPgL8=;
	h=To:Subject:From:Date:From;
	b=mz5mddOl/k4AD5BhxfQhpLc+WFhRo73n7oXkPqOr0oyTAp2gINyuTUdDRuo6EZyZu
	 6kcDtiDsqstlqH4Hlnfq8Hf+HFZkDVT2f1ku20dNvbvF9bD9QWTlrjqqyDNYHLM3Ya
	 xY+IDE62XwSkjUiILIhXZW9ZFE19lJf1SByromw3M5o5DNOJpyFGRp1t1bRFvE9OKm
	 x+GfAkbyZiUTjWg9WHt2KEsYC7mjuiUOPu+uQaTEnKicKTTn7obuVzoHtaynw6qC3y
	 A+LAK71J0rVr5lTEv/Pu2HqRfl48BrXCnTvXMn2jkcNjRngL/Ap2OAyfVXhOaBCNUy
	 Ut4vNPl4qRdEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D9FC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174999359357.7465.11749311379381513382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 791a120b6705a0799cad4fccca067f77d1eb951d9e31a56cb9c1eb8a22270bcb
Date: Sun, 15 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749993593
