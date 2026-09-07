Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 602C848AE39
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788781234; cv=none; b=ZSFwbHu+a6J1HXyUnNvg4KswI9G7008DPAxYBjX4rLu0acJgfdhiSLC9cwBO77ivX/fHAhU29+ItPX0JoO1osrEiO1JVEes7eHyg2/5A6lmZ7U5x8ETppK+WjwjYclMa9fZPQnJiCuzHWrvYDXxHBtJM1GYTBVouuGGcwonhByo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788781234; c=relaxed/simple;
	bh=FyyzH7FmZlQxawNVoC001E1zZ4towgi2zmSdiinWgO4=;
	h=To:Subject:From:Message-Id:Date; b=YNKG/bkysK0ZNB5Bh1gRu94OI/NHFHLalSmMVCOJdsqIcNqK++/jCztvTsrEmWAodJ66kkn/pQBWaLGLwc95qqffPeRulswR1ugYjk2Pl/1dsFl7D1OTIzPV8aRJ008E++yMtucK2UtuvtvUI2gMSKI3HFK/nW/UpCfIJ70xw0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c348+CqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c348+CqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02D5C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788781233;
	bh=FyyzH7FmZlQxawNVoC001E1zZ4towgi2zmSdiinWgO4=;
	h=To:Subject:From:Date:From;
	b=c348+CqG2GPJppSdgXBkbNHWnuy38+PRtRiAwcQxPP58ttgom+bkwbsCV2ITPTBQT
	 sni2Pi4TOchuP4fyaW0tfP/dg8TDKb0nwY8lD4i5tiNBcKTbCsjrVbuImK/eDhniUv
	 ElA1HCPiEbMBy9lfi1FfT22apzWhCXoxfGgyAUBHUHnzVgcNfR71pfFNUvRPe9LyPi
	 pVHp4D1MyzkQsGXSPe0eM+YgJ36xGp1Oeeh4Y6r4DjosAaQGC0Lj0wZENFuF1+aTfI
	 P/4Hg3Z25WLVKp5AE85RJzr9xZDH7TzVdr/wiDJ5Yk2ukNKlqcZgyk+NbIS5Fv3z1J
	 sNPZJr5IDNmfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE1AC79F89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178878123369.6289.17773774256279968718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d9c7330844b7ab698017491ea7507dc8d96340ccd0be1f4bda9e900b1184243
Date: Mon, 07 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788781233
