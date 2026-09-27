Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501A53B14B3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790522434; cv=none; b=PBe/UfmKjx1q+XlwqmpFj+ECVY9Ad0ZrV4uZUnsj6qPnSzoxmHXBPgafeUFm3cpUP6WHu+R5PMwJl2xOYwqFX7DWTEXghzmtUZkRepjxx6lJCSjQr2F8ielxsS0OBJpzp+42CNXlGOynj2F1sTYDlT06c6IH5rQHBEgMJ/qIWS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790522434; c=relaxed/simple;
	bh=vvrRsP7pJIDSj0hIFTvKh6jInEvAtgJA8Ogr74Q2nv8=;
	h=To:Subject:From:Message-Id:Date; b=LSSsn2HAZ2hlLlIusI+MYdo1jGNKx8xQVbtFRbcdUnAy7gLTmyLrWGWFzDcyUzZNqye8USsXoGxgo7qksUay6eM4G2TTigTs5AtF3ydYVqMKgJoZLPvK/AjnlaNe0aof2WjTBMc2nl1pbz42WDsDZYN3eows7ws6Ch/Pbgpo4nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qT8mP0g4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qT8mP0g4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB51C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790522433;
	bh=vvrRsP7pJIDSj0hIFTvKh6jInEvAtgJA8Ogr74Q2nv8=;
	h=To:Subject:From:Date:From;
	b=qT8mP0g4mG0PSuGwUuuWWZbtNf6vTEj7Ibdjl8AbYiOprKcMAZDcYJNxdmVMz9OZn
	 BgtZqvHBra47ooSrQPzVXbj/RvabXRDpTfzqKWuBdvFjg+ucuR5v0jEJbxf+duLkdJ
	 kok60vXR6pqkURPhv1rXAkoMSPyuwgK988zBzdO+Q6ZuLs4LaJjf1P9qhQoB0/ueCO
	 TiKE7aqapsoONy/hc580MeR6atASEQatTEQyraPVVz/ZuxzNh6oLwIJQ3SyQWMvKPf
	 JSOrMYfc1+4ofvszHE800sRntGk3VyuHlgrDhg/6Kps7jnBsiIzI69z1hC8zuzR2mf
	 kfUt6S98voAjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3FFC9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179052243369.14232.14018593718540277657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0426cd98863aca16a350d6f77cd8e70f32c95b32e8d2b65626da16a596866060
Date: Sun, 27 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790522433
