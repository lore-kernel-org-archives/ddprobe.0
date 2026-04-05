Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B11D2D4816
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 17:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775408734; cv=none; b=eRUfTifT+hiLdf7pu5ybZhNFT09gq4w2iQmBtbYujyLZaKvpeZIlSdnnNz+Z4LSfJMEJlCmqPsHpc/X1Qhy49T2cSpuCaIX++LyodkPl3lmqYWx51AxAhKPXwjT1xfV8rbGmIURegBIQJFuMCB0Y8c0sDU5EanOiZvZl0hNwBHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775408734; c=relaxed/simple;
	bh=L8oGi8TkXIANUFGrV7j1wl/fYxuFw0EIil7PibzVXFc=;
	h=To:Subject:From:Message-Id:Date; b=IgbBVlI3VDSCOBGvr8DhN+Uo1aaDu6w9zy4TT3G5yUN+t3bPSLshoB5fWscGr9wpB7AZy2SPEIsNxf8MXMa35jIDbD2CCk3oUatew6msTaD4HM6dHbxvy+h9GvIiVi3OxnfJ54WlXfZQk1XvXlOyAd9idoBNaUagIUQ/UDeF7eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pvh1N4/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pvh1N4/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAEE6C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 17:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775408734;
	bh=L8oGi8TkXIANUFGrV7j1wl/fYxuFw0EIil7PibzVXFc=;
	h=To:Subject:From:Date:From;
	b=Pvh1N4/isggOoOEiWAm3PryytZx4/dyeWjcGFgcwQsdBwe2p3/eB1ZfFPOvwteDSf
	 +E/adX02SnP/YB93up7wh3s8r6pp9Hy08EBzF9s+kDD79Taf/R2taRYT8ecLyrhC68
	 LKSrvY1YZED0KFWTTRe4GC0A4dcj3PQsTHZ4gI4kc6n7HMwjeP5K6PFlfA3MrLpRu8
	 qHB4pitHpR7ScyWYCnhccB2L7FgfePETBsK7vmyZ/lSV9EQtW8AqEh/BWpKH/MaWvi
	 FX3f5NrUxTzYblxJ8LZzjqO3a1mYSGByUqNvSFevQAA1Y3S8rLgL7i6lebN1BmPbp0
	 nzW8tXrHfquwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8BE1E9D812
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 17:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177540873379.11492.5237543055293135961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a76e2a3c0d7f1734b62ce73ef43e12b943d8b2535e40f8067898262c7ac6faf
Date: Sun, 05 Apr 2026 17:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775408733
