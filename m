Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2344D1FBE9B
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751986794; cv=none; b=RLIU8OP25MbWTDMjTD+42nzj7YijA3CAl8z10K9dX6tP+Ri8q/X+yMh5uZZn05TKnnQHauv9BYnpIkvbGr2AJPzVLrP92VY/iGJahjRQracZZwtaURW6KYKlkvlvLC8vJx9or6ceg6DPzos0J/XuBf4gumVa4EQhGbrMxtoRmQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751986794; c=relaxed/simple;
	bh=wGvRcohqDl7eWZl1cV/zMDzrBvkhJJy0wROLToX0w2E=;
	h=To:Subject:From:Message-Id:Date; b=QiruRbYQcyskukEIEqOA0nn4OVqgkUUdupCI6C++bAve6+y9XCSzbD2Zz97z8cbvwb4hNRkG43yvc7w8vWhyx0M8k1ZPrn4j+lpXqXN8bmSYgi9oXphhRE9ToghQ8Uc9EeaqPaqE2bdOUv6E2qXXTZqDp5dfubWYdWhyKwKVNRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZLqzECu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZLqzECu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1ECC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751986793;
	bh=wGvRcohqDl7eWZl1cV/zMDzrBvkhJJy0wROLToX0w2E=;
	h=To:Subject:From:Date:From;
	b=PZLqzECu9GA8o33Nl04fPRN9u15GN7dYCdXjaLhEhcNG5uQ9vaYDG3Ek8/nBOSLla
	 9XArvD8fyLadEPQ5xQRcUAjTVAiGCITanmCOQVfTRn7vZG1mNEEER6sipIwzwtaN8b
	 M6hLo2eUrDNtsJ/pCFDqqMdMVR+hnEgQIvbgKHxZRBEGNKDI4ix3RoMkSYU9FP0v3I
	 z6j/NFWmGRRw193Aq6apRlLvgZLc/jEjKxAfkOIDKOKkO7g2ZeeqdUfXDG3PGo2GCN
	 K8S5Hn/x+6e0E7YPSOrxM5lkyNxJ3uQ0UfKhM+Eu/vxDvsu4PCKpkmyKB1Xvs5452x
	 G+ZcBBSu0etsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC5FC83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175198679363.2252.5066330809056912641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88cadacdc9046c6a968261a2a1d99e9b80fd7f04f77d8efb8b67dc9877de95ff
Date: Tue, 08 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751986793
