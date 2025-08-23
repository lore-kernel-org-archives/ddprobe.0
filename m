Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFC011CA0
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755917994; cv=none; b=qzrOHQGf0h3BkGFcVv2qF5/Wys2tgpR6OAYQuPlK57CqbBBsjYeAnEIBELabiNFNv2rI6DQGDiT4/QzUISkzndBGyXAZ3nwDB6PocYdLWcvT8zHn2hXhK3FmvAWE5lS0QIGnTcTMzysfXLosplIEV3iNxKnv4lEL9MMRq8ndngU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755917994; c=relaxed/simple;
	bh=TQ4rWc8vvfZfpabZnPpbGxrzYdMHiXpEJf8DDdOrN/Y=;
	h=To:Subject:From:Message-Id:Date; b=Wtxjm0yf9GM1FMk6TtNjYnEkEUttR/Ga1LAIt89peMGxsWSH0AU/jGBqTMoU7NTcigpl0CZtiYNhUQnqeHvjxtQBiCwCCerJJgy3vYwZe7tOtEv35jDVIB0F5BYQ1BVNZk7s8LhcFSgktNDcIoKFsn8Qc/c6W/yQ3WidSrbfJfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5tiyu6n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5tiyu6n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69CBC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755917993;
	bh=TQ4rWc8vvfZfpabZnPpbGxrzYdMHiXpEJf8DDdOrN/Y=;
	h=To:Subject:From:Date:From;
	b=b5tiyu6nGOe6KwWns87DvEHVF6eqMB14u5bjbJAd3u6vp/H8HizV+LgK/E76d5J77
	 8COT2EeZ0GLKM2CHI7iYEdAHNpp5f3dlh263dccs2XUhD/25luTFcgZ422yCCJsejg
	 PUbvYyimopd5/HR3LTzCbe59+FtlFvTQ39ZBD+1naaUQRlnXpZXCBHhA4mz+DxgWqj
	 Mw9ONnD0K3idJ1OOm5uzvYuEFABAzEjxO3W/Bm/1HVQWgwB41ZARQckLK54QpBhVX0
	 oi4LIVZAwvardEQlOAbsUEAIxx5BzL90UIb1HOcIMfqOB4JtEoGMF1TS2V3VoKGxjm
	 UJcmGj9Ox732g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9211FCA0EFC
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175591799357.20223.7532639127345346370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 708344c737741f3b1e9226d9c0bce4ec6fe23940c052c94b0281d63e4902ffb2
Date: Sat, 23 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755917993
