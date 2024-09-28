Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECB94D8A3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727499954; cv=none; b=GV6lMZgyLV/lXMqSD5SMiEBV/Kcf/u3owNpv187yrSUc9Bx2k3Tfa7v8dW7niZem0Z1XvED69jh4HDU2pAbKVHGDgSmlAdB1ijYjJf+JHff9yiT5S8UpcGp1TuiwXm7pxlzI5AdsDbKYxHYx3DRIwfnoxSz/vtuZ8Bx85KSOzBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727499954; c=relaxed/simple;
	bh=rbQ4fM85dABQw7DIKbGQHeFujUmeAeU+MHlq2x+2B9o=;
	h=To:Subject:From:Message-Id:Date; b=kkwgEZkwdWh1Cob9cBfIDJpy7drmd0aO8oHIkzagIxllQ09uabvDu+UjUqJeZj6sPNeIWnZQry89t91MmNW99dbwBk7J1dF1jC0Sd5FlM+Osi/sECoHnjelNaCCaVqr/AaO63mwh9LTqA05I0sjdX0yeaQPrxiNvW2JgVd6uGSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxWxeJba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxWxeJba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E5BC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727499953;
	bh=rbQ4fM85dABQw7DIKbGQHeFujUmeAeU+MHlq2x+2B9o=;
	h=To:Subject:From:Date:From;
	b=BxWxeJba+Pub63XPfQSTHKuxjD7TLgrZFfsYD1RUGUZ4H6oCIHomM8/28wlGIdhTI
	 1Bh9L3rWuqcGg9wWJZVsrCjgkd23Oc5OkyGEbdLB4qbSt1XEGHilYfSNHL2NcNnyk4
	 E8OSAsitB3jZR/29IjFEP5NhO1it0NIkCH5neVEIWTjqyS4bAPaesy/rpPSTggGKNG
	 JqU2KKFWNvMhqGGKvTisjBG341i2j1Bj+e7sVLNveU6k7g3gE0N9DE5KxFBTxkXpUR
	 kuiSxYrh1x/kUzqX2WgHzYSfeZNnT1M2A14F+1CNUcGdJMzr0HuN3OIjTowpYTNSws
	 gm4GXlWtmyAEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF08CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172749995362.9389.16871812615495843859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5783aab4a74a9bd16bd18bb8639775308301bc8fdb29c1634b84e54acaa9cef3
Date: Sat, 28 Sep 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727499953
