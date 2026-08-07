Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F08F431498
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786137034; cv=none; b=MMExB6V7eD5fPr6kCXpA6QBhNS61MxDW+QxI400dZ6QBwKwGQdMZD9OoN2wSw4lJfugtrlZ3s7rbpx29Rs+sNNIH5OquBJDkCbmAjTWbr/1cz0zNT47NCvw00oLyGiIyZp1Tv+a5GGG8zcA5BppYahcovuMS7pMwlf4pvqGEngM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786137034; c=relaxed/simple;
	bh=RdPJorRRFz7YaDbDcDgrBcDz/ZoTemqAWUrPdTHnvhc=;
	h=To:Subject:From:Message-Id:Date; b=Bd8MNNHNJ/xrWwV3WqM79YzZO18MLXmSbULVKh2GR2mF7pv3xrarY3Vy3iIJcb9VwFVpNficyGdfB1Dy99mpFZrxHqkWZzZZRK5cQyiButg2Acb/rC6kOaUyhuFqBihFGl2TE5FDHo+c8nqq21o8ie6Z+HkBV58UsWAvxYcLOwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfDaR0sy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfDaR0sy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03E19C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786137034;
	bh=RdPJorRRFz7YaDbDcDgrBcDz/ZoTemqAWUrPdTHnvhc=;
	h=To:Subject:From:Date:From;
	b=OfDaR0syIyGSEoYwX9bb4oQXeSh8pp95kA7126pS2xX6FPF37v1PvYtq3J/t3Dwsi
	 5nw1vTzyB43j0m5K1kUFBAon034vrLVt54nDYFtSLPPNveDZNhh3V8JKCu6XIXYuUo
	 2FNCt5Bdys/Qwp0yV7zUbz0UPeeNJXXGciwbR3HpeA14ltWON5nvQTD0owbflXS2zo
	 3NCra1CLldxkXKvAQStWFSa8Z3R1DNpsuMVu9VFWn7El1fb5tqauxYD0ua3v+K705a
	 /AIVH5+hsO98o2ezucAqrjl67YFwErGmCxFRSZN2bBDUOmizE/wCS1r7XZQOInjNTC
	 yCPmGAxl3BuaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDF3BC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178613703369.4902.6689833530366155086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cb0035c6d0ad23b9e308501a1c3182e905e26d1f0d95598825ab559b3357987
Date: Fri, 07 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786137033
