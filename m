Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3BC230BD2
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755196794; cv=none; b=SXeOgWQI1dCcBiaAV+igrtoYS57qdaX5b5ejLTt7GDROO1N97pnP2CsGvX9QuNjZe5yR+GeRtcUGFCXJJrJJlgHLY6pc3pVxiV6avpPEN/RAhub3SyQzI6OQI3XPgzOwmiaFBuuNUMb7uJaiLJl8i3OFX9yaN0RDYrtSfoC2Pss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755196794; c=relaxed/simple;
	bh=DkKRSjIYzO3PSYyFaUU6pd/KUC7/3QK/zinvinBvFJQ=;
	h=To:Subject:From:Message-Id:Date; b=JWTKnMUPVH2ug9T6Ph94EWp3qfbveI2ZrogiNprVBtKf2kdpptJpQ0bTXpAEA3rGNr6d07oESjduyCHFpImyF8wHyLHVPF1PoPrrpTGaGbaURpS8zZs6zR915hSEKZm2V4DBA9+32JDmy7g/mKw0kmkC0tWa1ENO2ydt4UmgDak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Va+BNcWT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Va+BNcWT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E762C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755196793;
	bh=DkKRSjIYzO3PSYyFaUU6pd/KUC7/3QK/zinvinBvFJQ=;
	h=To:Subject:From:Date:From;
	b=Va+BNcWT7jwacdVL5y7BsQfuLcDKgf+rfP+x8YCw8x8IWXj5i6KGyQ51c0Q/NXUrk
	 h7wEI3i9q+IcKRVtHyrhCzdN5CUuVMMPCKc3/B990rBlsT23CCG+5M0G61i9DPx12J
	 bMAuuPv1jBSL2fERka2nBfeRlEgn1WKl75d47dEwmL7SIBqAe9PoRtjmGGVv4Hf2BE
	 Qvj1qvJsHCoyy3nV6UfmSMVUREfWm4YLJsGiPjj6O6TD3xLJ5R4GtmlQISDzeNr9xj
	 rVZNuJzuEyKMD9ZrOWoL1njZLA7S3nfhjQXq4W/pyOZKxr5kZc10v7FGqM9yIRgVwF
	 Pq368vYC2QFmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F124CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175519679357.13381.5001222165149132489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff99cefdc390e4d1a37a317bf3f7b082fb9671390838ce7dd1007566d959b594
Date: Thu, 14 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755196793
