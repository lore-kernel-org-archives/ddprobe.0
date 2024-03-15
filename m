Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F11CC4D9FF
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710547097; cv=none; b=ptIGTVNnImkGwHpivc9UKdZ45OQg7i9SGDtV23OnpHMVOPxqBVf8MJ1He+JnImSHsiGKcpBMNsT7jKHJv3d/VGITXhyay/4lHciBTPWANOfbHjg2iOJTqB5g2hDPsG6aJ53li1SPVZlv26MMDeOVc0ndF6k7JCvVr4y2/ZcltLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710547097; c=relaxed/simple;
	bh=9/GxSB+k3IHEjGhSht5sZNPONTQgxVQhe45mSymoMLU=;
	h=To:Subject:From:Message-Id:Date; b=Ykm9+6k/c2INGMRGs5jx3jD/khtJPa97DF8ynNLUMk4vi4QbNpJtZGppPmcgfpSpF/rVcO2054zJ7jZFdpvH1hmD51R6biBQn8fi5FNQ26uWx2FiJXh0Z+MF2mXhQhrDQ8Vta0MhgNiPzeKPeNVBM/rGtR8C089Io2l5Mx7ZHMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h6j1xjvu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h6j1xjvu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7521BC433F1
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710547096;
	bh=9/GxSB+k3IHEjGhSht5sZNPONTQgxVQhe45mSymoMLU=;
	h=To:Subject:From:Date:From;
	b=h6j1xjvuYYMepaxm4eJn7m8ZsJHIawuzB6Uk9SPU1P3TnW/EvrRunwiHxPvOf4Fdx
	 nlFFDoVSpbBWHtAquJcHUvK3oQiaxC34U+YNek/yGCXzBW4zFXEBwHPzoQxrt4afg/
	 XGEIL/m1fc1/x69zVZ00jIO7AzZzF8hrcbzY0D64zgMvkoutEeyg1CBCChpn+G/yIm
	 tmT6LE86rPHOIu9YfGkOnKU34n6y+lS9O3ageMENoHl5gp+I5IJhtjo0CrKdehidKU
	 QIpSZkllUZU3eHM8mqaUPX/vtqnjWrn1M66Wi+5UV9pBmL3IBDPqIQz1HPmQrjphEn
	 taJT2yuw7iVZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 620D4C54E67
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171054709638.8340.10965042422967284212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f462244e54230cd8e0c1075b42679767c557d9bd92dab7ca68bc96ab8f600d49
Date: Fri, 15 Mar 2024 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710547096
