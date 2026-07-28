Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE213A542F
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785213034; cv=none; b=QAtD9i0zT7ll1MzGDeC/fi8d8ucJEankt4CWuX8HmsMkzFNePpUB1N+UAhtMb112vDA9fMEMMejd5sEbAdcxB+o3BQDkAFOvm2TM52eV2L04n5EHDOdeviSUo1JaGKIXwNOy6Nsl0ddyg/xzAOkpQeaBXQAtaSAwWU7EsVsQBAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785213034; c=relaxed/simple;
	bh=JF6vWK1gvdhe39T72DAVtZr3GgGCQ0R3i/PafJI2rac=;
	h=To:Subject:From:Message-Id:Date; b=QqQpXI8vqIQbHvoTkTFzvXMRDOSTQInrhEb8z0xJylESd4RP964bXfjfawEgcmVWQDncppnUNfBMqZsQSG7mCMRhmYW0o9tr8uzj2p1rylhsCO0jD/5yMUifrqr1kxcx25lBUpdRmZ553BFTATkYfhSNUR+LmTRhWZ0oazoxMfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFSKQS0F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFSKQS0F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD26C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785213033;
	bh=JF6vWK1gvdhe39T72DAVtZr3GgGCQ0R3i/PafJI2rac=;
	h=To:Subject:From:Date:From;
	b=dFSKQS0FrVTTQbq9cdo7FlHAQ0BFStFkfHnjbG/prsmcV5DOTJGBYwCQHPlbMMLlD
	 xgmSYLLeu+yLT8g2IItRKfzeDigy4sfb3rvX8ul7xbHd+iSV0fNM3B2y0VZF2C6w5k
	 m8stMJXeCzzsIeDchrcbAQldlmN5fDIhwLm9b4lHFOkbr1+wo1zU0TXGagk3wfvAW0
	 pCpka1/h+f1pcq46j7X+hXLqw/QiCAkO911mK6QcSKT/MF2f5rLU9oWz7ehdgVIK1J
	 EvmhfVbvzvd3J167G3oIolDcKqQISOMhqNusWb6Yf3c8VGld4dkDuIJ1QVfDc25N3z
	 XgFRV9xAthMHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8222C54F55
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178521303372.28719.13577620155674662186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 622ce773996005affb2c73d0ee67dcff8a43cf48552d6438aa2a67f15f5ec9f3
Date: Tue, 28 Jul 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785213033
