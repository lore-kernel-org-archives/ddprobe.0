Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F0E3019B4
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 11:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765624374; cv=none; b=Hduawf1Jh4st9HRv6fhBIIQPUbm6/QYknzbGnN/urlmOdzKm3aqKVJo6NC7uFdw/+2P8eHGtlREKaiwPVLU1ToFWGvDzy9FRtTc3jECdneRotlbpZa9U+O87MvKCoZt04or1BmBT0+2jOw9ZHI7Uw//cUEBHD4GBruMHijx61PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765624374; c=relaxed/simple;
	bh=nI+EDOA1jX6kEAYkCWrVBYK60cOf25ZBVf53A6mZ03M=;
	h=To:Subject:From:Message-Id:Date; b=AZtqdt6HT4tXujJ2i9ZUyXbSZludO0bfJxCFB+HG/TTHOHDEB+kHaK6c/Qnze/ZSX8LZ+uXYb9/wflbg+emhBjb9kN9dvFm3+1/UKPjuKeXjDPJriZD443L+wAt4saZgX/49Gp0RdPig3wLjOsraMcviCwlsPkpDaAakVZT2vws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HsAttfZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HsAttfZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3772C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 11:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765624373;
	bh=nI+EDOA1jX6kEAYkCWrVBYK60cOf25ZBVf53A6mZ03M=;
	h=To:Subject:From:Date:From;
	b=HsAttfZRdqe3jL1swfPProAqrSUTDe8s/vRmrdbI/tq2OuZD5p+hvYTpQF2bvY0Az
	 OSx6zpS2s5JLwsoaZewahix12CvjsuBXf2Kaz6nKtFOiGXvvGPyVrS72arN5+FLVBV
	 oaoNkrDsHXsMbo3No5ivxQ0jdPVLghn9nuhOe+WAi01SJ4bN1gsyG0+8mkF5OkOvrp
	 vbKtlxkqjMyPfZ45m0leyHP9cP7i2hjh1SlUqpMaEaAXsFDct1mx4fdl6jdzYovVE0
	 bGtQWK6hNfNPTqbN2bG6V5p4OPsgeBom4t4uFcv3tQSjHLncr2Y2j1vdWiAywCeu7d
	 NslcMtTFAs6GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928BED5AE45
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 11:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176562437358.26192.15447648157676685729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14899cf32848f847b530e8ed05817cccef1e6b320b6756148496e864b797d048
Date: Sat, 13 Dec 2025 11:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765624373
