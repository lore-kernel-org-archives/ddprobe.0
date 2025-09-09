Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20236307ADA
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757413794; cv=none; b=pYIVMBMA/UO+5HHZaOLrxQAgHSYxuarOo6V98ErCFC4/0P3bokU770oc7AzS2YUb/8hNMAmk4gFQisMiPzKN48Bthq585uss65gwe7/jSGoEkoVwJONLbonHQPGdzIM/fYg5LCzwnojPzrpLVzxSRzKzf4op4RmdyDTJLOpHoCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757413794; c=relaxed/simple;
	bh=iY5qoY91wClVUyVsFc3oF3YwiECch794FLPcluQZ2U8=;
	h=To:Subject:From:Message-Id:Date; b=d77WJ4kBsTUm0mMmWw/WVQYDIc4p/BvNquMpG5LmjlnS0Cv4SkIk8q/jENZ90g0DFu6aMZoDPGWWOgDb41GpWUlI+JLFmflRpGyRQKwAH+OMNAc7MRPywAQhluV2iT5rxq84lwd7h7OuWvCxLHzuXmxsHbxu/4XNxpacJY/bl9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/PlvOyO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/PlvOyO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C02C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757413793;
	bh=iY5qoY91wClVUyVsFc3oF3YwiECch794FLPcluQZ2U8=;
	h=To:Subject:From:Date:From;
	b=H/PlvOyOGLtfTiBrYWHL5liC7rPXq4Ec8GO0J3G1m18KGdAl9HliGdaqajEWw2ZD/
	 CXxnWEfsArE8F3lLDjPFJoTqbEgQheS6569dU/XXnEpw9zl4ee+sKFS9OK6eR7g3g0
	 D9qlyS6xAmo9IaVVwpedAefAc/uDoHhvJ8Id69k+86N2QVd4oCjEw6Qp76khi958lu
	 BPPTeYN14Zlc8ZH7AJnSVzgFNd+lmo2d5XMdHp+FtcH0zmiyCPhe/sSfUpmgNux6Pt
	 JkLW4YGgBZQAgnT9mCBQlwqNDP5WNJkvZwZSNskeRrKTn2V3dVZjQW/rruwV5GBvni
	 YpllhcSCEDfaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF84CAC583
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175741379364.22044.5601836775609037417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acf87610f18b6806dfc5dca031351000ef9514579722b9bbed7a4a23c494e508
Date: Tue, 09 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757413793
