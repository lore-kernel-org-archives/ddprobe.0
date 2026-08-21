Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9860A3246ED
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787275234; cv=none; b=ihNLgLGzgnWxl0Yf0awl9MamfrNjWl5ZW4G/LPh17o0icI+0JFQXXkt9SuSRdPQTfurxicq/TnXrAhHsEGl2ZVJiAKcG8kul50MdiHvGgH+Pq4I/Qn5FvPE7e5N8SZjO78uRPeUuNUH3lxic+nC3RC5NGh398BbU7dZW+2no668=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787275234; c=relaxed/simple;
	bh=IXTwFrsZDS1XZ3NWAbKr2JSw8I354w2o4UmpGqAhBIo=;
	h=To:Subject:From:Message-Id:Date; b=c+13/Ej2DsUJGf0bZ5/6LgQIDZ6E5rPCvVcnWabe9dnWvZDKzbJuZD64gu1l81nl+MyXOkw+NJes4XDNfNX4Z3ABJhS3hOzs4GIho/4LwY95jd9AR+DdbXk/iu9FoC7bGBlkuNe1Rs7r7Qpkcn2qSPwOwRrIB87jns49vxmwxbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nfp/b3Cu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nfp/b3Cu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2196C2BCFB
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787275233;
	bh=IXTwFrsZDS1XZ3NWAbKr2JSw8I354w2o4UmpGqAhBIo=;
	h=To:Subject:From:Date:From;
	b=Nfp/b3CuyJC+dFyrNM3sJSV8ks26aHOhh5f7hajqAKXpO5NDMSBn2QAHZU80TXPN6
	 Ws2QvLn1u6WpwX8C2VsJHxcEDoguM4vjwmrcIKO9Yw1hZWjnFQj7HDNqra67SW/ANE
	 2NFIGXaxoHv4gvOEYHzNz59CpycL3Nguk/gFHtBqb2LIsVNidsirmobXqk0WoOlHYu
	 ZD97XiaXrBOci2ErcWEHBm3NZMPsgj6AjKk0Ept6bAnjFbe2Rd5q/SNI3m4xAsqjA1
	 KUUdCDK/otO+QCUmJMkkr58n8aQyXmPTM8HPa0QVR3G98o+t1Mb2wh55OqYRsbAO9c
	 YlQnvGrYeg3kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC23C5DF81
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178727523370.28714.10584600596850613799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13cd41a5230f0f0d32218bae054281d44fec51e139e8a35a67b3d9ca83f07da2
Date: Fri, 21 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787275233
