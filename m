Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253AE20C00B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752664794; cv=none; b=RWQWZzVyzG9FSvF1aUqAyTRRjo5wmg9CjaGPDOfR2Hf6yaKWGV66gwuQWygVnM3vG0szyk4CQvUHQjbM3g/is596ep+FBqxn/bKGd9ihirw4V9Z6FcO60Rp/UQWIOIoyMLBvP8FdchO0i1WfBQgsfQVZ4eyzUCExY9RaNoIIv2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752664794; c=relaxed/simple;
	bh=icaZMdm6mohrcETLtM28M/N/XyqIaTCx0eUl9CIFCzg=;
	h=To:Subject:From:Message-Id:Date; b=g5/J2koBxUKsQfF3Kp2QEUIM4JrpwEe8SqmqNjyiogPC7vPmM0/njW4l3Qw25+HZ75pc3UwVk4P9gwag/snt3WBkMGYdJZII7Cs9BKGqWt4n+3xOfdVlVEWyssKsr/I0oPPZwes7J1Nr+gFgXKDlPFB8xcIZMQUGyHP/v/nH/ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMGSnmh1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMGSnmh1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A193DC4CEF6
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752664793;
	bh=icaZMdm6mohrcETLtM28M/N/XyqIaTCx0eUl9CIFCzg=;
	h=To:Subject:From:Date:From;
	b=jMGSnmh12wq72EAbic7LMnAGCRjhaso3lOn37Rlk14ZWbWYN6O1yDczimhtymHg7B
	 mNvKqK1l8LGKGQoGMQ8VExTmn4o+KB/LVuTCg6FULe5vWGk8Sm0rxVZ/mWV2iZQB3s
	 DLoGKNVhOwWW1+S2JNfWxYQnw/CtBGxtWsLK2RRtXt5DzZ6XzhMWLBZirSCzPeI/qO
	 nnsZaZkkxxbaBpDPo5wctJAlgBXZJwzNF4tLpsf/t2bUqlklrukYhwfwbeDz0CA7Gx
	 M/fQXWHgfWFKCt5r4JTy7eX7V0b/Tf0xz4hlm6PzIAfxCPlIzojps67FJoGF+RSHv6
	 f0KlYVUjI5qog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F638C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175266479357.10366.6495100134419990485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d11d47ea224f5c3b61a9b44e5999a56d5ac1df5d3b1fa5efbc7e80ddbea40c4
Date: Wed, 16 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752664793
