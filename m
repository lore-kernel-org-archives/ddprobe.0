Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6956A1CD02
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 23:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720223123; cv=none; b=pOccLh4RNnzWVC8+p090OFR64BNzeq26zUvqkZiiokfCEwMr6LESeX4fKv5KGX3MH/K6MO0aSrX6jj3PihUw/h76mcH6l4/6vHtRLAOIzMoe/Zl0xQJOW3TEWj7yYyxsZhDMqkf7TjR+KUw8adP/43kurkiIhstxiteh8Q3GhEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720223123; c=relaxed/simple;
	bh=lVUX6BTf7muyWcYtt2BblflEW7eXHMzAWDPIGsXzOKg=;
	h=To:Subject:From:Message-Id:Date; b=AY1zkia1iSAan00ZzQGbyrv2VRf7s7H61jjtqvbL7LeN4Lj84wPdHkXX+HgHeLddxCezLjtU6EvCKwfdxSsZFKHRbFSAM6DAQT5rBaWmdNHQnSL5lFMWGNnWaw1XYEE/z/0D8BZzgTBE5ssYBvUzih6R9vVq68hnIwI0Bc9AIZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HEWI4dWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HEWI4dWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0EC7C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 23:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720223122;
	bh=lVUX6BTf7muyWcYtt2BblflEW7eXHMzAWDPIGsXzOKg=;
	h=To:Subject:From:Date:From;
	b=HEWI4dWxQqb8v1gliSjYVdTlIhfBwbmSSsvb2Csjmms1zNpbKcWzW9Fne/HeJih57
	 NuaSxlhdnEM+Oi6eAiZwnMSHQBJPmNXUBy/En/OxaTNuJffvpLN6Q5bkUhdYswFZ6f
	 CVgVJX3Si3ic3nr3ag14F7KADpKjVIV2XT24Q/iy1m2bkMFfjmjvCqa88apEFYscR4
	 r9hfk6z0FUZYvrce/A0wGnndSvkWzX2gPNObbXJwDiICva8TCLegs79qgFM1dJcGVA
	 ZrSmX89IzKCNUBoxmkfTh4snmZBz5NRkkCQlVfrxgOChMcsMWoWHcZPkcMQ7wW+8Mq
	 1qmM9q7kkjZMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E67C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 23:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172022312277.14472.17557098245171911649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af58de9708d432d30a592edff142d3eec10c99300ce66b71030c7fca4fb24285
Date: Fri, 05 Jul 2024 23:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720223122
