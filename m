Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3755823EAB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761399594; cv=none; b=trwJSZz7x0Epq+sOIPZo95XdVNMvZ32MtgYUSfgDv/O394nlJooZopligENOJlO9F90jWKdi9s/IMmibneYb4st9J5deAAf9vlWaZmIeBoRopjqU818Essn8IRhRAiPsOiq5nM95Qk2q1saWQQ/qv3t63wB85LVjQx0V3RYXe+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761399594; c=relaxed/simple;
	bh=Tv+DSCYI9X6E+0V8+o0YBMuoZEXk9w5Gmb681rt4doY=;
	h=To:Subject:From:Message-Id:Date; b=KT0r0MYaQNTdc3AiKjy/aTGetFaOFnLugnNmYpLb4sUDcTYIA3hY8m+tklh01B6D5kyYOP88jSZl/Wvo17LIlraI3ryItNPdhkhNvCGMoFuJogS6iUVPSi3ema5P+7e21lVAoWK3OPyoW1h2C+CyOqxx5MpoTtI1On7JN1ZIosA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b7c7nwRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b7c7nwRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5EDC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761399593;
	bh=Tv+DSCYI9X6E+0V8+o0YBMuoZEXk9w5Gmb681rt4doY=;
	h=To:Subject:From:Date:From;
	b=b7c7nwRomqlCYspDz3dlwlP6VZOg9hYMwJ45r4WyKSdAaDNs+OMYEHi/NCcIfmtbp
	 breEbmRrarPZ37aKySjBfAJf9ZKl5Ai1j9pVR0IgHNUaaTLnXOsT7S1ydb/ieR51tF
	 cUdNmCj80lUWXk8iOGkjj4gdLtlUBjeCumNdlyt9LwW4G9QMRDnvXHohS37O6Z6p8q
	 gGqwCnWDriUA7RXFPCmuGMZwBsST6b6F6IosS4GjFmP5Omg1+u1Wwwf1VNTsji/pFD
	 iyX24SHCSw12LTHac/9mld//iclysktMtU/DqNfoUDLSZoBOhGltoOsf5G8DeVN+u/
	 tymuxPEaXCTxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97501CCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176139959359.7960.3988235257863471617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb38d958569beba430d558ecf6bfc820756a55081f81d518499a87df6cfc8da
Date: Sat, 25 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761399593
