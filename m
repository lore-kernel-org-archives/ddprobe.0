Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2529F8F6F
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759634994; cv=none; b=ulm6XaJcOW6praAiEMaZzInX2TWEo452cn4+ZeswOedZH1OrzHmTRRdVdLkw1pWtdK9v7F6fSfFHIokn/hXG9FEoB9+pGukYy8w3tYwgHApgix3WyoeNGqbejdQHW+0JxHSsS4z702mx5Bf78GSBvkBVIg2JK8chkMALiqUc/Bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759634994; c=relaxed/simple;
	bh=bupYKmyVvChPcRtvmhApasZgfBUv188l5jgBBrWEvZE=;
	h=To:Subject:From:Message-Id:Date; b=LNfeIlyg60xBi6gelJWcQ4ayQqAMCwZy2/MivgKUdGYzP7RXENwWOWoy4qtfCyTuNFer/uOMfk2tNHGSPE2/KOH2bOi2BnQfC3TKxRYOMP7orL6gm5F0KBIJUtHuyvCskjy0f5lVfK2i1vf0xOmHzcaBhDX/oGs1uXlZiKNeAvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1kCj9KZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1kCj9KZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8969C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759634993;
	bh=bupYKmyVvChPcRtvmhApasZgfBUv188l5jgBBrWEvZE=;
	h=To:Subject:From:Date:From;
	b=N1kCj9KZoWbZWzmkJNSFWfv1zWhWv59X5uhJa6qqllg8WMkHWHnOCc2QbPUqQ7Sm6
	 hixwFW/FRJrO3QYsyuzDnv88cL+uy6L1CQudXhyTkxctRVNpv19KsCkYVJBzNhAthP
	 kkHM5/mID9imMnDZ4ShucNvB5JFCPNNjDeSG+tikS9D+QO3yLqE161iAq2RgJ6X5YP
	 XBEPnSZ1x9ALwYXHc+7q1wjhPmlFzxPttTJzEeCvO9FCZ1/QB6A0FYx7KqeZeVnu7w
	 IHzekbBdPEJbiP14psx4Tiyhi8ogPQ7GW6xkp3IWLPXFgDK0RlxYuF583ag5GlCADN
	 1PE2Jg12uCm4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EB3CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175963499358.15112.7982789434125957947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8da29c61a2456a61c1ee83e74d714bf3613fbc5a80094c552520563cd35598ec
Date: Sun, 05 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759634993
