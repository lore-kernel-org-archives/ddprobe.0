Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2963D669D
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 14:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782313054; cv=none; b=uem2LKjpoO4dLcn++K5UYkb69ic5Y4fK4h+fZ/yBBuMzVdxBaYxK1v/NlD9Y/ZhLXHHNmsiTNzNSUiFrHgMww6ilDwpAKb3wl5riRmrDQwQBAXP5Mv8mviTzs9SslroaCZVbqTUiHZKTc3H5TflJwJnmrmuzVBlmvlpi0WMRipE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782313054; c=relaxed/simple;
	bh=uHfNBAZfMekBMGKrnt0QSEyToRe4UymGg6XDI4xaOvw=;
	h=To:Subject:From:Message-Id:Date; b=rp9IP3BypteZrqa188LaKUPT6fTRkZIG3L3lwmwbTRCC+MyoZ4b4u5q8OkS/ZfWQgF7UL91cqSvgehPxv110tW8z9hdSJ5z/l4SpHA/Nhuo+o0Ywc71Yi/dmtFC4MmaFmTa65H3R2gOI91YJopFz9Yfa0FrrvxP6hnsrzGXtV2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/01cj0V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/01cj0V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9421C19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782313053;
	bh=uHfNBAZfMekBMGKrnt0QSEyToRe4UymGg6XDI4xaOvw=;
	h=To:Subject:From:Date:From;
	b=t/01cj0VDQjm7iciXGdoTlfdma4oaYR8hBTzaksfjHSQhjqilVwJU+64iPpYQSqpw
	 dp7ETwSuU2DC4jxGo6gkbu06gVcF1GpMB/lDd1YGaHU5QhwvCK9J2Yd+MyAitLjriG
	 3fOnU7BkWL8EIiLOsRkczmYF19X4efB51IIjgSiJTEBhGLdW0tDesG6jM2+PMPntf4
	 GcYL1qeFije/UkOxFgZX7UN3B4uQZRiG+YEJzyShRju16HJw8pIYK9z+tKlgyXnfaK
	 knxq6SnKHXQM6LUhKbNNHHqSmvgaXaLqVoupXZu8rcq+NISQ8kEdjwkToViHgG1PNa
	 xHxs/6qu5JesQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B490ECDB481
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178231305372.22762.12722450996341445852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72e6451c0f387c60153d25d1037c0a4768853ba185519097d5316ee1da5a30ab
Date: Wed, 24 Jun 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782313053
