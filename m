Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46EE4380
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728107154; cv=none; b=BditnwWaHWiJV1CXBWKsseMkrb6xV1UnNDvWR8sHtZqEfdbkMgI/32p/HA2jfuNW3ijPB0ZgQtgY1CRhpeV19NZ/gTuLAxTgwBtCnfqju18bmbOH0A5D4/9jp4zDAQgca+5TPz2j1L83gq31uhRk1jr1TlRs+dPkWpcZyZKslbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728107154; c=relaxed/simple;
	bh=Ah3rWlfRRM5oRUVGXNGrliVNtxSJpmkzztRomuHYf3g=;
	h=To:Subject:From:Message-Id:Date; b=BYRmsdw6za8ymUMnB8/WHKouWJNp61DjBSGXBWEmvzMN8u0wwdcnx4TPLRWd3bFi2VHqOIzewpaBHu6axB5T94SbetVDzAWUdzLAopU2fswnErZzmCHvydXFFlSbg1EWTX/G6ppMztx4xtlF+/XRSlqdOUDqcbEoKb8aS10c1zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XtciNqbH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtciNqbH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7BE2C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728107153;
	bh=Ah3rWlfRRM5oRUVGXNGrliVNtxSJpmkzztRomuHYf3g=;
	h=To:Subject:From:Date:From;
	b=XtciNqbHluQGCgqmzcTeg+NEd5xzjl7Hx6rXwDcGqnSJKvI9jQB3ympLmWlBrRDgu
	 Jn87LwVjIcoZwwNV2A+Nx5tl0M/1YMHn26P1IegJi8XbUqM8hJOwyeyUF1WbyhBXCr
	 ogDJw9EQT08Vj73RimjaOKyL0DZWNep/n+MWxjfxB/TX1EpgnOwEuN2ETzQcdu9dhX
	 2bI0KJGMp5Wl1+M2b5vcEeibXPjngqS5VfUxwZeob4L14EO+bN6IPaCEUGGd87VT3C
	 2ucKCBWPjdyFN4Mi3MdXYCx7+wy9N4AVoM/kPvoFzexh4tqw5CXjsfzN9hxd26uW87
	 Mqp0muzGT1nQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0AC6CF8861
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172810715362.19208.5483489824463248078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46143ea7cc51356204d7736c7e66b25abcebe0f0b1f7aa5b706813b4ebce5c69
Date: Sat, 05 Oct 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728107153
