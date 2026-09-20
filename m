Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 613DA340DB0
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789869634; cv=none; b=Vu/Bz7f26BhWgcC7g9t2P0aDDtDV51BzQuByl01csQwSgCJj/YmHoWEHUFUFqt9LvF5hM/+TgCHCPz/YfasdDgldJNePidbCejmPv648fEuA7z6OTaZtINcGtHu5ICC7Wxi4k9rdDdFduAkt6SEU4/2rABKSnFa2bmMj57GWXMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789869634; c=relaxed/simple;
	bh=oYvfcU9OHGlVQzNEpkFroMhjclLKZ9zPevAutPMLdqc=;
	h=To:Subject:From:Message-Id:Date; b=AZAG9l3C1yZKhhXvihYSOKEIJCvxMN1Gpn4xCw1+FxE//urEgYc/0Cd8TKbZc1zJRj/INt1aHnFan9qJhueWkkGOdl+rYeAulDGicW6mQwve2G0388Hrvh3Y5w7+vyYd9IEaXfHbb/WL7VT2wWL9u/uAq4m75T7nLSniC92s1/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q23ZDdH3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q23ZDdH3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2860C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789869633;
	bh=oYvfcU9OHGlVQzNEpkFroMhjclLKZ9zPevAutPMLdqc=;
	h=To:Subject:From:Date:From;
	b=q23ZDdH3CEXZx4l1RxIc1kw/2d1YKRqptrOkmQO5wV/hUIRORZAyFuGX4HNT8wy9F
	 ulAClUo5Vd6uAEeOKXvamp8jAM69qZ52HnPRL0+czyljVsFK32xm/T8sjXbnbLB/V0
	 Tudxxq7Rx2aN5Ag5wk75IJLh7spk3jVhlv5aPlqN/OZ7lhr/arbo/7oRLiMVP4rmTu
	 s/YIV9m6a6MaQPnTkpE3/VwWijva1QyHc5/0XatJPnioN68ErflZQYhkI8a0RQzFwy
	 il+tD6WGQOjJ8tDlj6fyYxqyo52qwg1o/Shw59ZpK4SAbOusRp0sGBqZ7KyYwr0vTp
	 Rgl3X8la9zfeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE22C982D7
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178986963368.12447.5476681753879057360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86f7b2301d30246ff4ff8cc8849d1b33fecbe06a0e032222748235da33ef42b9
Date: Sun, 20 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789869633
