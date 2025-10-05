Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DDD34BA34
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759627195; cv=none; b=D1pIrBkdXOteqFn1O9fPPNEKngpe9j3N5h5Kop0WQOTwzSA8czWDWmis6Ua/S6uuy+oZ9COkKAlmA/om/j/KvAxtFrz0RLJBe1tU1M7J45jrOifxOgn4a9S40LqiOluZImf5NE93cFJb6E5pFYBAt8g/gmYgx6JnzobYU3ty0tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759627195; c=relaxed/simple;
	bh=eTNwKMc8DNOaiqKLVILiNw1CNRvzQXN0QMw9vDqtsvw=;
	h=To:Subject:From:Message-Id:Date; b=mrxrDNZFvDZ6ynGPtemYevm+y6H2l5CQp/Wkp9+k8OwKxj+kgtCY83xX4GbZ713a94Xe+95Hw/GPKEjlTEA6k1RcL62fL5VLM5Ft4AnUB8PAGyiQS3+DgYkvMA5zcHr6oDQHR8ttJL/jrI/KjAmBfLon1otZUbf9trp0N3i75M8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZKxmJJy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZKxmJJy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78FFC4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759627193;
	bh=eTNwKMc8DNOaiqKLVILiNw1CNRvzQXN0QMw9vDqtsvw=;
	h=To:Subject:From:Date:From;
	b=cZKxmJJy1BwkduHvGUa2DuXUiVhgLh+pN9qR32AQVLY/EVGHRLw+fqQSCxa7zfp3k
	 7LuTGVdZu2hKZ/kwMjBrx78/vcd0EiMfnKU14pqI9tpfJ8uKsKFqJp3pHTOEJIU2gJ
	 fVneI5VEhm9bRia45CdQtTFj75h/7q/b6mOo1D4qMmuLVRV3K8svLKZGcyXoMuhUs4
	 e6GaLo0vJallpa6CbYuCxu9xt8exmwp8HPlGZhrJdHRzBf4YGDNrmdTD+wejdrSMdm
	 RjtT8wYyGrM5smbKnLR7chgqKVChKldYiFEhy2awVWbUcPyi1eyskp9IdO7EThWE+k
	 BfIkerQOnBUkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A09CAC5B0
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175962719358.4291.8636126910582646547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49a87b0a43fdc6e650494b450e3744c48517b496e5300f879bcdc62b20e81a00
Date: Sun, 05 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759627193
