Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D92C1B7F4
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754153394; cv=none; b=X6XDNXNaLVyeIKjJZ9OR/gj8WmMCxGjTssuV8pUlUI4XYzsZNMKUVDC6W6EwCRe92eaJX/xEVx2eG+kO/T4TEjKHeHLez/06Qy1NXwh6kzbpBEC/W4EYL29JomqUtKrIFR6wpGCDTd5DrTYYpO8BSwepjCmIsa0XOHFgrIbE1Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754153394; c=relaxed/simple;
	bh=9AK6nGcB/dXCBkX/PfEmRmCrtq3YIXVWdBfKhwF+SOQ=;
	h=To:Subject:From:Message-Id:Date; b=LfyVQs+hQWAMK8hOAj49zhqhxn+NMeCpcaYje6nCNVspfNOT8P4jX3c33t1TNTZ0a/t5i59ClGvUB0LlTf4nKPvpL9IjblHPVTwqonmYPkzj/kC3GSwXBAfIlOODeGOBy3CsZVfKe50X3NASQShyVeEpEsDmwkAwS5Vui7Soo/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQOAT2tP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQOAT2tP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B8EC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754153393;
	bh=9AK6nGcB/dXCBkX/PfEmRmCrtq3YIXVWdBfKhwF+SOQ=;
	h=To:Subject:From:Date:From;
	b=TQOAT2tPgb+mPW4NSD/nN/SxOMA1GR0h70v3QX/4pZIKD0IRUMcwuv9z9FuJJfK3C
	 wlwX/f8e8LmoMdKMb/uk+ixKQuXjSrpz6/w9/WjQZocc1DbgXFARorW0ASnPBh04V+
	 nrQKMkdsX11iBm8HLuLKi5RfMctTyVKDTV+T2I/zcdZx1fv0muKipF9/JnPhW61OFi
	 yd2YXbKoig+clNOozbkobSAwBmne4djd0rjYDNIXHms5OyOXV7v0uWd/Kmr+Vn7Oko
	 BT5aZzId4WaasIE/mwBahAWdbyRbJSJIulube1mYwujU7OrUjGJeAsUwJL80Ep4O5N
	 /S6N4wSydvyZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9220AC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175415339357.26254.18064340778818018857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ccd9b496bbcf47ec57a04d3ba319315e24573a15814bd289d1c3400bce2866c
Date: Sat, 02 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754153393
