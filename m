Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EF41B81CA
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 19:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765655574; cv=none; b=uJPyo795+r1LUYWILnmWIHpkEYNz2LQVOjpxozv6wFS02mOJKkDrXRrWcZxiz10UDm66H5bWsNVfHEHZ9bTZr/LnqJBic/KlJ2AkEyGXsUO93qbElfgsRelote82kd+s56+aGrVFR0nuo/hD9+55JBIUEDOkcf7E6zo/4WPjkjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765655574; c=relaxed/simple;
	bh=+G4nieVH3mgzwhxifJPp8irgCNHOeawtvMa2nlPwMp4=;
	h=To:Subject:From:Message-Id:Date; b=oEO2YutIGFPlCtsGjAabWZxggr4YzRYlwvtq6gsBkMin9LXSrKrE+Eabx4/AxeDGGzn95VIRI5BeEMYjqWpV0C4/hWrZ0aFgBhJe5xgfDFW2E6ccsYwXiJHwOWYzgKL8UyrzSKirN8HkktGwh9fS0rZLHj7mnTG+rKcuv5XLyXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJuZncYD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJuZncYD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78BAC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 19:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765655573;
	bh=+G4nieVH3mgzwhxifJPp8irgCNHOeawtvMa2nlPwMp4=;
	h=To:Subject:From:Date:From;
	b=mJuZncYDFjJOP+anp8nW/71iZAapMMyBpf2XE8KHchk7OtyVt5x3pssBaoWtflzHd
	 7aEYHZAbCtMcPiRivWIe4doB0yLbfnQ7mMrS87Jh4r4lVI2p2tZk3izap6zz6AQ4nl
	 Vlhm9l7qEx6opz4/vIzPQHV/q7LFaIaG84b4/WVAPVuqOaOwEPToxQpRIt/u5pn13O
	 2yctcZGpXqRmoreshEmeU0ua2SzeLOGbaTUDWJ9wAU8/fa2bVcD2lqmefW1alvmcta
	 aI47Bu3ZMdafx12obgWNTg5CnULn7JId6bSHqqYX/HLODT2OA/ZPypy6Wep2LBoKvF
	 WQMyFBQrLpPxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92306D5B15D
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 19:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176565557359.26217.10148428841352094954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 815994a073456611d7e10336e4056c548da8c9a61305603d7f0b868f99f8f9bb
Date: Sat, 13 Dec 2025 19:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765655573
