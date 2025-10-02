Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A76B26E711
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759388994; cv=none; b=FQ2NBax688W2283q/9f/brIySo2nprnXC1IrtGBp38sBtnayePKA2tTdLIaqlgW8m1RMQIkTYSCSPBdhiOwah9/YCYULXnTBe81ovX29TApY3uFKa/fowbntTkFVkpu3UZDOo7mEm9EtI7+aQu9bh9jdd3rd6RxbDm46O4Nb134=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759388994; c=relaxed/simple;
	bh=N4AoUFqo6soaAjOhDz6h9YlzhEP4bVcvdPQbEBUFZDI=;
	h=To:Subject:From:Message-Id:Date; b=I8QzMgY9OJO1jGvWi5sbl5x6PN/PaDypPHEwZTSfqpnh2fdgm0AOsqk1Fvr8mTMeReviTVycq8LQY5fN6lRjGTzZOo6sjJ1DslQ7tkpetFOHlcmpIztdF0PYhSuSFWE+DdGuxyzC/VVy+BG56DIvlXuAXFes0QGFd19ZZc3q20A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zv5iXmXa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zv5iXmXa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF73C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759388993;
	bh=N4AoUFqo6soaAjOhDz6h9YlzhEP4bVcvdPQbEBUFZDI=;
	h=To:Subject:From:Date:From;
	b=Zv5iXmXaPQp7vjhfYsmVTyE8Y2lY4JPcllmWz/LvXx95MHo2rGBP74R5vj9WopXBy
	 +10Ly+RwhkDxAM1NfUY+FLNbSoo1sMvqQSOxS6QZ2nqYpgMNGg9/4ZcnVKxMVXB42F
	 Lin2bzjhJ+0mOrOiMOE/LPmCnWjdzv176kjhshz7LP6r021LyT9Lwac1mThvUH7jzs
	 mErHZxobMkgkNffzqJTSkfqMhG4YjTNBBKYOO8InjdYf42VKcoIaeuRIzOC6h+K8FT
	 mVvLoYWkLJ8QBOgWWNH8UDxDQNmM6xwm3/QUvt/qnzPdFRa8XRNJPN3PWOuoo4TY0o
	 uO+Thb/t/BNHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3C0CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175938899357.15551.4777567836181887010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a5c93787df4313367e296579a2a82aa12ab8be5ebfa1fdbcb49c67c3ffb0c03
Date: Thu, 02 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759388993
