Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB3D40BF5
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 10:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719224543; cv=none; b=bcgEPzbrSozLYum4FRvi7gBHbCHQ0adw90Zi/SUEBC/Ab9S4Q29AG+vzmu1uikxc6gsP5IvQWgT5o4Ru06BRj2fVEaiE1RxJ1uytJFOZKBWrUktekjpy6QaCtEcuilueOdCrnHGq6ZMs3QYUKV3xoGnwWYHsgQLsKyzRU/fUpSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719224543; c=relaxed/simple;
	bh=OA8S9+WjxwcL8XWjEkPzdIdv2X5JRM48TZAr+/VUWUo=;
	h=To:Subject:From:Message-Id:Date; b=QwTO4wuX/6/0KNeEWw4TTgepAM8wXsMnLXux1Ev9WbD8raV4jtPhP9YzQJUJV78Ft50r1eq+bGWiF7FW/WvdgZ2Wh5CSCMtXuiup5khs0HrjAiz56P6fqdev8eVQOdRR9RIR7rOLCy883VdWw9JKEZVD1+JTD/2VteQL5w8ryyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TruiJzh/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TruiJzh/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D99BAC32782
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 10:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719224542;
	bh=OA8S9+WjxwcL8XWjEkPzdIdv2X5JRM48TZAr+/VUWUo=;
	h=To:Subject:From:Date:From;
	b=TruiJzh/b5yOfRjpQz1upHEpC00YwWDF3rEbsnu0Ylv/8ZvhZ7PKvN2OjCv0G7KVD
	 BXP6oyE44/TAqtuXrTtF0tEhtVFox6dLlqCzEihvWdN1OOnKnDpbtFslES7eYDg+Al
	 sNJwywCBLvC9QA6tY/jJzSY0g5d+uvg9+mHuZYRzYLKQ5dsUMoeIRq4biGip5IUvX5
	 NHTsDzGnl4VfnO5LwCi3OIBL8vq1ntfu0z+4o5V4qv9cEGt5y3AT6NXKNa61Jh2uRE
	 JlKPSe5XmnN78wOINLZSDu9JE+eBrw45LN4b7N7Vn6UiU5qNSOfx8hRRF5yFihmy7Q
	 FU05BUP60pujA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C723CC2D0D1
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 10:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171922454280.31452.1790623751292502497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d8dbab3d2ab870b129ba076ee7619ce5f56fa0b5e08eb5fd4b9f8adf81a8619
Date: Mon, 24 Jun 2024 10:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719224542
