Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8F33F44D7
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 23:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778888434; cv=none; b=oiV8ASM/n6P2pb3vdAcPZFXYWK8WSWsQdZOiD2aemjegYe/EKIlzzfFwjuxQlzVp2pXdPOlD1/ZUWUddiITWgu5nLvH4oy/aDXKhobvRtAbJqmPx6IcizOOBl9wIY3jbmYPAb36oGJ79rYcejGSFVI3DdGjHedMo7J4b2UIsXHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778888434; c=relaxed/simple;
	bh=q5ajIdlUU7jKrvszU61i7nLOHiTfxXIAsCCWHUlPAko=;
	h=To:Subject:From:Message-Id:Date; b=anmlpMimWOi78uacabUUzOz3UdmDBgEpHmEQaZ57WEhUW8WNvI2KeRnS2rYaMwf1ogfj0vRSwqTogFuyoxSOLDB4Ld0/WFBDo+TwIg6IEiKqbGTccazZCuWIBkDsGslOCPlMTjwPiAJ6KsD4APg6VnH3/PvRZ+CVqjvgBjl3jVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6vMBnui; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6vMBnui"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8401C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778888433;
	bh=q5ajIdlUU7jKrvszU61i7nLOHiTfxXIAsCCWHUlPAko=;
	h=To:Subject:From:Date:From;
	b=s6vMBnuid5tORsx6+aWfusjUKvP+82S6Rx60Gf1ztL4bJWlduHlDvALLVtPm4aEFP
	 ckThwvKju0gzBmoMEQp7crXEen+M22EuHzAFdm55niLUz5bo7v+l+ykO88sT0ewoLe
	 0588baq2lM3qjJdCOwHU/hSzLfAUTo1kQ0sEI7j0VhOqdIse2hqiC/L22FmVpPpkvF
	 umLBNB+UE2foAoUf/8UpkQv/2v/uGE2jFHrRPnE0i2oTtKtyu8gSubhCesVV9SX5n7
	 qPe2HhrPYzYMjOtsj20ZodPiRilQVMTak2aMB0f+NjFES2Kj5GEv8hcZqoaKZuQH18
	 IS6GWxJozAg5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA08ACD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177888843368.17842.6551030771674597686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5860bc0e056f23cb69009e29e6dbbd7df07e5705cb7bbd61ab85047a0ad9d62d
Date: Fri, 15 May 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778888433
