Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4028B2DCBE3
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748208594; cv=none; b=LYIzsGOeu/HlTlTZTEYIKqRsWvNd9ZGKgwJbiDJG+ZMkUJk52xyNar+SCOQ+XUnHQXWwiDhcLOxYE31HRuKemWBMy36L1RV8XsfriOG2JlbLCaSiTa8NZGsrIwi92CfhKT1HDdD7eMRqomw+tb4KM7fbsSBub1bm6+ErW27jo6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748208594; c=relaxed/simple;
	bh=1GWMhqugRTV4w3HXT+951Q4Mw9uqRPMrK3VERP8RUVs=;
	h=To:Subject:From:Message-Id:Date; b=iwJaw/pKIjUGeScOiRHqKO14whzW07qCbXzfvp+OEjs2MiDBtMBARPPO5tiBC5ydW1E6dG3lnatusXUo2Bl6s15gKbk8Dc9brPAGd714S+YMtVyZQdo+asiOKfGyJ0dngXUBJA1NuqmjW1nCN4jq6z2sH2o68HoCBFXXNbWql7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCnc9CYO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCnc9CYO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB27C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748208593;
	bh=1GWMhqugRTV4w3HXT+951Q4Mw9uqRPMrK3VERP8RUVs=;
	h=To:Subject:From:Date:From;
	b=CCnc9CYOkRjKC8UtgzUQ5buazhLolxGCOwRl2uKcJk0NKNM7j/fMDfE6T1JRJdKou
	 SEbAiTtXas4FaV7Tu/6/xWlfZteOq7P2WH+rfz3RtYPNFtxlzQ5bD2WCyVStZKSyEk
	 gSZGQHmac4jn79zC9iOsz3GaRCCnrRmrjKFMtnDniFNG9qzdkD1oY/GR8NEedBZ2pL
	 y45PGYXuY9EHONSMuS7DARe0bGOxOVj3tX99kUTfBXGkT3w24epQ5AXUdGnzz8IeQV
	 4JCCyewqvPtQXlsN9mXqCLYUpoCSxbCGpgAUk6x5wgmndxrvXcvuIls/41pzY4AdrO
	 VuMFtnFQFZw1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C46C54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174820859358.21317.17720333322266645028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 403d2f44e8a9ca22249cd0ee9910ad9f8ab6d64184501244aeafff7ea64905a1
Date: Sun, 25 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748208593
