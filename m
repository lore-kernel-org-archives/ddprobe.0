Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511E93A9D83
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 15:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780844674; cv=none; b=NmlIUMX9i0Y5GQSBUaqQROlZNHgpSy1gpzONvkBOeq7u0q/DL2wc7X+SHvNYlkXeQfCve52u9jGQoe45uvaOFfc22WsZ275mMZeEmpeAZQYCljDFtWqZvVNkPJ4znQ1M6gI22JgRNpzv3h8dvI3E1z0vHEgv0oKXKccqtWi3+tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780844674; c=relaxed/simple;
	bh=VA0uPv7RWutVro76cnSBL9NXRa0Ar8LWx3atsuwDrNE=;
	h=To:Subject:From:Message-Id:Date; b=ncYwhtkz16bE4w4EZeUhoRuliNMR4uBwU/Jxhfcp8mSbVAQLOK0G14GCwepZmSoHAqm+1FoUCV409Lu3WOs1+c3RLckmxK09Gh3Sn3outUbhpzKP4yEBsHv4Az50sLDy5SbTm35tIKAiXJ4IKgWlKijayPFzBHBzT9DGCfDhGrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mld8kEi/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mld8kEi/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C258BC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 15:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780844673;
	bh=VA0uPv7RWutVro76cnSBL9NXRa0Ar8LWx3atsuwDrNE=;
	h=To:Subject:From:Date:From;
	b=mld8kEi/4ii9vjIpWnB16zoLkHFCCLHOcs34bNDPtKUwXjqy7MSrGu3OVXxnSCgLd
	 Q8i1xWyvPSNoZxaKVZp0opDFrZ9xdCAPR72vMskq0YLdGFnDtpCOUsJm5rZCRuHYXY
	 /JbMQYsl3ZNLBsjiUgNy3QJveK2Hc6KYhVh9fsVBat472AMxKmXAIUVdT4sViMjSwD
	 COlNPd7Ahmem4Bk6oFdiikqY986ql4z8Zv4pKnMdRZO8ole1SPoI05l1OfWSDpZj5g
	 n7Q/HL+miMjfTr8QL5Ds83MTejZ13uzajjNsR3RwYttuOaXY3/mBiwCbOlwG5V4s8E
	 UI82nM6f7FPZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA325CD8C8E
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 15:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178084467368.8368.2497577607703136976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fcb65079351b4fb1d81dcf53f2f7c0765b443245363f75a60020b696260b911
Date: Sun, 07 Jun 2026 15:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780844673
