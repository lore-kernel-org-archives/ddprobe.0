Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3401E158858
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746466195; cv=none; b=m7PVYGYPLYc3ycj1wNH8lZEuM/fqdPGawygr7ly3s6jcjxAYv2m7oWoeRU1LExO/0XACfWM1seIjgeBiMnbmJBQj6l7Tg/yvLGqb+Xe3PKMie5N+a9VXkKNOyA9abHgLkxgWXPtErX5SuHYQYsXmPt85Q9IBjzarvF20oAyIyZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746466195; c=relaxed/simple;
	bh=aoqlOKtr68Lm2haPwP5GzBfumeP1vcgp3QSJyiwMBpc=;
	h=To:Subject:From:Message-Id:Date; b=mxaFVqRO8eqvxLc4TfdijRVU3W6qLyk45GjLBf4PflT3ASt04FQPieF3JRGNBM1ihn1CeEoCL/jFx6UxeiQK00ZCO11OguWPCC8+lpHze266f44HEZVon/enbitkJ7r5MdvnTuKX2KY6JKNIcHC209rO7yZfOjZ68lgbAWtwfxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NtKAkTdw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NtKAkTdw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DEDC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746466193;
	bh=aoqlOKtr68Lm2haPwP5GzBfumeP1vcgp3QSJyiwMBpc=;
	h=To:Subject:From:Date:From;
	b=NtKAkTdwqlweiKyh6qYDs58QqEg11Hcia7pyRrl5ZhoAqCYHwzGssAyDFJe28fNXG
	 icTIaLJUQnYjp1g/J8DsrZOgrE7v8d6AcSd9PCWryAd9h1XpsKGvFsS13Qo/kdNqxl
	 jmmF2YhPtPq2NFfdP1J1zt1/y/duG3QVAnlHyHbJxRlaO0QRqb89RpxaSX02WK73Ss
	 dqEHm47CAN3TOlREjwbOYzCDxsehp7B6FynexgCeop/n7bvQVVkghPVH0yB3/xTFM+
	 ne/tXulCPCbkmG1q9gT+PcrtzMQtvIdhGWSEMyTBuoAZx3AECQsntKId0J1yyJQKpo
	 /f0V5i5qPgZow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9C1C3ABAA
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174646619357.31040.10803161441734587393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 829470fe2545aff806c477aacbc2373306bb47c13d821594514dd0f8a6203ebe
Date: Mon, 05 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746466193
