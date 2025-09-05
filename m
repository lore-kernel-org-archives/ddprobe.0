Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A405290DBB
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757060395; cv=none; b=HgOYz1eUBbuI1Maw/WIPZ2vIkz/fg6EGyrXwo9H2DF7NQWFuQYgqhsHUe/oQoKMgpA72AFA1NV7Apu1hQIgEsSlzf2bP3sxHcSr+1cenrATuZDwvnT/lD6TiDhZwGL3uCjVpFQCXhiOv2tfrpbnmt4aRudZlkcy5xKMIAd2oheM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757060395; c=relaxed/simple;
	bh=ZJvimtQeBuq23MdL4m6wILmq4cCJA3cd6icY9vCJh1w=;
	h=To:Subject:From:Message-Id:Date; b=iD5tzjhAMlt6ik2hUbE9azTj8log5USy7ZRdIFbcZyoA4boatKqmgCg0OJeguLOCshZ/X0A3u6gyE+lc3Gn+1xDwvHgoTK4cm0RVgbG1Cw94xHS0MdwwgzW0ZiN4R1UWAplKTxWRI5qJpQ+mxJE67QIbLVH48iZfN4THEtsumGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxroUr0z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxroUr0z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6456C4CEF8
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757060393;
	bh=ZJvimtQeBuq23MdL4m6wILmq4cCJA3cd6icY9vCJh1w=;
	h=To:Subject:From:Date:From;
	b=GxroUr0zP//WjyYajwyQwYk/pRewilUWWJF45d+7b7wOmvQVulOtCb8FnMARMLfQj
	 yBfsNmhh62J5IJmHZqXA94MBzsV7L3IS5lMzmEyuWA3CaYyGmf6f+7SHy6bAwI1lUY
	 or8TA6s9mfMggI12+QKWIPIOUDqzqYkZbC2U+3LVkukKu8naU4qZa7mv6b2/vTqQ/m
	 8jTZJI8YbOlpAPQn5h4dmQ6v+HdUi/3pvIpdR+tLbJnIbgkhJXEfZGSH2bpDBJ66dw
	 LGv2lOZJS5NZ+Qc00yV9AcNK8tYR58isXF2IvmrGumwYTrRQy+Y8z5BBmVAQmbhIMh
	 3CHN1Aj1Hu/7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9442FCA1016
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175706039359.14974.14187032837465077951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a03ff685c6151f4ee26e9352979893dcd0a89bce792629e016bd8eaaba4855a
Date: Fri, 05 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757060393
