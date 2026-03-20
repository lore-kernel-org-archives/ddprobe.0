Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC6B3ACF1D
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774009494; cv=none; b=LOc9W5sw5nAg8hc0a4AF8nNQrwxbe8lKpaJ2mn0M7yB2H7sBoVNk79HnCh3LRSiCfOG0JfCbgs7eaRBq3lJm1NThMIZ2JKcMGBdM2YidMwpCVUIxcKzEo3DN4otDkBZUc5UYYX6MLpwt+0Ghcqr1F6yz5IiOMxZQSOmVyDoQo6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774009494; c=relaxed/simple;
	bh=/GzfIV/O4Utq8kPJg8tuEpVQEcef3UMu2jYyQiuG4v0=;
	h=To:Subject:From:Message-Id:Date; b=lPRgpM6PSoF0EaYanTm9//c6tBWZVlmDExx9ty2Gjt8iJ4d4wBe+Cm8corbmZQN9Tp++NHH9VBE7TOdH1kL0ElJ+DocNjzLtWTDfSGFZh/wtBFR/pERvTf+EQmdeHVcYNMq9fcrAwiHpV65n+wG7mpP9BFKknNOFyZYHbEm/YkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3bHRupP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3bHRupP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A45EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774009493;
	bh=/GzfIV/O4Utq8kPJg8tuEpVQEcef3UMu2jYyQiuG4v0=;
	h=To:Subject:From:Date:From;
	b=W3bHRupPhvmxutPjp18LTiMLhcpR6w5xF3tcxyRmpAmMDNc+WO0OGdkoijuCnYmOc
	 yjUIwFIxV5JmS+22dRTc+sXf23wPENTxjMTz9Aw3bWRUvSZ2SvfqTVhBaHcYRTSi54
	 PGPvHGBdkHdWCQB1fbVAQ6Y0SLGbl/5e7+t4q0u/oIEUGruT0FZrPxGNLapp7A4vws
	 h8/hnpjyk63D4NG4koKu52tYp9Vd1wgr9XZ4YhY2b5E/JLAYHwG6s+WCBMS4jcQ23m
	 D2S0sUs+SmrGEsyZKPg+63AWFQftRTD1AuS142WIE6zPlSdr9MEBIhPhqdh2p/91A3
	 2KDAwjZTqLYYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC03108B916
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177400949357.17708.13638262920618944126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c99becfb303df8399f9693a0662c2a8aa76291d993b64e3662aad463abdf1a1
Date: Fri, 20 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774009493
