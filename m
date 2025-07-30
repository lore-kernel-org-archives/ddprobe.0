Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282E122A817
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753885794; cv=none; b=osAMpPpQ1aXmCKY0cWZP73oFsjB31lcYato3UUbBtAoMoXV4Erb3eQbkOjq0wZsmE/Hvnwlj/7i7N1oOKDPrPj4jqeiNQSQG5+sK/AnVyRNgleSr/0YLCSQ9rCuLwVeErZnQYaThTyJ2Nz0JvACkjwLV/mf+ktsSphT0FPsJ+6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753885794; c=relaxed/simple;
	bh=Mh5sv9UJvgOuPj1er7YgFx9aaSshbvmT0xn0uua4fs8=;
	h=To:Subject:From:Message-Id:Date; b=AjySOxnmfhf8iP6DkmY0TvtV6KpjymwNsUanSmq9s7YSTZgX3s5uSu7a9Y6nF5h1jBmMPAlVs4uyhRUwHqKRMsVTGVkQHvqALYpLjSQMqnxcnUP9T1yA6wJcYX+gTMLeV5WM3QRJhRBGitO8I400BYk8fBpiDGHDgZwLi5kEX1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+Gmqaa4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+Gmqaa4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1109C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753885793;
	bh=Mh5sv9UJvgOuPj1er7YgFx9aaSshbvmT0xn0uua4fs8=;
	h=To:Subject:From:Date:From;
	b=W+Gmqaa47gSoW117VngqFJJ8mr4uL8t46g+tqOaYgMSCrQc6QoYbSjXcAR7v7p1u5
	 E6ROi/NBEpL90rC0qt8k09RKoY34CCI5GdRQgzW9Ufd3GCuOZBj/Yp4J9h1aQlKveB
	 FJbShFDIlHTlHn5d8HH4ckULkMnWolGRlhNvIXuGlCKNcjHa0VRoWjLgxVzg53y4R+
	 WYEuztBeSqBC7/plWd5yKIWvYqsrZOOq+aqTkpLaUvWujlDWT9ack/iqcHOeGTt192
	 KpV7K+DuLCMjtD8BI7zk577bPnRXGgUjRnEGyOg7YU+C/IgWXzlDJxy2UGJVnz8Q4M
	 axtrZ8ZgHTw9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F419C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175388579357.6496.7745120373388032950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 334fd27cfa4284303429692fd74122a9cc49181784de2027a98e5aac2da77e8d
Date: Wed, 30 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753885793
