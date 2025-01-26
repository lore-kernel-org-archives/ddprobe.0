Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C28778F32
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737908754; cv=none; b=DlyQEBB/jAZvprq7uj2Na+f4knlFaU/BvzFMXg2VhD1cg8OOQaqeKn23pRlgIDDrQ7hmLxnofPQpop7fZY6aRIRluII7y29HjM6BtPuQyOeLDX16tZw1Nc+G2BLF570iP04tWKHRT0vh4+xWYHnfv1L40PUneTrQA1d7eL3VYc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737908754; c=relaxed/simple;
	bh=KnpqJnZk+B5VMU//zjKcNKwcnbPmDmIqRcHKxqOzqe0=;
	h=To:Subject:From:Message-Id:Date; b=pYrZcuzMe3IB6s/yj3uObyhO4NQcx3m2Y6OtCbAriJ8ZHfB8rRMulWpKFajVIpRVOrawfHaYHA4LXO4Xa6CiKwA+wy7DhF+0oSCl0hG2Fo4xTEC/p1LP6jA0+hCSVLXw5bS2gK/eN3/vcIxZwN15x+xkwFkxPBcOZO6CLOrxbWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N3fm7Jv/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N3fm7Jv/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC91AC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737908753;
	bh=KnpqJnZk+B5VMU//zjKcNKwcnbPmDmIqRcHKxqOzqe0=;
	h=To:Subject:From:Date:From;
	b=N3fm7Jv/jST5uNpNnpv5Lkvj/2f3VnAYFrB6uqcSyhYzUk7TzTeFpPSc4/y6jIKUZ
	 0HgLUD5jWUPkYPdaLQAX/Oh2FLiEFeahLEByxGGELGJ4l1IKzsDXEL7NEp+P/E3Q/p
	 eDLu0+yxZUkKC5bww4l9+kqlfXRvpXocL5aGNre9KeGACfjGJa+N98xaqKHfJ0SYmY
	 tELnf3N6KlzZnf5ACBAuq+Kdw9+35rOgMWRwMmx6u1KMH38p+vCtVh6QkbjDvMlIqD
	 I576IPt23BST35hvsb+GJhBBrvZ9GnwI3a5tKaB5sNFqkYEvyBniQ/Nk0oBTMQ1Gia
	 hEJDD/19qVe9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A34BC02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173790875360.29986.3380198255292892356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8c42df8bb8fabd0ac5a2b14ddcc18daa1406386e75c92da6abe78d6143a4c11
Date: Sun, 26 Jan 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737908753
