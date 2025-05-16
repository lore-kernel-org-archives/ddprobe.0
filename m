Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302851547CC
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747370994; cv=none; b=ekQQg7K9uajsVn3Jz76i5eeKYBzDqw+OehW5XnYjSzjGt3qUvyCjOZOPGb2M4Zm9CA7AofZOwFUP6gqR3PeeWppraHOGWHeR6iokGY5PIud+8ciX7zyrhtMv210XrvhwjhZiQkvVU+n0KDM2ygFTweQxeCkfbBBuaCuJC8OBinU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747370994; c=relaxed/simple;
	bh=Rnyo4jAcLfTBf/p2AJGU9Luy21USnuzqrcQc0HbUnqQ=;
	h=To:Subject:From:Message-Id:Date; b=IKnm/6ze5IDHvM0gPuOixzVk449xYjYuM1LmTwG2k0sWjUdP/EELZLe/74GJhlYWJK/2pJU1dfdg/uadflgt9iKp/RrOCl8c3hwLj/tJOm1zwxU7aUhKpq1eIveDdPLSHUFYTjarGjoXwJoS7wcAVZ89O1yvxqq1wYoUNBBS3zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebAOAvlq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebAOAvlq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7165C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747370993;
	bh=Rnyo4jAcLfTBf/p2AJGU9Luy21USnuzqrcQc0HbUnqQ=;
	h=To:Subject:From:Date:From;
	b=ebAOAvlq1pwd5Z8IffcvfwFjJGYrDlvDQoVOUMcpMiqZYaFAaao9CxI+my9SqYeq8
	 Z/yNbctNC/aRbPALNqdb9go0KcJBZoi1FmF8MJDcCJkQYIdnzEcANKZDcb7Q2B2sjL
	 M2rgGvL1/nNqhWCNzJfewIiWPAiuG15AhQeCiz022Hw0kdMS1d8E/uSjC4dfv5zLJ1
	 +jVfpdqMrpfkmMnRHmomHx8Q7Jdx9kw4anpxz+l2bMyaV1P2B6+WcKvn30haTgMxCN
	 tOHTAZY2isLyZuHsr2cJivUkj8ujBAXSpvG8LfYlnYV9N26DELA0YP0g6vtWrkGKII
	 qya9kOuJssIuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C81C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174737099357.9262.11217938071323359164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf7110b1b61b2e758abac622c36f397f8ec1467a6e212b5e7e1fcc2affdd3f75
Date: Fri, 16 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747370993
