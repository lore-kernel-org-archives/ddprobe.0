Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=10.30.226.211
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1792423834;
	b=jkQJNKDf1nsdPRK/1UBnDn1wFhBCuBHEAWBlB4TWTZs72zg+FCd2CMEN9tGvhXwKbEmQ
	 hLX2hcDVX/eaN7vEl1mEhrDvBQOKW94nbhhpz+3o1Bm5R3jX/ECSh+VyjJXLqMPYb6CtP
	 3z7C29riir0fxzlzzTxZjXreUCNgCBRumRcE+A2ElqSZbn467jPfDfyLK9ThVsmYrFyA4
	 Ps87fP69kTCrRneFF/9JbaCjbuUZ3qrGo1yoS0Wq6tmjU6Z8iUQZt3Annk9ezEl7P8XC1
	 /T6eIE4uK9vq5DIWptFSCNtswT2qYuDeexa+H34Uhn+CWceupuOFmJqT6vvw4Q/vqTQ==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792423834;
	h=Received:Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date;
	bh=qS6NR8ijm04WXzJAvVhVNZxy4gG4E1fzG9WMCDA4E04=;
	b=mi5Jtr/93oAsNQyrb7Jf7EMdzFY45LaK2UlSkOlRekrDKvwrc6u7kTcWvjobKb483COU
	 s8QiMetm7Vt5kOy21Aq6LCkG0TqlJxHyxzrOvWEecBfyIQ2pcDlo9yHubGjuVvI7ok5g6
	 Dm6gKfHi16MJw2Bip+Q/V5r1fv+8qNYsAhZe0S6L3NAUgKx2kYLI8CSjOr1VHvYvZBOoz
	 LH5JqtxI4CPUkptZ1ey35lGmrn+SZl2DYqIRsEp4PvY3/eo2Aj7gujgA26+UEsdzdO0ad
	 eDibJZMfgVkTRLHgT8tDt3Ruk73cF/7HOLHih+tEP8lTQpxOplcl0c7dI8okYtwq9Ng==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=IeW899rU;
	arc=pass header.oldest-pass=0 smtp.remote-ip=10.30.226.211
Received: from aws-us-west-2-korg-listserv-1.web.codeaurora.org (ip-10-30-226-211.us-west-2.compute.internal [10.30.226.211])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9018860AE2D8
	for <ddprobe.lists.linux.dev@localhost.mlmmj>; Mon, 19 Oct 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=IeW899rU
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CAEA25771
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792423834; cv=none; b=figL1lBfX3V3OBdgmKjyU4g16x2P8oME0ydRkWkF6Y3oZxPGuY3ZdlO2ZbrdqXxcAxizt8dch1uet/xNqE5ObH4QPJcjBX5h3lNlytD+qTeUo3yuqqzuK7+5KAAUjPpvhzLDZiDVTb38osLsbvrP4kePblG4bbxrEX902YPZSKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792423834; c=relaxed/simple;
	bh=qS6NR8ijm04WXzJAvVhVNZxy4gG4E1fzG9WMCDA4E04=;
	h=To:Subject:From:Message-Id:Date; b=LE4DZ9UZPF3TYVWTNC3ulySpxg6bw7Zd/AiORgtsx3RC5R8Bgtggo91D/Czz+pmzGw6QJOQa5oY2vCwvPLiWH4ggEc4+wEsFJ+fh7PEXdwyYovs28N07Sw0rxW++yNRmju7jTw+2zE4zocxFPJCEP65BW1trMI/NBvPXJArkUGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IeW899rU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD1A6C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792423833;
	bh=qS6NR8ijm04WXzJAvVhVNZxy4gG4E1fzG9WMCDA4E04=;
	h=To:Subject:From:Date:From;
	b=IeW899rUSGgzuiLc3+3a+vLHfDOLgkIPn/YQdNmidH9irhWkJuvZxrQql8Wqfq5CI
	 GyzDbF07yHR0RhZGdXmKOJJYI8Xxadrx8ZdWZqxzXbSxzX/CPO+vuchoEn6UZNNyGi
	 H4lg7SHBq+Nmj2MMKpz1If3NlneV+X+flrBiH5macTFxm8XulllVKcIsoROAljK3Qe
	 9G621WWfPwSSNt2x/viHqRsceb6r0fhB+jPtdv2srp8jLqQissv4ciYLHv38ZyBwDb
	 DqztChUUeH/6QNTjqHlOvQhi00LYVVxapYXCn8XXUIXtsHVUCOA2oWKk0DX/Wvu/KG
	 W7l3Ziz6QO+yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4B15CCF2E6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179242383373.26568.2350508478142444484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14d567f60211255ab8cfa1dc3a6e8b7cc933353600acfd2f481ff5455533de39
Date: Mon, 19 Oct 2026 15:30:33 +0000
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Post: <mailto:ddprobe@lists.linux.dev>
List-Help: <mailto:ddprobe+help@lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>
List-Owner: <mailto:ddprobe+owner@lists.linux.dev>
Precedence: list

rtt-probe:lore-subspace-rtt:1792423833
