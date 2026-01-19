Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14206296BA5
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768806234; cv=none; b=kpdonFqANiFM0LMbHc0Wu7rxidDyoX88Qhuz7cp6fAmQvBEhq13aB+z05Rjpnyr0vlEPujoOjmA4sT94W/lWsIG39TnqGeEaLIxTcusDKgwt+Om36SVqadYd6fXTdnxN+L05oVMF3SstN1zTxAviKr+RqCufPIufd4wMR4/pzGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768806234; c=relaxed/simple;
	bh=z3/T2Lew0DwIZli2ufH5n9pgU0RvZTNx5BqpulvlkSM=;
	h=To:Subject:From:Message-Id:Date; b=hs05di55UNcuKz+fIfL5t3Xe0Xo76p/XhIiJbtDOJyyp+Wp0khgcNtPf5Z+73KXiFh94eo+xnmarGapb5SCnBC1OIiKtOXtf+pXKzGu9TOn7MtxpFdcuzeLGNkaJSr8uki4nLtUaBkrKf+PywYcSCDKb0JdgWnABq+uA9uZyn1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OV71cKPN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OV71cKPN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A184BC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768806233;
	bh=z3/T2Lew0DwIZli2ufH5n9pgU0RvZTNx5BqpulvlkSM=;
	h=To:Subject:From:Date:From;
	b=OV71cKPNSydz5I7V5MIV4Xl2Nc3AC7VDN+tZNzo/iQTHe4G0t7ls2jvB1plgiPV0f
	 uXGE7FfgzsWD6wp7Fqjnnf6VWYomVyw3H4c3OB0BQukjxQ3LYhREu1XTh5cfBI785G
	 qQhcI9qQUpZy29lCLXeXAvkIoRQ5JFKdcOWXzE/zve7RIlCuKwKi3fIwgch5jeWYPF
	 T21rwGN1s55GbNyhNAQGop7t1P8NBSvZT0l8OVdSazQUQaWQudQI5M+DHcbAfnKKX9
	 DopWPaj06Soy2DPwDFzRifWJGLUgz9c7MtdjACstTrPqMADfbxwvaJ1UEVeoDSXxCd
	 DjN1rF2G8FS5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92112CA5FF5
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176880623358.7461.14585326332710771354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f819d4a857f7416aaedbec0d36964b71b5c4af1b1ca533fba1b5a1b57d300e1
Date: Mon, 19 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768806233
