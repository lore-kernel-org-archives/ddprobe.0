Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457B61494A8
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748699994; cv=none; b=Tw3F9fANC9OodUKEuW5TIg60S4/bd2UKGOhQdmexdZ3SYnizFnYFCxZGHHhBuNUt1S5jZHjOAKUlDshzzH4q9KqzEYbaUqKxeQ97bo7aYLVvAZgU6CG4f0niHIp20jDDq321PFDdirmQ9eiT5oIp3MXbEO/AVHSWV+tB0BfeRfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748699994; c=relaxed/simple;
	bh=PaZie7UUGlK6o8b8xpjtePl6EDf/+QHE0cF5iAIjYyQ=;
	h=To:Subject:From:Message-Id:Date; b=XgzG8AnNpMkSXF9yQw3SJJne8RT3oCanbQ33XiawoUUVVWgJ6/evpAPF9aWajRsPp004gYu+8KzjoFhJ8jPZQX3pzIkV2dzsSAUeUntecqS5+9PMq/U5wMVXBRYPzeHuSbjzqr1Z79NGOIpdoXucFuNWdedKphn1Nc3366RL1ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pS79Jm41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pS79Jm41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95C6C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748699993;
	bh=PaZie7UUGlK6o8b8xpjtePl6EDf/+QHE0cF5iAIjYyQ=;
	h=To:Subject:From:Date:From;
	b=pS79Jm41bFdVhaOgTtfDv9ZNEqOwYc55zc1ZHbaQklbryMWoBXW4wY2CsXsFcqhEj
	 0/DRRRjiJjw8BaCuOS1T1EuxAnhEeKSySvJoEXv8b+6QZecrWnnu3TcXV7P82w7Y4M
	 kiDx30vriiKlLSGF25u77LrPVxrKUhnE53+LU9kmeWm+29NZqvOuCDO0eG/YkZOg3b
	 hJisCkvcZOhEJQNNPNtPhb7hn7xLo+hUlvBl3iwQRvtehyRXaJk0wjdklU0woNHvLs
	 A5zxCdrJBG2MxGYXmzY/C4vccqxXch2LYaRDLq9K9K2Tx5a73TBsfPE3X7xyX2y4Ti
	 KeWq+U8doM5uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928DFC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174869999357.12732.10805272657076917789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92d0fb59f3800cd606759a287ee339d0a44e069e3ef980d92f9d3498a3eb7d01
Date: Sat, 31 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748699993
