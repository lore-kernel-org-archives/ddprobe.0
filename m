Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FFEB13CFAD
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 22:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720220123; cv=none; b=T6Sw7YOmYGWg3h6HdHGXVVpj5J7LctByu8/XlUYL6o3gtquRC4mPWutnf2P6ExqFNMBK7UR6HgMxgcnzs+UvzxAByTA7JK5hbCphZlWj0nDNRzYYaeJW0O+iBY9905Lnq44prfoI2JPWef+e64l+jTznoIIR6cCpQZ6PPeWYEUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720220123; c=relaxed/simple;
	bh=3vEU4q55bwB/2HOq6DQX8v0D8IGwa1nfOfv29fGHhyY=;
	h=To:Subject:From:Message-Id:Date; b=V3ilgsvol+cligKMTmfOb9VUsosdQ7+gjHulpC7XjpmWYubwZtjtPm0a58trqD/z/xPq+ACgfHryWv7NCkXO/82mjd7xaj1hRnMUwrhzwVH6rhrDqTvWQPdUOryiom/jzHf1YHloyGCs+n2lqRlN6feilZCQ87Qb4ckfkksk/9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AuPrZTpU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AuPrZTpU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F9AC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 22:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720220122;
	bh=3vEU4q55bwB/2HOq6DQX8v0D8IGwa1nfOfv29fGHhyY=;
	h=To:Subject:From:Date:From;
	b=AuPrZTpUpo8WR2ysySNiAJtvgsdX4H96Pq78WBqxJ3GjpAtVD0sW4Ba8AjXr1csEW
	 yn2WJTI5nqyI9kI2Dp1IPt/LaBbrZasiZh3DUEzjbGvG/4B6Rd3FxZGTY6wFbVix9E
	 uUAKySAsvjP0NWoEth05y6/SnegNY6gIRkRUYfizZjmQ5GR6EEvfMp1dgcwUrcM86J
	 noMH1bVzncMSOmq+28vfdiHCYwxoE5SWuXHVSk7Lzjddkmds8iR8dT1KLIIAMl4/zZ
	 MCJaiN53Zq4mp/Ot17gQf1//slAB6/3t5bbXgdXWvsknXIurJqq3q4kIpdJI+jUjo2
	 9THMsSXIOSNUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7FA2C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 22:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172022012279.26178.16570949450826387648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65654f8b0ad33fc4acf28fc20b70833e5d97945ad7dcade0cc5b329b712168a1
Date: Fri, 05 Jul 2024 22:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720220122
