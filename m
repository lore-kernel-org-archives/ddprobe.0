Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163A1327BFC
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773682494; cv=none; b=f472zfOGW05PpmW5TTugOPUC8j9DycdUWcyLUOIHrjksX7S8dxuJgsQYc8fjM4JF89WkunvEHIsITQshBRJup6S1qgZYXn/j0vC8Q1RsNekGBSof6WL1pyNaKaNwlDVnrGdAIdh6PHe3+WBwlQMxat9PH6bsjrX+uqCuyU1AAPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773682494; c=relaxed/simple;
	bh=mHo/4EpfwOeB3P1OZx5m/fPhfdixyKeywhw3GBzz58c=;
	h=To:Subject:From:Message-Id:Date; b=d+UX9pAvo74Q23I1/OzfSpAypZ7xmdngzJp8QJhotCpPKDZWsH2FmQpBpY0/Zyhod05Kjg4JE6xw1mJkLkA85k6oGoVqnNJIzK8dHhcr4cQXapFjDrYhdnkzOCXq8HbifphZgSmBQOQlI4NuwqPh2in6vPBT2cH95aKUlrvsW50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mP7fBzEF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mP7fBzEF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7499C2BC87
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773682493;
	bh=mHo/4EpfwOeB3P1OZx5m/fPhfdixyKeywhw3GBzz58c=;
	h=To:Subject:From:Date:From;
	b=mP7fBzEFewfuJpsWnp+bwK77RCug1v8bA1z+ufcrWjA0R9zZhp3qL98E31aCYUb7V
	 Y2P0CgbB40rYWKEZl3FUby1A3bIaq9Q4Omi54A8Rmiv1e3lYygBf6heuUGDlh8yJTt
	 dMz0fI9FKSEmzu/jxhDFkbQDr3NS5MpFnGtjtJ6wuxY07iROsEyv1gZqLG3IUD2bcA
	 +5TyeYWMY3Ox6d0CZ46tNs7IcIaW2W6kmDWFpPBf6ohF2slCnlxtyrA5cbtrB4ZEy3
	 YfKGljqA5rjME2DEOCLGm/p80Nl+yP7sK8NlQXYJ6+5IZCxnTGFMOkYTD18xE9XpNb
	 Afuheh1mE6PPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952F1F53D7E
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177368249357.17375.13406247622061705025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 404714dfd37f7d84d1cba7f1d04cc4b5337b290b4dc43002cd87735f810c67d9
Date: Mon, 16 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773682493
