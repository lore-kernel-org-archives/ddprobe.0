Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AEDF9F8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 04:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719807263; cv=none; b=p99zIHaQsY5sCdJBjNB1o+DfCAlvTVOyuRwXRmulZNAf8yyxxNRP9BGaUJGYuVGnt7PZ+GiT5KKIzlDFpx9h2m+LW0eBcX0kdqCZoDwbChAaAaxxE5cKjpdwrckLbtVkJFWbFjv6NIWTK4/X02uPmNYFZAXLwQzs+W2C1YLjofI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719807263; c=relaxed/simple;
	bh=TTiyQDtlkh40QtYedAiVc6Zd+RHRd8yn9sfHfv3KZXE=;
	h=To:Subject:From:Message-Id:Date; b=AQP0V1X4+0ob93Hw/i88LdS+9kHrGJMZdPIrar8cVKXpHBg7/gapY4oj4IUYqMNM7mgV5OHTVFMs+x1avDAfPsuET2r3j4QRKGOu5nUbmGqlrwZObciICc4l3R99nyufiqRJ6di/yRM+EsBrs9Z3S8mxgrYPmpWoMV+ocAl61OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ttt8v35Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ttt8v35Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F70C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 04:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719807262;
	bh=TTiyQDtlkh40QtYedAiVc6Zd+RHRd8yn9sfHfv3KZXE=;
	h=To:Subject:From:Date:From;
	b=Ttt8v35Y85ZeNfQdvK3QEGMbU5l5SpD4vNmdZQl6r7zI1OHOVPbBGBeM8zCmSzrDR
	 zxa1HHZjdusPu9mayoKDdflohljHzDT/nazE/z/0xDHx5hOzUKVyLM47i7c7Y0n4pV
	 9lSiYSp1c4jXz2fC2U5JS+6O73RKtG0y1ChAY0gwiBhoqWdmrBxdrFjMjZauckKhw6
	 ShjS07wId34tEkRRuCg8ACww3nHNi410IXjA0etO/eHUHdUWhM/Ph6/RNYMeFSmWpF
	 0q0bpLqXvW3KK59xM96e8WYP0Cf98jysXo0mjwn4bbPNDB0bIRtTQDftLc35PYDd+s
	 mScxkDocujBYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A98C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 04:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171980726275.6100.3412929771861543728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48cbca4ead2690e30b17ec248637518df344f464698f0e7885b22c9058c775f9
Date: Mon, 01 Jul 2024 04:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719807262
