Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374AD3BD63B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 07:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779175234; cv=none; b=GC4nppVWhYJExgNuPH3AwWY/71xNxGJ1azgAzEyocxuX+DPVfiGxE4/zpnS08vRb3T4BX1ddB2EAktygQNhZ4Ec+v+GBBCuCbfz7ZFxHtfxpd4fRxE82YcjWxwElH/yJHbbSYSHL9fiEucWCxeE3e3UrtcyZdRMk9z2fCTtQ06s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779175234; c=relaxed/simple;
	bh=e7W0OYT5Rh1FMbO8h96muOKlFn2ZdPGZvUQA2LLivAI=;
	h=To:Subject:From:Message-Id:Date; b=dtA0n1oU3knylTZ8FLrBrC07p/FWdqkmbgY9vuGZQGMpNytm478+3uOtIE5J2w6EI1xqbKDVrQVxI8RWZ7yRjbRhEq/eW7HqjdyqEztPcsG5xFV7KSXEL/reub8dLjEuCuZNibZjqCT3Ns2JLgRqJEydIpuq9vm8QfLrUMnxPZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxvImkpp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxvImkpp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD191C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779175233;
	bh=e7W0OYT5Rh1FMbO8h96muOKlFn2ZdPGZvUQA2LLivAI=;
	h=To:Subject:From:Date:From;
	b=MxvImkppNswED9Zgx98z2w3dbLarVT6A/eUakHIzQHjWYgh/5+N2rJKpzODsxg1PV
	 NuPvi+FYrvWowNH3sUyQlHaRI8AtPnjm+FcLmUP3Y2kouLWRwWO0sMmOt65Sw0DSEz
	 rBgkHhOZS8FV+aW+IMFXqlb+r4XPbAT5Os1D2OIzHNj2W1IhaTvAGWNHTCFECCBVoc
	 m02+aGOYX731MMpDQp40zUeFFcLCKAIhm94ZxOQWuxUtRcSF75j73QOyT9UflUFGa1
	 tsWh+1DYmtC8deqBf35YD7g4Enu9W+qYyLoWAwVQPc04QSSHQOModAEk4jcqt7KIPy
	 qv6jraTLYou0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE084CD4851
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177917523370.2850.13287197778203974353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7333cd0148ffe16b11896eac39f8581b0dc826a1310bb414dac9eaa28eaa4824
Date: Tue, 19 May 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779175233
