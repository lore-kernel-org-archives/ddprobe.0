Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2794FE555
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751478594; cv=none; b=AHCTGrDZ484nckUhx7EKsdZ1R7g844kh/aBf6u6qZpMEaz3UgrLf5NZre0+n1gZ5Ffiidpx+PynGwau2Bf21/oS4tZ2P0xLDdN3GRo6SBgFieVs91fD+qUMoK0IS/DC4VO650UG+X/wY6E0apYBBNPyv/c4NrAHxTAoNhcwARW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751478594; c=relaxed/simple;
	bh=bwhO1GmTodRWnJzr5v4HkuUpuCYh+bPfJmrsyoep4r4=;
	h=To:Subject:From:Message-Id:Date; b=C9VteDWfwgqCou6Ugz+vn8bI/nSNTrJamgbgidMpJDvgnYWzqZu/xzF1nrGIVgljeijekcykD6iE2qN5k0R+g4Y9f3Msrv0xKQhKnrR/10OBdBikDQGv/DOS0taBKD/aok2sfce9wzYUtDxsYZQ5zqdKJmsBD3FPv7GVpsNBgS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/X3PVip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/X3PVip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE85C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751478593;
	bh=bwhO1GmTodRWnJzr5v4HkuUpuCYh+bPfJmrsyoep4r4=;
	h=To:Subject:From:Date:From;
	b=Q/X3PVipExw5qaJYx2RrJikqbZVunZrMS01KmnR0ritl7Q+WcZjOpdvqbnxBayEO0
	 oFN8fk2zXdLS0OzU8hAH82+N89/+YswrinVKHNS5X48dqHkDox6RXjFT02RGZnX9eK
	 RiOoXhaIGs1AXTu+zkxrG2aiVyQ23F++cQZOKakgCM9keC7e90wA0EalZ1SIV8PZFr
	 1JFQ9DXzf2gg43n9FH+m6ZjJoHnO8gfDVjw6VIGFmw8nUW6VzaMKbmC/Ynar77Yrka
	 r77siJ+Y1icU/uI01a6YiWUvregFkyYHBV1rFYp+StERoK9XiQCEn5XsFGoopTHgV2
	 Nn1DfH3+/v70w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F583C77B7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175147859357.6929.6556410082268070680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9cf2cadfeda7b111dae519896b04d4a44d4fe9ecdadc02de04b57768d8b9449
Date: Wed, 02 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751478593
