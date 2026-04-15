Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485FC18050
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776293254; cv=none; b=LBgCJty0r6lhOm+dnL2lE0PcF5Ta6YvuvxPG95bxC9QpaqL4J0uLy5/R81WR/akXlcMyR1OZGyfbmeo9E9a2dMqihTgxdqUi5xhoznNXeovKLie2VsR4Zef2hicugoU4mTDJ3lwKP3lQlqcJb1hbViHF7Qcj4cJmjDmtcyqg65M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776293254; c=relaxed/simple;
	bh=6uyW3eJPl68mhvJAjR3cc74ma6QxtvBoH5w2ItLb6WE=;
	h=To:Subject:From:Message-Id:Date; b=aMDa9ViAPL/jD2rQ6/iEVG5/PqYqL8a3xWDd2QACEowIlM5ZYmqFOuXovx/XADS/xh7wGa6IOeddKdFXWcRL/uO9xLi1aOXNaPCZy/V5kjfP/t0JAuZoslkC2vKdBFSXJCb1ARkexEgsK7rdOF+byO2JZEBuKSv7hmV8uVVeNXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HlzK3Ikf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlzK3Ikf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C34C3C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776293253;
	bh=6uyW3eJPl68mhvJAjR3cc74ma6QxtvBoH5w2ItLb6WE=;
	h=To:Subject:From:Date:From;
	b=HlzK3IkfYSlRXCC9lswAPOr2Mz0SkAdKfy/0r9GL3CPYwDUIBoSW2gDBFsitz2lVq
	 h+h12D+hb9QNWYoN6zrD4s9AhIEV0o0cpUb0D+OLiP7852EIvySz/tai2SJUakO0C9
	 UuMydoNHtaE5zGa6/A+tnX8SRWuzOn5dNYwguGvwOwOTHJF4dg8zRRM2n3pFa05A4a
	 lESrWLqV9Uz10euBZ8rGopZh3kBQI5EWzGEcp/g5IcCdv8nW/1n2h0JM4CWHD5V2KZ
	 W+C4JjfZQ5o1ywreKhqps7A0jMkKh8KSoXd4ZkQGwf490OwbEdBBDsPDGr8FHx3sSm
	 /AG++x2p3ycjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5B7F433CD
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177629325368.24747.2418208322059393061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f36476dd997d35b83c57fb4c181add18f97d0e24d58e69c2e7672de92a97daf
Date: Wed, 15 Apr 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776293253
