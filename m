Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F4245014
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725793554; cv=none; b=Sb/nytlUDp8mQ2wp3ouuU696bk7SYSviRDJZzPWcKzMmwkjLeF28ewVNOGr5D07zQ9HkaNBObSIpDTbYKvfHWUl7i/Eo6wpwnzyXLRVgZWUpowCVWYRjdZZHKQg9zH811ZL3tVwOkkAQlNZ728awfVi7S0gO7fKr+wTbtsTZsfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725793554; c=relaxed/simple;
	bh=UIN4Jcj0uq12EwHzLhnR1oXRwjPhDE/XfXmVw922IV4=;
	h=To:Subject:From:Message-Id:Date; b=XG4Rkee5VwDwqYW6Pploh/YicfTIIbczEPcT+TOtXIzUdQXqKFNvy7Q/UuaDh0eztE3JJjhIYaiMLUF1T0SknVypgqL2vwphDMiLzGRd3RPvIKy2pgceWrfHVmUXZMatKyZmGlcypVaAPGa386OUKtl4KD83VhJBS8d2L6Qj/Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lNmHDfT3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lNmHDfT3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE00C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725793553;
	bh=UIN4Jcj0uq12EwHzLhnR1oXRwjPhDE/XfXmVw922IV4=;
	h=To:Subject:From:Date:From;
	b=lNmHDfT3cjbDREenHqZFme6zdsC2sPdqcPnINYnKsb/RjyRx2VyGj9awl/eYGACMA
	 PSvzNKcFTa6FSWUdj6J4CNCF73I4Vg6HS2bcvsgV+QGJeD65fZSs3p/cXb8qospxgc
	 D3aZo2AWkkwlaoCBa9FYtDNn6IOg2Ggiph0YIdRr/Wv2v6uLg4t27AvsnKdQXTv1ex
	 0rCZQ9CWYJf99UPd1Ax3R5EXV6IANIaIyO70AMj/UwmDNLZX3ve8kEKv2R8vf0p9nB
	 FXfYzXQpng7a2qjfbRNIrktkTLTObeF9uL/1wON4nk0KilyFgIZbCI8sG3agqbCLb0
	 z5zlcgozKVtKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6C25E6FE49
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172579355367.3297.17457874786627096739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8ae7eb2ca997d363dddeb7bf5d4f6c2020620e5e4604802cfe49add52f0f73c
Date: Sun, 08 Sep 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725793553
