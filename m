Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3938826F450
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745407794; cv=none; b=SIk5WPnlEpaNMVfLqmq3IM45U/7hjCI/VEKwqdpQKQv7hfOTWx1GZY6pFEGT4J8a12/iwg7vK/LKOO6ThzpmOr29Wt42dZFCaHqZVSglWMNdmU/FNBY0yXoNZ36Wj5xj2DJFoWvv2Q3B8bbuskj6AQ5kmuZJhJTAfbJnU0ikgnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745407794; c=relaxed/simple;
	bh=fSQezil1tyJVVBqlMlNFiVVBweh45RzkA7NeGmI3xGE=;
	h=To:Subject:From:Message-Id:Date; b=Ta/xT/PtEG8sFn/HTWRjV6+ADAG/JVYS0TrD7kdK2vpvXTN2NiVpB7/DLbEYA6pM1eIPKLUFl6wjwGZU+OOHJ6LoFLVjmYGEajJIqVKmbsqIyiDJj6AG/ha6R+NwUopgrZDKRNkJfVwRrp2eUg5/pRb7SHEzjVJDqBzSNrLIg7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zk0dv96b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zk0dv96b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BF3C4CEEC
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745407793;
	bh=fSQezil1tyJVVBqlMlNFiVVBweh45RzkA7NeGmI3xGE=;
	h=To:Subject:From:Date:From;
	b=Zk0dv96bdjP9SnMBNYD+h4k0NTI2C2xbgs6IYICO7ofBTVlMw8VM3MVjgmyqFOBZv
	 5Rp3cuGHSs4ruDyZaMNFwTvjQ0QM6SIUS4hiuDmP2xNtG5IpHIdNFT1/6olFn9Yl/r
	 R40QabhS4uD7Kd2mVP14lkJUXwe+b5IvDCjDHYOdsryRGtKbjREvnN4Qa/d8cFYNiu
	 FYs88dbwd/SpZQhVRPA9LOtAIRCH3pYmR9LthJQjaQhTZLWYsAj+DOiXBI74JvoWKJ
	 qyU16l1uRW+HbZbnTWF83muSapWkmxkccOrm1l5KxAGqPyRdRRKVgC66GkuwE05X0n
	 0ZYZpnclQmpDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91672C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174540779358.24794.17427025348944719919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e4716e76afdcb3c06bc7217a21912eff3679eafbb503b2b24ae6434b2e2f6f5
Date: Wed, 23 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745407793
