Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533A2263F5D
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790920234; cv=none; b=GQN2r4XOU2kl81bzGJib1G990A4PTp03F6Rsdbohb53y5WvLzXc4PlPfWlq/vq1z+MKt+/OJcUUbYNKPI9on/RWgBYlKdQ8mpgc0T+InkUuI2EIIS5xverbiqKltU9XMkcK7zdVUBTR+bcXJPNpLbhnBtDhFJKzXP9YPCz69Jmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790920234; c=relaxed/simple;
	bh=gWWRCec+203hTnWj5R3o9snQ03KVjAD4XEEPhGKl/8o=;
	h=To:Subject:From:Message-Id:Date; b=t5PojjT4Jbs30FJ+JfKS09ZwisHEdgyAJ0HvYgMxUGYApEm25ff+e4AVDTjoBrkUeEsKXwEt1t9QYuropbqQYIieOWILwL+2foHnD3tgbKG1kYfCmlUopCVE/M4TbuFiXgnkNPOeAraxESgE2DyqfdjnkwfVfl3MfztEA48ORuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6exqVar; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6exqVar"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EA5C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790920233;
	bh=gWWRCec+203hTnWj5R3o9snQ03KVjAD4XEEPhGKl/8o=;
	h=To:Subject:From:Date:From;
	b=l6exqVarewRok3YVtmK858J/ulW3p747ILxXMdhgN3ad9rh7V78yo4n/lwjmFk4Jh
	 ntIVk1oenBoHnZTytF8rwZeeMWME3EnxovvsobJqcLn7UofoizPOYsvHNnhxhvvEa0
	 t6T3XUNZTB1V4laMjEmokrWJVaY7RXe43LGoSCithTxpBBXyR/rdeEEhfRqnbj/Hk+
	 1UZBFaqTh0oN/Gx4z8qz9ngaSLFF0aC7MB9ntF1c3trF+eVju6FILcB+A0x/RPwUG6
	 oooVMcICcSQ4bcfstZ5AU0O296FNeJsAHdtIB+/aEhRTbfddkwgj6gC47BWlcBv4nF
	 hT2Y4gEOxhM9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7B3CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179092023368.20851.3958618114558600787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3aa1b16e15f24e53e198ecca29492b420f56cf5103c637e11687da1e74c0aa6
Date: Fri, 02 Oct 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790920233
