Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F384A1C
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 13:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740578334; cv=none; b=amUZB5AA3q9oqjP0m7nsOd2wciKFxKaWU37hq9OzjtNh3FM6sqcXLHjA1yYak6oPahTUDJXs4CnEucrQrLQ/dA+wEOOTDlV+k0wu3RZil5++7ndFcawbTbyZci7ghefygPkkkZJKB4AActCMa10Kiq6qN5M90ubcGRuoBsplcjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740578334; c=relaxed/simple;
	bh=92woOjHgKn2ac9l/Dsw4U/lS9EOLK6+gcpJyKH/f2BE=;
	h=To:Subject:From:Message-Id:Date; b=eK0lNOA8/PnO3TEfs3qep0Y3hUw5nLG+YmDVwZGFy7DZd0bv3+b5uFc7A5VG9VKQxhFvDXkKTUaSlRKbDeF1SSg/jLw4dSKG/qgs8jIshdkHhdWxLkI7FLlu0LUGB0s3NG3QsRJl54b/t0aD37lnhfzovzoD43RDjTdCXn8o6CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/nYXa65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/nYXa65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF497C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 13:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740578333;
	bh=92woOjHgKn2ac9l/Dsw4U/lS9EOLK6+gcpJyKH/f2BE=;
	h=To:Subject:From:Date:From;
	b=E/nYXa657ABUpUStwppkd87Kpmh2vU4KaLA/dMCa+F0j5NLG2wCMaLak0j9BbS9YR
	 xqdfVvIbRXPpy7x88ozI0A9SWWFOsu+5KlLv+zQ3Vka/bj6ihj5HoMz/SZU7/0bnDE
	 MOt7FoOpClZ95suzN/zRTreC7WgvfIW04iflpJARNPMPq389qMuH3dB3pmiRPJRggm
	 d7ajkF2BdUPaYqaFgNOlQlrHCJrHbneeicsjqMRnFr6KZgEGs5iCdX0PBMUAW2CBJV
	 Q17q0mRvpmXalOfzeFkJzFKerLIn8Ziqg/QnEpGWrXVgSqlq3Defm9XqIPK6p/a8QI
	 V30pJ98OXxGCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B75CC021B8
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 13:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174057833359.28897.2636077811458971699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dce9360ea0ce37d27ffd09dbb4566513de837ee629c20a824e831208f2938253
Date: Wed, 26 Feb 2025 13:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740578333
