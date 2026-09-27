Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6840221B192
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790476834; cv=none; b=ZqlFKSQtjCXqKf8k1K8R7JcqEBkSMYDy/1e9txh0TkM4EXnaL6LaDipigbDXNzy8wdS/9RwoOAKJtZi6lvSwy3jdbqWHnXjBcsmC1Mf4aZ+zTC7gCrqvWRXHN4qf6pS5fB4new8an8qkDWwkfq5igS9PZ9zmZBLzxzHO2bXmELo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790476834; c=relaxed/simple;
	bh=P1dMKfxSF1YoVuxsAh8BLwrNj77p3h5G3d9m0ubGWBI=;
	h=To:Subject:From:Message-Id:Date; b=pm7/w7u3DAOOE1i6FXzhpb5FX3TBLZBiXQf8k3s74Cux8Fznss2enzJinifxd0xdN/JtTO7/iH3Kh/Z4evFTWs0bQEfeG8C+x4DpFaJg3nOEspYnfo9BmBt9S2t/p4sWLcnhDZTluRuqckzPDmKMz0O0RzpPBEejF0mV1+pLzrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srv9yx84; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srv9yx84"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DFAC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790476833;
	bh=P1dMKfxSF1YoVuxsAh8BLwrNj77p3h5G3d9m0ubGWBI=;
	h=To:Subject:From:Date:From;
	b=srv9yx84ffLCjXyvcz3AF1YHXs42gca178m2vC1i2a/gLnlj2eB1utHpInHwjVeaG
	 QCgaiRjNv/f8PHp564QI+AeaMlBP+XiFO/kmT9cYwKA94YmxioY3+vHLPxn6QszAnO
	 p7UhUXmSQb1t+dU50RqOIIZI9wsyw0iyo7ZaORoCY3Vybv5UL8BRoenBvpX3wTEWGA
	 3E8A1VN1CHBwYR6G3hfjtf2THaRMMAe69Are8rv8CpEQ4ZfA/EwQU7x/cXJ0cQXUEE
	 QA+U2Q/8bgDTWzvDZWV99eHlLPdIRGQPWfDBHSQAMrGMqU4Y2wuJiEKnoO5CY72by+
	 oR6IxU0ZonKGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF89C9832A
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179047683368.14073.14233212336596393669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5759aa5c0afc24786b25382873a21d48c71839af3b9fce46c0f1b97835722763
Date: Sun, 27 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790476833
