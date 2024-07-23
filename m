Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266BF14D422
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721725554; cv=none; b=DKz4QoF2mLFWGub7ufR+aWtw1JsCupNR6ykNM4bvgUqqCcrKtrdoXjFIU74ZoWg/M0vkthHEFcnDCqb3dnXsn/hfW1gr8OyNv71v3PNukABRej5pbc71InmRSP71bpd3aXYh4t0T7iYzyMNclQnveyRSQTBkseZbHkKU7EyCsTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721725554; c=relaxed/simple;
	bh=1WAtp1Y4q6kfHkVtgxSLU1nGC9fcj8I8I8R5tZTIU9Q=;
	h=To:Subject:From:Message-Id:Date; b=UiVx0dfjvLHz97T8BwdBesJaT76neuDibsbJCxx+na1bOab35IO35eAA0HkySADMpAgL4QKu1YUp8SEpucNYJzj1sUa/xxfSLevxrMvxkH7OL4KLg80IUoV6XzEjmIqKufe5+fio36ybu0XAl3EIXK/mJysHZBCRYNweBuoCiGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RaJ5nhtl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RaJ5nhtl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB55C4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721725553;
	bh=1WAtp1Y4q6kfHkVtgxSLU1nGC9fcj8I8I8R5tZTIU9Q=;
	h=To:Subject:From:Date:From;
	b=RaJ5nhtlXSdTvjla69JtM7yspXBb2m6tMce2pbPMnZp3i3H7uYp9WriqzXYdwHGOW
	 5DU8N6mmvbA43AjLy6dhR5JggiGULmLSOjSjTFtAGYvK90Q7Unl2Rs+WiAjOEuVUvN
	 aawUvwlUo4k5QT3x+UHPU48hhlRZ/wZSxBIV2X752WUU8Q+N1K8W83bFjTHf+FPPY4
	 YhKG0WNmcYrra/dRIT3vG0cjZ+80haTBWHCOFN2X49nhMRjN6zdZeGAVV3cAuUHgQo
	 tHkxRsX5ieObxpXQG2xDfRslbcVJvMbwICrUYua0n2pKuq95/dDRHPUSEAqM3YO520
	 rI+WqJJOXnYHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9CDC3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172172555364.7101.1928784650621426993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12336b8adc1f5cac8dd08a5d714428d59654b562c354f3bfb8e4b7f0d2530bd7
Date: Tue, 23 Jul 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721725553
