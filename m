Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291933D6CB8
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 11:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779103834; cv=none; b=dqBKvpVYZYgyb4CQ4Jc6TjQrNPE+IqqIWwsm3amwhqvv5apaxowYpcdgr3Zkt9zh0ba9YOw0C8VIV2DkuhKhqniKM7rz0GyrqurmdnkoHp6rGNWMbAErdVg3TQA/c9XnQFYqj1/1iJ9HUONglvcDRUA8EwTNIsn8K7cY3zPoJOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779103834; c=relaxed/simple;
	bh=iYUfOqtHZIIqlP5qmH4sSAw9YiQN76ze0dW6O3plIF0=;
	h=To:Subject:From:Message-Id:Date; b=K4TH2UJlOyEBQbFs64WZQOaUkpDTTdc2SrrmH1EoSsYeWVkLIfIxjSaEMLeWnFnF1JRj4b0cjp0WK2RFFof3Dhq0bFOqpGeTpqv4a35Nu4lVdo8JoMkIhKF0ZnnBTBPTfTPMLsFmucnQQXmHIQF6c1zBI3FNylSrQJqayajY32U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mlkjgr1z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mlkjgr1z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F24C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779103833;
	bh=iYUfOqtHZIIqlP5qmH4sSAw9YiQN76ze0dW6O3plIF0=;
	h=To:Subject:From:Date:From;
	b=Mlkjgr1zMsq2CN3iugfUyGuEOXjms2YtOvDbP6QSjYCsgDZX1NWtgf0jh60dRAs1Y
	 s1ciILNEJBtfT0aD/YtctRSNyVUOMvS59R+wk7IFddK87D+QISOW739vVmPvOpXbIE
	 dNuxeLn8QhbVuxNFkXUkP7AukKdnrf1mfEXuwRtkMkm847xp/QlnONgRUzVRVQP1Yx
	 a7o79LuE2g8E80lkjX8AachxosJbKJ1Wv9TwKkYkLyVpGw/rxtyfX3kKV2lzcicLZ2
	 ZrsCYz+whUJM1DakqHxdqRnK3rFOWSMJ6L/zng+LGoKiOzYza3nmmz5tc72Qrgk9OG
	 z/l10c+Z/omNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB517CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177910383369.25735.8579690225352284187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a78ac496a2279c7e286bd381b2dd5985077343e72cb38778432f3ce50a09ddd
Date: Mon, 18 May 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779103833
