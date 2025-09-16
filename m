Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E582C3244
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758062994; cv=none; b=LKZ5U/9r9ZvwxOhsjpt2GNS+STx30mm04XTcYeQEZHpRsBn3XFLfwTGJaXljRZWBwiMmQawesZcC96lfIB1aMTjBvILH5CfPT9Mjd+vYgsXqqd190NOdyhphfx++Gd00VMz8ukvFkXExqIqC997x53Kfx3iDpdQZqSAk8CSGGMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758062994; c=relaxed/simple;
	bh=s0d9VjuKD7Bg9J4VrshJvsjy1QPYDPdQMu4QzxnqzEs=;
	h=To:Subject:From:Message-Id:Date; b=LGAav7AoqdcayAqwffE3HeS8ns2gcsmlg79w2Ue6BXJCv9Aaf+nqlXRFs7AMJKL/b/VLN9du6+JmrtWEZd1vm7mPPQ40OdPmRW58WMbDCekz4mNxdntZahj/4C6uMzeJnp6dIlDxZXgbo/SadNy3yXlEdJbbztuRr0+bZ/7cW6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+cumqHt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+cumqHt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2550C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758062993;
	bh=s0d9VjuKD7Bg9J4VrshJvsjy1QPYDPdQMu4QzxnqzEs=;
	h=To:Subject:From:Date:From;
	b=r+cumqHt1gYh9wnDKVvPwFVgLdRxz3It2eEEA7EbvPOby/jG+nRk/Vp0e8mAuXBTG
	 GwaIOcDVXn1SfFbmDpGhtsarBfQgxSYh63ljyx0V0en7Pe30BcqIDc5d+xiYId5sRG
	 4JOCfe1AqZqbCmGk5lqwzXD43UaWDM6h6L4JgcnEwlfR9GY6GqVPawEdVZXyHIgmJc
	 OcvdrOvv8BfsPfEr6dolexaMGZzqe2ByFh+JG0axwnrq01KtJvgtiuTPrgdbuMTUTO
	 ZS7tjMxaWKxkD6rsxN39I/Kclq+/eDq7k8W7PEyNspc5XCpQCvF5g+ygSIKQV+QAre
	 IfcZNJ5iyYKIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD84CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175806299358.26822.375058578416091870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff4b0c763794ec7e16c4c0ae8db55218aa12f46b483f38c172b9c9c34338ed2d
Date: Tue, 16 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758062993
