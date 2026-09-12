Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B8930F924
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789180834; cv=none; b=XHQIFOxIjcwOrmsyXukXAL6HkKFyJL/xVoOXzQHSY+cTwdhINj8kRjkPGeEaR3BFSV4uERwAc/gZUB2BRvQtxO7vnBeehug4H1cL7BvLz8Efd4rSfq0XXf59GwYMZTGamdi7hjMuhENgvSDYSPIPCkTCMsfVI3fsL4uhUtTxXbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789180834; c=relaxed/simple;
	bh=8J9oCs5/IyOk7/l05NI4SCjDuRUIdYHheUBHcpIzWK0=;
	h=To:Subject:From:Message-Id:Date; b=GYSfWo6g6jk/IJchyyvXYHZkrJi9d/q0AOUk91ia2Kl8br4XEWKPUJW/2qJgwyvcqRaP/o77CAHUuoF8vl2GZFVi11lE9nOFaU8yMgEw7vH4Bcj8m0fPkjyorC2XjWXumiMwIfc18fgeNRwTNuPx1NUt/8U4iol3U6Sg+phK85I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L92i4ctQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L92i4ctQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E186AC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789180833;
	bh=8J9oCs5/IyOk7/l05NI4SCjDuRUIdYHheUBHcpIzWK0=;
	h=To:Subject:From:Date:From;
	b=L92i4ctQw6mAmeoCAL1W2d48G4T6Iam/vSYhq7XpzDOd6hqtkhp1pjfBu/CxE+V4U
	 4O3mXIuPbENGcHkOxkvoUULZ+zGqeEpamHUc1Z7B1ehfeu+j+JS7dsOmu10217v1hb
	 YdQv9Y3pqlmFaHpEbK0eBN95gk6y5sj59k+4dD7mf/OI5lUz9pDkPznsdM9n3quB/j
	 so0HycbZBhjWcgdq8QLDZxqBY+iZAv0T49WsRVrK7nPL7GYOSkyRUboAfe+1CyV18p
	 owLh6lnctobFnw8VAvDgv+JPneAXLT/zvc/FLncrXg0GYSyfu/xaqsK/hLs3oRHor+
	 2YRzFR7QpA3pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D14C88E45
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178918083369.25184.15259140492648922526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a96339dd6b191a7754c19c677295fb45c9602e3384d3d97f5ab6ef6e206069e
Date: Sat, 12 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789180833
