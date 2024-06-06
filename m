Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBD526ACB
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 15:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717689443; cv=none; b=TGw+DKDHlLLl0o6BGhr0ctDXJYXCoJt3AICX3K7dhTpV0OqUoFgVrpvCiMk4wCnCrk6d9ccQPCNnAgAILQR4rGuMDmsH78PzyazvrWL00e2atnVFA8JXFA6+ABo83fau6+uvI72QM6grOKw8YPuWWVNYoUEkIv43tIAYmDgqcVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717689443; c=relaxed/simple;
	bh=IAxuapVyj9mn+mVv86oLkBrsLPREHC4Mjfxjurm3gdw=;
	h=To:Subject:From:Message-Id:Date; b=O1+egepuGjsm556/7Qk2YOCaCwarWfiTUV7DFmrtZj7xDORj9ZqWbFy9RcChK49ec9A6RtOU2OWtQRmXuh5HIaR6Ns0KxfFU1enXNlcXYsDkctAXu5C2cC/lCBEhcct4A5O8+ttluQPSHxO5Y6PG2+ElvFanq3pFs7IPpkKnzNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPQ+J+cW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPQ+J+cW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF565C32781
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 15:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717689442;
	bh=IAxuapVyj9mn+mVv86oLkBrsLPREHC4Mjfxjurm3gdw=;
	h=To:Subject:From:Date:From;
	b=LPQ+J+cWuTSQVT/lM+oJCemVuvA/Pm1qCXMH5VuY3gE25wC8ed29tQlL3O4HKgVA7
	 /Zn4u7kFvDl4UeDjOV66pc1UIiLYhj7xOQIaozn0WJeHBdvTNlpwjWMPbvxVHosJY2
	 +/nWvLxfLibmEdoqTlWT6KbzJCBb4ucmcJFSERvWiNba1RkltjCrN3oVFXuShi6eZR
	 7XgMxt8m/HkLbicVbEFuHn5kwTtfd+Hp+moc8AIkZagiCZKcqG+zYhqMwWhL7F0+IR
	 bDIDJxJbtJ+YbNR/0fA9Xl+uRxnNSLp2Dt2NoQtwCM3K3S2uhjaIhTeSnUOpJ5KWQk
	 s1W4CEtmkj7Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD7FCC27C54
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 15:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171768944283.2610.1593838307574300033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf92d7a8cbe7fb80bc5cd1060d1cf09983e53fa325707c1ed3a6b19fff348c50
Date: Thu, 06 Jun 2024 15:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717689442
