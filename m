Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AD11AF0C3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738270554; cv=none; b=o64bK6XKBo7JjOoDW6GBtjML/KtESY78nOs/LwPFOezuwdzl10bPAoDZEAfr+1R7E894k7MLdTXrnQyTejzpMqjHEfz53bgzRksyj+kRhgPW05CZHZBYvfats4OKHdllJgNPWquOACWX25Tb6JOlEFzjpE+unP8xY7lveE32/Oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738270554; c=relaxed/simple;
	bh=rFDqBlFNsoI2Pa62Yx2CctnNAQX6uR+7qWtzj23ctPI=;
	h=To:Subject:From:Message-Id:Date; b=F8BnKqG2FRkfn0w2Y4GYQbQQiGTSCUT3zEix3WFiNXSHNzRwSi0y/6hbZ81mW3bW/7lr++G6gedwCk6hKKOLM5IybvyAWg1hH/GAQJlY/NGfqc7bR2GaglZwSPZUhDqzdulz/mEJXDmyDKQm8G1P0wbrswdimq7BeElZuz4fnPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVS/Vb5j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVS/Vb5j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9378C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738270553;
	bh=rFDqBlFNsoI2Pa62Yx2CctnNAQX6uR+7qWtzj23ctPI=;
	h=To:Subject:From:Date:From;
	b=DVS/Vb5jT/Q/C6fSY1tre2M2kZAZQxr6zYM+2zl58umoCvVW1WLHnbf1p+l4xaxb/
	 TckZDYAxDfkKnk0n4yEr1eNrMR7yqLXASOYI7tboziq8q1PW+IftPcwjiz6qQiPJOw
	 ghEUsAWhHv9uBgtIdUJyzt8vBtouZD7XDavvkshhjw+0o/umU5G0UJVRE+HG6ow6gP
	 9dT2SmIGCY7k9qMRGQWpnv7q4wg89rrCZyZtHXq2AHzCXA+ibQG3KYDZ3mmYYgb6+n
	 Kw6hs7d5nF77TlKPPqRrFrcfBTldofUW0P0K6YbzL4TQGp/q0UrPeABJghF2Z+PUbe
	 hg6Bmkv7v4eUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AEDC0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173827055359.16372.10553819499898047458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9e619e1a5154c4ebb350faabf5408b5f0fe0de17a8fe8a0fee8c3f1de489b99
Date: Thu, 30 Jan 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738270553
