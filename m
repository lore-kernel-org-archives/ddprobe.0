Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7E983CC5
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 13:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714656143; cv=none; b=YV8mOURO5/X1T4FJsIaBfvcAyzOqgWCFlozrABpgmcxrptWdUsWaZtPxhqRAGy/w5CA+t3Yj2aDfrMd1dcR0rfyNqJAxCxPJtEeVGOvNj0kaIr0WMuYycLljzbSX0feaEdfHiicRZktcmUZW4WVaDjU63P/hxgftRDWM7++0kQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714656143; c=relaxed/simple;
	bh=MCVKU2SC+2NTg4wdYvpHb9zULgRcTNtPFSVeMTMEtK4=;
	h=To:Subject:From:Message-Id:Date; b=mcoq/zOdNlCv0eDCshVxJNTlLUSlqB8TKadI/+ThsO/Lr4HC9rt2xl4aKhLcTFrHIpKeDmDpFvrWe79hH51gkU5mEoXxWSLySATySdJmJjaRC9PKUBzDbfGSuKujyGozmWuPOs4TIUtKvIpJp5wo5pQaOHhKAKe2AdAyL0yw1UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDsua0ut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDsua0ut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5F3C4AF14
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 13:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714656142;
	bh=MCVKU2SC+2NTg4wdYvpHb9zULgRcTNtPFSVeMTMEtK4=;
	h=To:Subject:From:Date:From;
	b=tDsua0utPmjL7gyV754Hsl89FjUirJZ5lQHPpWgPlnsS9xVZ43IftammIWzeNIgLg
	 ZINh5+onvHSvVFkl6E/eelpd8Ry7fNHCBpIFkwGZpA34YI8xEcIJ4GW3wB/oUJH3mt
	 C3A0zIjemYeezejGQsWoHrWtltFVRsVr1xKqwE0CkoRNepNbvxWe5zEEAWWBqv98ac
	 8TaDuj5Su0e4/mdGcClRz9+IqZzndHtlt0+tX/5517b2SpLl7N4TRf9Jz9fsWTxWFN
	 0OkruKtznTSP8I6Y++LALeUw8fFYX/nVBBsFYVfXDJDnXvAbEYDrAWVWBUJRokiKmx
	 kfLXXbI4thtmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE8E2C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 13:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171465614277.3145.14607765756699943786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ce3bea8515c9787a1c9ccd4c0e8f9fe62b30e5bfd98eee0cc4dc01bfa4de974
Date: Thu, 02 May 2024 13:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714656142
