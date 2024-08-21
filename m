Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227C31BA278
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724229954; cv=none; b=Bqrd2oLYYvAESMgjwDEse00w/fTL1hKGpMABiALT7Fvx2MqLtP032CWLtGUik6l5327WKeykL+K5iH9ugmqitVhJs2Fk4DXfaJwQcBO8KHiEpJKUn+4Z/9gsMXUZ3SjfslXvEbt4jALU1EbnHyOLnNbJ63yOXlqxLuXbqyM2bmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724229954; c=relaxed/simple;
	bh=/m7oQDqFdKovDXx4gkCuNHKkYXzLPHQGcDDz89B/Jo0=;
	h=To:Subject:From:Message-Id:Date; b=h45XQ9tvxg2wIyiZrkxAyV9Ny8FzTGVJv4BEP1DhCDq9PG/7McwJ57FvJxyI6pqRMwfSnL5RUIuAGZ4S/ahY21vVVeTJN23ILQriGOYWb44I9CCqquz2W530dzM1wrpMHBHefx0l+HIYfWpJ5LIGBxMFLQn3Frn3hG9Ftmkwe28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4ju2kIb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4ju2kIb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D65C4AF0C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724229953;
	bh=/m7oQDqFdKovDXx4gkCuNHKkYXzLPHQGcDDz89B/Jo0=;
	h=To:Subject:From:Date:From;
	b=I4ju2kIbJAfykZgwMyDUIgeMkl0TOc42SWNSDT+ElOYdL0LOFRVOot8JAEfbqXp3y
	 HMy1pxDrw1WuEyDGCtpppRiYPe0uxHD9uqe3seATCvQDNr35fGuhVNCO4eEgzC9z9H
	 DsGue4XGM5beXRvTPDUNxUsVZUfmrlctp54QvwClmo4l4Zo7FdzJOIDaMHaPPmNE81
	 lZaZBD8wByDqwfJAXMgE+78Xp4mNYNp+5CJ1AT4YCD8zvm8sBeVjAlo3wn+gd6Fz9/
	 aDeN6M374CTEBF2WhB6ZppKFZbP4zWhE6kx/uDivAQwDrPG1NY2LGo0AGKe3fByeMJ
	 K/7+hBv2NfgiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93695C531DC
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172422995359.6021.2065101346936878137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c04dbdaa09d3b57c114703565d74a89dccfa8012e88b8c576d7e835648f4d50f
Date: Wed, 21 Aug 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724229953
