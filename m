Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7522DC334
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 20:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782593914; cv=none; b=EWJkio1t6npGJDS4XsWGrxKairg3n5SSYoZgEPi8kafOIJr5JvNfsbPsew1EFWIMwMhZMn8q6MZeB81TDKfjRjymsQiBzoQCMsAb1Mmr8zQ1Rd/Ad5bfgPJ1vU6r8k06/QdZUAzdImRFDEFh3PiG847GccyeA9cTW8chvMXhEls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782593914; c=relaxed/simple;
	bh=sAtAT8bAU7LEnD+jly4OLOXwLD43tEN1WFyKuD5NCEY=;
	h=To:Subject:From:Message-Id:Date; b=T6ljHQNsDdQrvl+y2rVYCQoTpo6RAgnTeJPWatmlYiTZikgMBokQXIXpBYJ6cFEK1uQbInn9yxyWlV5IhFyDO3FrS3ZIh569g3AdBI2migo5lz8jAptxL1L7Q0uubeGZS62cL/B9ti2Exg6us3uC8jcFU3UeNyPb+gMqYWM13F0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqP8s06n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqP8s06n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB692C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 20:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782593913;
	bh=sAtAT8bAU7LEnD+jly4OLOXwLD43tEN1WFyKuD5NCEY=;
	h=To:Subject:From:Date:From;
	b=sqP8s06nlULN5TTaSMOAVlCP+EJcDMTY7mMm/pL/tZmBAf3FDW9iEvD0vbHdIn6b7
	 KD4K5i4qIOMRFbSK9jgm8kxP10i14+M3UiwQ6uND8GiZg81067EJ3f1v1XiLGfdIxL
	 p2PtmnD7IoP9iwD6Wg4Elz6f7FR4YKAksFbZcM8KwjmsWzanfy4krKNNjagEgxH6AN
	 Fq0n5wHlY1jiPtHv15FUtIvS4AYJYxoKjXvf4DivL3GP/Y1lK/t0n3Vx/VjNSiZife
	 8aaXtpqJRAt2wxMMYlbR/JXYVr1xK2Dv3BwDO1QTumzS3NxL3mcF0mp8gILQH9kL01
	 FmukkuImyW2NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C72C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 20:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178259391369.11112.109017418863122139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b3af123d3d822ff80d56b504ee3e6a8e9ff240a7b710938cc93b1cbbae9cfd7
Date: Sat, 27 Jun 2026 20:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782593913
