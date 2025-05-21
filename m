Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F12420D509
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747816194; cv=none; b=AV/op7gZonPYHzOT9kM+n1fXqzbDrMsOgStH5cWs47YGMWa5AQxZSknpjhVvnwiPCZtmL7REM7pJThX4O/I3p3tCSpDzzBwIqySt2/cR1ncSZYW4YKLM0bYuT6Opewg1e/z6Fgn1m0cOuxJ77+2uDIZO5FXxEzH50RrHbbdjVpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747816194; c=relaxed/simple;
	bh=l9wGNvSraEunlrWed06wetD4moIgL45BZPbspXNkhbU=;
	h=To:Subject:From:Message-Id:Date; b=c59daZgcKzBwxrQMz/74t0074d2ErerC/CVE0oMkJkMEXz/6rgircx75xLBJyFn/hqyDlb1sr0hokVcgPlKAoV3b2OA9KIAb6g0eh6fjuyoNDsWv4lWvQgFnoLKRxoWS+3v0/QyPH+K64I0vFa7W/yI530Fh8guxmwKt9+eRRco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDkj7/Qj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDkj7/Qj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3148C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747816193;
	bh=l9wGNvSraEunlrWed06wetD4moIgL45BZPbspXNkhbU=;
	h=To:Subject:From:Date:From;
	b=YDkj7/Qjo+oNFz79TyzLlGgWMRrorcTlsXlzg+3Xp6M0WKRdzJ4K2RrdBY9Mltnsp
	 t/kRu1R912Tk4gotjm50upK6MqEffWWloAvamaPvqXCg9zi2YW8HEdRiYmrHOi5mDf
	 zEBrMpknRdD60NDHDwYsPuGHGySSObiOSf1qibNzT+BUcdh+xT/J56oGDF+7VDRkCd
	 J1zFIK0HVX2cZu5K7Ozrk8hCddkB92FJHI69ve5pCRZdciLAs0Wl3JanDSYilP6N14
	 Ia/0Ozf/VxsNaOgYV9VCjKQ8fWUjLqhluI1V6lGg5sBGk4vs1BviL4jLpIhhX+gW7H
	 jItm88NPtgpDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B0C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174781619357.9684.9502641415511225451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f688c25e08067d5b3a6cf332374062fada73ac9b4d6c37d43e5350fbc47f3e0c
Date: Wed, 21 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747816193
