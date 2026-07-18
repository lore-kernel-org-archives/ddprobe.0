Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422AB63CB
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 01:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784339314; cv=none; b=Tki6w2AG0OU2hMXbbowBscmV7d4/pBnkVZKu7Ujwc53/bVwLJh7bnbMfFag8ZQQCCnN0/tHA0RW7UWq/q2cFao6zJ9g8iumEaunSRCh0WnhOanHzajOcexcUaXBTGGjLOcs3OErwIcWAMJ2/TT7GjsyDt0xMEBpwcYcYi07ZWG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784339314; c=relaxed/simple;
	bh=zMDpcNMCjhzDJj783vhn/bwefSjEL1HLg7R9mPDu050=;
	h=To:Subject:From:Message-Id:Date; b=MSMVBa8vsP5EDgP1RtL7PA4mjcgJi+tuCyksNwCI7LWRMfO8dRukXXtrpfKAFsqeSJTyizO8qJWTLYZy700BoGdRSp/SIyQ3Id4f/DxeQYSCdfAzwMX0v24Ix3APzRIvO99Wzfm7VpFviYOn6A0BcVZ1MSSit9uyH+B910JXbwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7CbL9hD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7CbL9hD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17AFC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 01:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784339313;
	bh=zMDpcNMCjhzDJj783vhn/bwefSjEL1HLg7R9mPDu050=;
	h=To:Subject:From:Date:From;
	b=N7CbL9hDLJPreOL+pPM/Ngdwm0RFusJ14pRygHzLwR19hmiBf9of4GwTGJ6gBzuEQ
	 LZ1khB0e5lcAjPZoDakjJCzCaIPr+kyr7KRliA61jZZKomexdPooSlmBF6ZygLDduy
	 aizmOpR2ArpUFP0nB7+TRNoSt6wCCA8+9v5l8e7i4Qan9zYpevGBN0/GePRUVo5er/
	 5VOCDIHnrahaeEyiuUspTXh9RO1njEP7ZknpY/K+dQ32VY/y5D2DGn28BDgi6V5XCu
	 lGPfw/6HQQDa9Re3PM7b9IBGTXAPhwM18/IqRR59mCeuZpxhhY900qK4bq64KE7y2A
	 2Y6V3ASmS50Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF04C44520
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 01:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178433931368.30990.11404507425894691383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 136177c92f9bb373c6578cc3c89f648498289dedbce2001fc55301fbd896cf1c
Date: Sat, 18 Jul 2026 01:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784339313
