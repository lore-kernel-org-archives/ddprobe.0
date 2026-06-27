Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FDD21990A7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 02:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782527314; cv=none; b=OpekHuqIWbAAf6WQOaeXeBh/q9E7DpnvBdesAd2+mSJazjkP2vo2XFJXTch7PKL6f9oz4H8ZBiS55nAWh6dNzYmVWq4wc3KCzBPMqVtC5bOh1uKsR8wNpG/NWSaG8q1qTSbspCXbSE3hrf28eJdJWOH/YUmAyhTCno7fudk6Fxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782527314; c=relaxed/simple;
	bh=MaSwjnsVQpPscCV0DNA3tJIteHub0PFL9eGAflDeO3Y=;
	h=To:Subject:From:Message-Id:Date; b=rmJrBtG78xDWBcA7wV+6pwSmhHO/VZhC2Hx37iS6mnM3MXhypApHQ3u0gVpgSBOl9hjmlBeBXP/oGdxK8tbKWOFNK81vY1adJEeqFbRjXFnC+EPO+IVUkwVWaOxKpvHLa9Zv98s8yqJ4MYC+t7dthYZaZTdq8WbfGbeaTNUGK9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNLm0H5r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNLm0H5r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9285C19425
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 02:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782527313;
	bh=MaSwjnsVQpPscCV0DNA3tJIteHub0PFL9eGAflDeO3Y=;
	h=To:Subject:From:Date:From;
	b=mNLm0H5rYj8yA3mfTdQJDKnlwN7rISkm+UFUEfNekSPn0p7vy49I8Tg4y1eevp5AO
	 FW2T/KONczHNuUwB7UyzVl9wzK4clOU7P4Z+rtVl55uImpwWTGUHhxmNPGW2Q/sODr
	 60IzJSCLOI41LsLn5FRMiEzQYIUbuNZDH63qxbA8ij+s8/OBejxiUtSRTodmLAhLqk
	 l9VhKJPyfmwH5uVAlxy0tS3upxegHh0yRBDSolAy6y4NfwWtWZFKH272UYaRptJYP6
	 w04qejfwvL3YCQK26NhP6z6nVaONMn/IrollgIqsSiDwLsyeNrQbMtRu4hua1R+dTg
	 niL+nUsRN29rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8A1C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 02:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178252731368.18053.3325514355394985139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a263a1220d45410268d0fff71224c3abf7ce78673038b51bc1716c60084d8476
Date: Sat, 27 Jun 2026 02:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782527313
