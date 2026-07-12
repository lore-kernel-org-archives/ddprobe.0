Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BDC36B07E
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 09:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783850314; cv=none; b=eKgf4juO0EZtJfK0Gc1QA+2AHHv51Losf+7wHwcLNteKSECeij6ZtbXnsXIajsyqCKR9XzIY2ygceNKhRCcMKAZsXiYjVy5SUIVaEllfpEayj0dWdbGPYe2QOWhLw3vNiIWs1NYma6SGxUGds9mHdumSWpSxsMrcC5PQu9aBmvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783850314; c=relaxed/simple;
	bh=RUKEBLaDzhWj0vrd+KqOCNMY7pYGH/HY9Trv5KAtUFY=;
	h=To:Subject:From:Message-Id:Date; b=Kd9xn6t/GdgMjNQ8TI6oXuKfYx/EWYoXqOV/jC3VrSjStAd2zL0+RwRBZvTi/rL2/sVtFKwb9LezCtxWVUwLEirWOYdO+3mVKDLfyJeY2irw9ZJFv9SPL6REtnQr34LfkpHZak5Zy6MxfOW17Iw09Fu3REc47OVoXzsW4HjgtHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTfugMtx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTfugMtx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDBCC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783850313;
	bh=RUKEBLaDzhWj0vrd+KqOCNMY7pYGH/HY9Trv5KAtUFY=;
	h=To:Subject:From:Date:From;
	b=JTfugMtxFy4sitvMMWnuCJ46WooLewU/m0ofNILKItqGoJCyWckXWZA7ofE/hxy/+
	 Vxwnd4lLSxA9vQpaY15VX6fJGL0EQrHHLAYnaxuARVDcWy5eYNQVspssip5kUOTVkD
	 y9EjPn2CF9Oq41NBcyBk3unB0wgLagvOYKmcOZSpJtuSs0ZVJsyaLkv+pYo2vw7P5H
	 fuI/AvP8IEv0IKV7eVyOFRey7VYyuBzoMcW05ByVFUu2AUXdj1lICXRzJh3ogasMQC
	 Ny532+Y9Dodgnjn6STuIrpr6nwPEw0omgB2i7+8PZhw2iuuUx7ltLJI4CZfGmtIi9C
	 2szSdayBTtIpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB94EC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 09:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178385031368.12947.10852492821934944145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 574d65a0248f6eae6671359c470ec313b11b0abb412d4d4fd3d0726d30d6e2cb
Date: Sun, 12 Jul 2026 09:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783850313
