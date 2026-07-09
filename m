Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F654499A1
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 23:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783639114; cv=none; b=qvva78yeRE0b9eQw8ENMtHi/grzGKNAEuBKZFKIabJYMbLMsz8oIg7/tBjZtA1VKI/df6IQ0PZQWWuxRIQl4HeluOwpdRATj3ZlAmG93Izk0FV6HwvWrRdmEaAgJfvZfYcIZX5k2hnTfJd2PtPTqgue13qvP1WRyA5am84HYkeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783639114; c=relaxed/simple;
	bh=ao9eTaZ4p2YV6GQdHOcRFurARAwvp0NaD3OGeKc7jAM=;
	h=To:Subject:From:Message-Id:Date; b=ldPrTaYb3269wtzDFKjUT/4/z72TyDuefJ3jFe3RlQn/dZZdrppZU2OpW6uz+Tg6icAZ/EtoK2e7aQoUykUV4k3pt+T5Y39mV2YabHAqlCHnjn7mltShy6gum+eLbw7mEj/JWsXBi2UZhAGjxwpvGyH5MMu5fUE2yRNG9L9TXfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIiFLh+p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIiFLh+p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F21C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 23:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783639113;
	bh=ao9eTaZ4p2YV6GQdHOcRFurARAwvp0NaD3OGeKc7jAM=;
	h=To:Subject:From:Date:From;
	b=cIiFLh+pso82Z5umjBp7trKSv8eITZ5gGvaijdxyXHs+iSpS5OtejXyCnH79vgVKJ
	 vwzXpF3E4EWsxg2lpDdXLAYkIHkv4a6KTJ6/C6NhdXsxWHIbKAeYBIugiNslba+Krc
	 Q8B0pq2EeVFy6EsxJ4+0yMV5wG5EcRZ5wgEH0XF9ipcXJv7E57ILbVpgrwyD4INuQR
	 QzwoH5axDBb/NOsMdGbioi+u0YGnUPNPaHvYxmOZQuuzOT6jk8iOdXsVT3Uul/56RF
	 Hy1jonBmhy0l47hwPnUHmySwf6Q2QvtC117m+tD8mCVlgX7jxeiWaNybiTBJRtO+bK
	 1fGSd+IfGrRaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8636C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 23:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178363911368.23699.5404318250485464385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ee0da893a57d97b0df3ac9f073dfd0c00fb2abb0abe18e9194401c44f7e06b6
Date: Thu, 09 Jul 2026 23:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783639113
