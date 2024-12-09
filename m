Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B521218592
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733748354; cv=none; b=jtZakqKpK4qrbmqbFmN0Wu1hVY9+l05N5ZmTOzeJ+FVxGnNZIxBUmqws0aTNI6NkiFvi4/pU31i0eso/5+p0QVOKcdWjmfx4uffcaJMOrROI/a1Z+CHM41dr0OaNScFpPMSlb/f6qBHzS1+6UCkaxbYjK/fA9mZ4g6MOIkJ2lOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733748354; c=relaxed/simple;
	bh=DHYX1fVcn4LFBXweB+9q43Kp8uNPOsgLQDqBa854+Go=;
	h=To:Subject:From:Message-Id:Date; b=H/diY74SyADxTf0x026c9/5ERbgtz+px5DmDBWdehVSeyBtzP9+UTo6dbqqmK8kn8Prnxg0g1x5fjN01YwyC5pvuCpmZ45rqS7vlQfyC6wdRX34qYCJ3aBEEmPiVglfyCH3EJOiHrtUdn7IyuYfHMJyG7/y4zwAqks9nYn/PSMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AVAIOrYv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AVAIOrYv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96AAC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733748353;
	bh=DHYX1fVcn4LFBXweB+9q43Kp8uNPOsgLQDqBa854+Go=;
	h=To:Subject:From:Date:From;
	b=AVAIOrYvuw/U70XnnzT1/bXZylOKw127u/ut33JggmtPH7FtXGwDqrX23CnmrmBmz
	 1Hwu+01plv2jYmVQCaLxi8DS6idaCfD1uUF+wUGIaWfLP/qjHwute7+GGX4o/lgrhg
	 Il2qPsNf8GUBiC3xROhRBOtLsIJiJr9/RaSZroCJHfBJEq/nK62eYvxTusUZyB+uwH
	 XU2qm6kcI9Xyt/04gZi5H6SH29HQhpjXrbAt5UAx+s8SQlOyXtcvP+SAWwaz33yXn1
	 3nHFRHXpdMWa4OXQYeuY1PU6I0LRR+fkpq7m5ikuwhH7Qf2QcEbeoANOjC7m8b62Ks
	 aU/KvIGza7kHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91628E77180
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173374835358.28546.1972345816805380662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 387a8976221909867b135ef4e6faced57e5264f08cacac47cbdef54e583c620c
Date: Mon, 09 Dec 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733748353
