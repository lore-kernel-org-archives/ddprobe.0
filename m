Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FAD1B95B
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749000594; cv=none; b=tyNxaCZlmL3gZHF3r+NspYmBKYJolpaFp7JESm5UlT/rXIOhMvynYlR501j7MiOuGJzjvhmzgqf889Lu+g4TvilWFufP7P/xu5mGpy5NYCMyECS8SK6yXn99455z3mcArb9S9AbrZn/zsxzlivdQw4upT5yypHj38hPA4Lk5X0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749000594; c=relaxed/simple;
	bh=zRdQfS5x9pDN1iksAK3YZWwYWJx2DtCqbc2wlrAu4tk=;
	h=To:Subject:From:Message-Id:Date; b=SBHwxkdsSomm3ocQkO3g8SKH5RmMfhKl8W0KAiAPfC7HQ37CXcG4PDiF4FG3vd1KKnrKjiUsh5vv+62hP6BYnuvCod+5uXF9vIo3b/NU9SYNwPMnt/ISWy0C7S2aAdENqafTd16ttfcsO2UCAZkTB6awRiEFpckAc94agD0wqKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ku2Y+BB5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ku2Y+BB5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A415CC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749000593;
	bh=zRdQfS5x9pDN1iksAK3YZWwYWJx2DtCqbc2wlrAu4tk=;
	h=To:Subject:From:Date:From;
	b=Ku2Y+BB5dbG/XZVF3d3i1s3ICfrLmVdgzaQcEFFW1kH4GHZ5/fnnqelonqGmHqduK
	 MTBV9IkipiUaT/yoIZHukwrRd79UIV1uJSl+hUUfbn9LR6rj18VKPYGNiYVzUZrX7C
	 EZ/ZG4CVQbF/yPNlvAuWEWeHnnbtaJ8Ex4qLOrMDdraXH/gMNRyLrfVZVIXZHKosVe
	 BwVRGu7zgIXAHSioFtRpUbu1gNHPbubnyohjpr2IS0Lu1np9Ff10IXqeB8HXJFlJXa
	 EaG6JndTyG3BIWZucl36WLyjdyYLBwBprlrb7wNYrkh0G7rLdZWWfx3Gn2P2Pl5wVZ
	 0FTkJRK30fnOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90832C5AD49
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174900059358.12152.14195147116961879536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44e11a1439b0479a095cc41d10a01c42d88d8de94bb15718d105e5f1bc4be27c
Date: Wed, 04 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749000593
