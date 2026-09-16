Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E6C37F8CC
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789563035; cv=none; b=knEWhzyaiEJBIityCt8zjqB4IkvifUaDV3xEEJFMaRueInK9+bhlW3727zxwqwEDOsvlHyV6e87Ni8ENMrR3YjHDX8Nur1qHu9m/gzaxAuvMwZBF3vP07flBEDp7rYCZ5PbvSb9gGZ2VDiB2HuDjoI56PSUHGk+d57qoTEEfdeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789563035; c=relaxed/simple;
	bh=R6CSQOGaBZMpZPk7j5Ds48M8qHng4nYZ1j8wTle3Pjo=;
	h=To:Subject:From:Message-Id:Date; b=FPDyTGbjJICokTSvuP4zsTRiWAaTHOG30Y60uO+b1TtC7inMgLYr9SHjXvnRZEFS0K94yp7JcrQGLNzOk+QQXDz2f270oemVG5h6Kv67yuxXR9cfhdVahPN6E0KGEMNx0UtmibVQAxpFPmqq5Gmcv6LuQxeRRUPID2fB8yuUD6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+v1bMWU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+v1bMWU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2042C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789563033;
	bh=R6CSQOGaBZMpZPk7j5Ds48M8qHng4nYZ1j8wTle3Pjo=;
	h=To:Subject:From:Date:From;
	b=D+v1bMWU8okLxvJQGJhlkwp5nr4HH9CVv68R+dZzqIWj3vyKPxsWiDEIk5NC0aBJ+
	 Tl1jnGrIKbm/XAPHfaUJl7l7De5zPKfTCN4qQlZ64bBxUVzmgtoOYbwtf4GiU0lwHQ
	 j0U7mXjcTFSnS8sv7cgRez17twuAnsAyWOmGWFdpmZAy42XIXI7uzJFwkgUrkIpYUZ
	 vctxWB04UJDFUAdDKNFT3sVs+uqD3SRjicZ7A2lmoGx16Bn/Bd/B+Dwph2vBm/mhCY
	 IC8v/2l9NP0Gex/RfCbLKhkmqJS0d0ceOgGmG7MHV2LUWVvxc1TUiFB4nN27R0JXWI
	 SiZqQCEncmPHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD66C88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178956303369.5427.5677433223672796850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ed8452bd568f0424ed4f751f7b173e7bf6f86507cde51f81936af7756df5dfb
Date: Wed, 16 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789563033
