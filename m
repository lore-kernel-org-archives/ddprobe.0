Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53EFE346E5D
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792315834; cv=none; b=dZbt/GQRULivLvdgzcHgUhjlRXa+brVbT85wqrcEnmGJaIUNljFp7+JCzyzmDnvSl7BeWASnco6dwrxey8OTZKWfCAkBLOK8flongnXsGuo/dqAtKMBZO8WRb+WqobyqX6LTVHDH22WvX/2U6hZDHxyLieYbRBcFVLxG3OuMZvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792315834; c=relaxed/simple;
	bh=ZjtDS7KTCnCCB7apRKO/hHkfqbqCqR9VUs/vH2lXmos=;
	h=To:Subject:From:Message-Id:Date; b=C7ni+OXvFPixLbDUCgo9zhxl7aG9lqpkaV3buLjivFUozLmV7KiNkbpLFQ+RqYH77yAgGyetd4f+iA+vwVKqz3x5PoXOnsOGC7ssvaegnM5Qgh9NwJNAg3okxEUa/VKx1NIGfKVqjjKLxvlmf2YgtmVKMYEJv8GM891OyKPpOl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUlV/vin; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUlV/vin"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5259C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792315833;
	bh=ZjtDS7KTCnCCB7apRKO/hHkfqbqCqR9VUs/vH2lXmos=;
	h=To:Subject:From:Date:From;
	b=PUlV/vino4gFWrxptKZ5od1T02K6bN/pvNXWoHbbHeoCcGRdP4Td7vt2n7eCMud8b
	 amc/7wQTnTTQ/gNVC7baImLLGOOuKC5FH/4ZgXTML+RmxoU2VyU/zX0/q8Gj8TK3eB
	 pkj60uxAhSFmVm6s1kM7ZNQfgsXRxCtbxSqA0X/dvzSSvKHEPO+cOT9VXBuZYvxaW9
	 j0XNooZOwPvNu9EgFM4ik3qdaOmvDylHbn+geTyDgLQPcu7f3qY/N4zBzLBCB7IWTi
	 Uf0rxK/aT7WpI6Q25iFlaf7f1WNTXzr58tuovaMvkBuXNxr5sPWdkFIvDPbf7SpcBk
	 PdLEotKRKlQ3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA552CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179231583368.12033.1274344333543658605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6dc0c79b84b66c443be7b89c1775efc7137473076042899d2761a84b2ed0cd9
Date: Sun, 18 Oct 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792315833
