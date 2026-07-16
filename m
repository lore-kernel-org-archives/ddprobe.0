Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E2163C0A0E
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 22:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784240914; cv=none; b=i3qAjrxnB21IO1lVXZ+KnI/7B7bn7CBNyvEZ0QZewD1cmb/y1PwPhTctb3kkpEPs/1nyVHZ7Suqv0BvyJpSMxy3TFLWDxMCtKtfpknp3W/x+1kniE0ViJB92d8eKvUJAG2tSyak0hjYdqjF3A/wldvz+xrnntGH14nJ1CMHHKg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784240914; c=relaxed/simple;
	bh=E4mkxOpjxcNR4MBF2TWYCwSocu4b2K514n+FV1ueyqs=;
	h=To:Subject:From:Message-Id:Date; b=EUqkuysodCdntYW3OfaZw3Y1SXjeg08y4NL8u3phOmqfM79VUPZTn8vXlul9qd+2+J0vfZblpiD6aA40ua13gEIvRMU/KGwO6sJmEVKMlKFgFJYYx8M9jUHi5gDha+Nb8Fd88MXlzVfUWLinD6DLOuwTecv1hI0QmfKiKxKVS6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bp/G0bEO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bp/G0bEO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF60C2BCC9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 22:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784240913;
	bh=E4mkxOpjxcNR4MBF2TWYCwSocu4b2K514n+FV1ueyqs=;
	h=To:Subject:From:Date:From;
	b=Bp/G0bEOJqO2FAIkyW97orx+EhYN73pUwZU5/S935UJVKlL13NcTru+LM7tcYjS7t
	 q2WkflFP7pNwKdOOD04aJaCsHOtx5DUdGPIMD5y/RnvjkJyaLDQkcnIKFIycvNe08w
	 z8cRvoU4mKzwYzBIHIoz9no2fvrLNcqcSBpPbD7T+/zd0MHeMEZ5niGsGR+c3KsBud
	 VnbuJWw9zi5jAaKgN+ylR9ekrTbJ1gYg9MV0ZVjkVuGeDBEy/XSzG+fkpJYYfZOqGw
	 R531kaj6s4v36wGYzIr7Hst8yoS/FDa6uhbhSteeMmb0AFyjiSSvhXHsp907eKYFYK
	 bMHxBnPKwlxOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95F1C44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 22:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178424091368.7202.14985992638598234861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc18a778d1cc834f086ceafcb2d4c1a554b76ead7e6a1ab2167576431e5ef6ec
Date: Thu, 16 Jul 2026 22:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784240913
