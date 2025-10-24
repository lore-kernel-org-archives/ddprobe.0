Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3B030BB97
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761299394; cv=none; b=UKXeYFim5EgCXS5bA/ABFBkvOYbaJ+bf8bPwro7Tztq02oV6WkTpp0+iFaEVZCZCI9b0rGN38a0uYX55fqr3dZkP4duXCiKZKSsYXq4r/MhwKnBjZl5ZQ5AfjIplGEF9gnJu3GZCYO+URjfpRHkiNKAXAivjwj6Ndo9M+r2XlKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761299394; c=relaxed/simple;
	bh=ssinmXv6UDfX4HizQb7Fze6d1jLhYZshvrzlhI2up0M=;
	h=To:Subject:From:Message-Id:Date; b=WZ8FcLuj2/IlYZ7z4dC4fCzYZohYzzNM2dtBB9yIWDh6KwQuHC56/BllSoU6Y3yeNsggwmj72GSKcTfIwZnah9r/JaObI+qdpRjbK53I/sQcCxNPvkPT30D29wUCHmcbvifewCaZ9Wox+hoZYQYiEryisPysmW7ouE8+vNhW9/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdGNMkGe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdGNMkGe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB4CC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761299393;
	bh=ssinmXv6UDfX4HizQb7Fze6d1jLhYZshvrzlhI2up0M=;
	h=To:Subject:From:Date:From;
	b=bdGNMkGe6sUwOnK9pVUH0AvC0rbKY4QfXvMvENG6avSmiqI78mXPVHuu1xXU5PW51
	 xMA4RJLUDKVGIfVCCyxpDn5bmSsm8GZZpjfOsWcLdbrUZm7jsdRLeGVC3tWMIc1puN
	 crsgutWzlKRVbpXYMIdyTedfaJnrpiMvk7vbsH/TONbgCgXUz+QAM6lhzzRLOkoWt9
	 pQA89DJtFDt9waPaSmSHzYyobjQuhfG1eaDQ/BOJ9j6uIYDExoapSBukwsnNazy/Xs
	 WQ9UKnPamQBZ0PvsZQX7aX5RBBQEGyVLDpAVhAuV9DsnEeMKbr27KQxuDF9IPoHt1M
	 T0Nv8PoCmHyVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A24DCCD1A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176129939361.14243.10143779408550641138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a5c3b4451f690775b9762e9e4d356b8d06fbfd26291f5d74c39f51ab63a3e5e
Date: Fri, 24 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761299393
