Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133D221ABAD
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754060394; cv=none; b=PC0vl01xdpqzJmCZY8rzumZ6Pbeq3eUlalxltdxtwPhk3Ij5mHjUh5VSXw2mYHQXZ/PtQKBzpRxNiK+8G78BXwJa9EoYuZvLwh2aUZYwMYzKjMTDJ60vxbj9ribbqr4u+PARjhyKSKzsVsZ+XLsezKglm9nMbFYjpIgN2lMAb08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754060394; c=relaxed/simple;
	bh=fxjAPFUG97JS1E8+tmuKoUQaZTbXNWXUFUDaiwtuwF0=;
	h=To:Subject:From:Message-Id:Date; b=K7C5XPpacyjbcdt7FTKVYiGmer8njCg7/BwVKQyxntpDExP8KjFTmBvsStsqRukPyTqMinLsVjX/Mw/P197wnfqBdtsH9GCNPPW3bD1tzni3ba4SVdjyTImUMHyOqBFQXZwT610PRwPjdzUugr9wcsJ7zO37DWzbmYoQ1zNiTT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bu+KW3xu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bu+KW3xu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36A0C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754060393;
	bh=fxjAPFUG97JS1E8+tmuKoUQaZTbXNWXUFUDaiwtuwF0=;
	h=To:Subject:From:Date:From;
	b=Bu+KW3xumkN1DxwydQvHgDrk4BzN2LxIbzPHzc/abfMTgqhbKYtR+047ukFoG7zbj
	 IcA+fLGoSAGC03Wv1b7QRBahoO9Vaqny7xmsueADJG8TYJYR23joI/NThUlZMg1Gpx
	 EVpq59D8ynx1DsVebLNKj6AVyOCof4pURP1mQS36dQjnm0t4xfF7HIKm9vTB/wsi+e
	 IvuGYZ3b6il5LvLVcrucIq+3n5xuGd3SGXZqmonCk24wqq62nu2A2MP8TuuLj52b6U
	 Zdkq0nSkIODDQJiaIV4HoEen3Yc94d98dDw76/K/2knh+WDF0IbR/V2iyOsBlPQfLC
	 SYjeK7SFgNGHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91165C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175406039358.30686.8837530307320371403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ebb0c648fbf09ee74065a34a1d0a3268aa5556362ab64d3d8d10f167360304
Date: Fri, 01 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754060393
