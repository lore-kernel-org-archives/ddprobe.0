Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3093C246764
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758581994; cv=none; b=dzcMMWbKX5qFmDvjs8NC74zvasm/VlGDpV4LtOGxjDB+vGiHcsLHEkx1biYdOX5dtY0jEiohTLtmPO3a0ah2OZA0X7AkR+WYUjj9doI0p52yWUVWQBuI2g1EcBwcq5Oj5A3p0g9Y+ggWDb//j17KjHDU9sfQ5OP9YwExuBLMRgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758581994; c=relaxed/simple;
	bh=G93GmekEzLtxuYqDZ/h2Z6tdnS1bqLOIHQpfMpUPavs=;
	h=To:Subject:From:Message-Id:Date; b=N77eAuH2+EszaVnAJnrSlbXr5Dw3ydyIqXHaK0xER4hb+aRfi4M5RJKRZL/s9ooeTU2JsdUA/TR7wX44mqB13Sey/KhScU2adKpQWvjm8l88ZOWWYWf7GgYmBm5y3ClQcoRhPCmEhXKuLQ38M0uhaiI59kD6SJY6Ahj0/0DnFZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sIfu/Bqb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sIfu/Bqb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE78C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758581993;
	bh=G93GmekEzLtxuYqDZ/h2Z6tdnS1bqLOIHQpfMpUPavs=;
	h=To:Subject:From:Date:From;
	b=sIfu/BqbjNiNC7xXmmB4jl+fCUYq6KVi1FQxNkFtyNyaJC6+NU298XXBqWpq+7Did
	 UeUCD/AbirhlYldiZiqG7mS/qjgDbhBlA9prVU9WZW5RegJi8FpyjKW4lq4dI1wZra
	 bbU7xiEViMQDDcVD5nkMto3tZx7dE7L/QCMH8a7heYYhynPtmse/I3cEtwk0+6dgbz
	 T5X91GsooEgHHefA+vnD1PUz3sFL0FHOMu5tDVqkuZk8gLLs745YqRiyIKT/rBkFuA
	 t1jue4nr2jTSqMbNV/ihQSy/6OJ8+fE9MY25YckzPpVE+qr1514vOUhwJtl2myankH
	 AICI9K6I/Bo1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95794CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175858199358.24407.2933811948605933414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe5b540d70e8771ba10792336342e308959d9468d953e6d8897c07496d95e234
Date: Mon, 22 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758581993
