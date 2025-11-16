Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3086E1E49F
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 04:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763265654; cv=none; b=eeITKWbZNQaVjV7oCUR4eh6P9oX5vXbDuFtjVwaLUnJAnViktKpv+N/Af4i2E3h1pBEyhdBgflIescfZSAj5uxpPPiUker90kY2pic59EyrcPU4ICo05EvwLS5eClL1hum6kEtqU864Usg+Q/+rMYoYBUN75BAkBZN0h5CJanWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763265654; c=relaxed/simple;
	bh=2VyM2IY9SLlcKAa/+AkWW1JakCnH6SMy0ABynyf0WGQ=;
	h=To:Subject:From:Message-Id:Date; b=FPtC/3VFZCsD8OwR+R3MnF25qVffgXCWx34fnSbbp/uoHch03EEOBZNMrdLKotOIxLwS67kqtLt57Lng4iA43FeLHWrmJCiaOPDlSUEhnZmcsxNOM//ieN5QKN/rwR+HR5YWhtSFKv3Ly1z2L61dUs8aEzZzCb/4LiUCAW04SK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTQXHIc5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTQXHIc5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C11BC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763265653;
	bh=2VyM2IY9SLlcKAa/+AkWW1JakCnH6SMy0ABynyf0WGQ=;
	h=To:Subject:From:Date:From;
	b=FTQXHIc5wLjZTCQ68JlFvVg/8cyOQdju9QNH6LJzDOPiN/ONzuS8QqvOXpYEroaav
	 GdBgYYg0nlah8b2JhnzNegbnlgyjAtvy1iuLaS/j5BQF0at7BpjO0z6bK1bNubWykq
	 XIn5myUrW+Endt3e/fL8X7ZUp8GGx5CC0p2ulcN/1qbPj0VZQLniznVKdWAO/t+HbA
	 xFmoK8UvQUo7Hh5v7BsbSFvrhLGQjFdz615DYOa2ZlfaHwbp8Ne875jAJ39EjOl9uk
	 OYrzFTJDUiiMGHRALMZcv7fR9yZFSur1CR/D32IU8kThOxLMCitnNNBe0NOtOg6eHA
	 qBV9/jRt4IRFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED74CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176326565357.23143.16020364388933598375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 506fc8fcfaa87c8274711c897814b240f9adc9937c6c90048cf36b3c45196034
Date: Sun, 16 Nov 2025 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763265653
