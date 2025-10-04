Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326106FC3
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759586994; cv=none; b=ne5r64ly5qF4tLDRY+1GMfTkodlPnxA/nVnQ8KHLQpmaGfcpPbmQMqqumBnNMNGAkamIEqtXn7tyXG+BaIG4ll1RvRWy+Cl+opzj0J3fsKNxeUhBeXGbfzOjNeL5+dV167KcAf0kdkMiIG/EjEPu53VLZiIaFydXIw/Fj40aB7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759586994; c=relaxed/simple;
	bh=rEoy6Ad2Vnb6TdK39AU+9ob6AokHitor1xxVyr7UbxU=;
	h=To:Subject:From:Message-Id:Date; b=ie0Ln2RbMz1QCL75eBDu1ozsMA+sx29s/X8R9dRenOJ5My5BTdkVVtLJL/Pll9ih5knvifgvMWvFvfQsZHdbVxSduxWP6INWkSGD25SGPZxpt5TMOh5c8qOvnOBa/CNtqPWnkf50L4uo/I/tbP5mSyGMXwYyZeSODbXnjfmHc28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZKCBiNcl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZKCBiNcl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56F7C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759586993;
	bh=rEoy6Ad2Vnb6TdK39AU+9ob6AokHitor1xxVyr7UbxU=;
	h=To:Subject:From:Date:From;
	b=ZKCBiNclaU5usK3iQ/fz1/E8R34g0T7egNuqdSBhzaMbz0rfs6Tw58oV6xc3j5vc1
	 UA74LmigPjWdhr40wpMEabNaC+iwmFwEIXSgUYaRIMTXs5YTNDCApxQudo0D9HMusv
	 gShXoQ8EgutsYEISiVwk440LGpgyDmkH4lb4Hlm/y/+67u5UXh7nfLPSgYWgXp3BeG
	 xFPlmvWTTVsCse3ZcHeUS1Z8iUUyHK6okUwJHWZycCO4nuJmeiRNlvRnkEeAUbaAq1
	 eDMq4Wmf3uTB/yb6wNqH/so2HCEv9xuOVfQLvkjVycpsbOknYQoPRWK8Qml0jjGOdF
	 c8kJUTx4of3cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CDACAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175958699357.8529.14154752748241267011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6acd8f92eeed2a139de2398926825cd893a5b66c9d59992d0ca480a0bb173c8
Date: Sat, 04 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759586993
