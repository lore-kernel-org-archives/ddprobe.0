Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1F335CB67
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 02:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775011494; cv=none; b=upK6fgfydgLERX+Tj6CuGuz0nS9ZAkUhgh0UbAbY8zZoylsQrdiQgqJ06FF7ijKUNN3LvJqkodZGXbvEgyMslX8KwKlKSdQg+4ygJDk8RtmdkQTzmfwm1MAB/kFgPdErNiIN9oO2x1CMje6ajZJoFqQXn+QdHRKQp277q71gWA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775011494; c=relaxed/simple;
	bh=kRTncLZpdP8T3wZp+yvE4mBLjfZhpUeV7QfnZy+7aBk=;
	h=To:Subject:From:Message-Id:Date; b=i4X7ZxvcdNy3pyUS+/hxmx1r8anWK5yq7qsFxCNOwEcFZfMhoauWI4GRSR6tv5ACFIwvooK+qB8so4Re1Rrwr2tXc0lYu/LJZFtssUd5FuPy+Iube7QYwBMwEFOs8T+tzvvfxHvapOsBTbXnIRepP1DVUTjCMwBYeOeBoh+9h7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/iNmFGy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/iNmFGy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB187C19423
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775011493;
	bh=kRTncLZpdP8T3wZp+yvE4mBLjfZhpUeV7QfnZy+7aBk=;
	h=To:Subject:From:Date:From;
	b=Q/iNmFGyIhW7Sai5pSSZhMmMY1w8gY3f/Unw8AtBmmBZ992MrLZiVy82oMkmDQmU8
	 A3ax7CvwP/oo2c95877Uy5jUuVpz6duIKlaFmORWXoAv61nVr0fs67TXcd1HDChtgN
	 9QbZdu1c3i3B1QR5RBQAwo5sCKKkbdb0/eD4NM3VMhMt/goxFvDCHj0FrVsx5Immc0
	 sjiF5M6/HRH10U6Dn4XPTJwFDE3hekGE+Uun7sF1F55w2/Y3HOe9XaAxdvCxH0WXmb
	 mOWQRCazoOI2rBHaaD/3sGnwDf9GVojK6Ei15YTWnC0eRDKzEB95lTNXiglFJZpmYt
	 th30uSxYKeXnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9578F10F931B
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177501149360.5941.3983447960665709135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4d5c8d31ca3f40a35ea73a55fce2da923ac7d7d7f1c4aa57a2c8fa542192883
Date: Wed, 01 Apr 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775011493
