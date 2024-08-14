Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CB611717
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723600554; cv=none; b=kc2ykp5QSuv5h9IRoJVcjJv+AYaEswOr6Hs1JQkyzRoFuePv2svXh2IuHJgy/ryEgBUjkRfAz4U4K9ENMJhdVmUHiRY1QEvfJvUAlD5oMyoBgGSD6JcFDaCVEC2rhhZTvXJFXIhFN4gJ9NoOXHKQ8j6Qf6UXb01LwcEw36ld9Q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723600554; c=relaxed/simple;
	bh=vheH92a6dXnFOGYfn2z3ETiO2P0QqAu9i4ZUKiHbybI=;
	h=To:Subject:From:Message-Id:Date; b=B32QCYXInOSJRZms3ISPEu0ttnRQ5Y24cUr5YOiXeozvJ/VRIvLam6SJT0eQ4ZkeKT1k549sHOI0Rx6WuXfqEEzv/TiDpbIans1uXL8D+YBvx9K7OYSa1Kmt1FjOH4pkkEasMuxZXRPHixTF33sBx8hN0eXDyTFqVnr8IsQTd2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjDNaJ0d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjDNaJ0d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8339C32782
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723600553;
	bh=vheH92a6dXnFOGYfn2z3ETiO2P0QqAu9i4ZUKiHbybI=;
	h=To:Subject:From:Date:From;
	b=PjDNaJ0dCJfP4IDCxPYljJOf0mjD/3x6U4CuyOJP2NJZS+HbUhENSlJa4rnwKsbT1
	 yY17HItsGFF80lOlPn43rUBfivk7X66l8X+6hF2+jh4+8VmNwqGlHeWnb2XFVpJMdy
	 JqPPjyvsosLsMkl+a2VTzURFkyH4O6jHGTpPC2o0cPaSEPgcfWK+OxwIKjQ/JCbIC9
	 y4ncLy62KVpwTa4DzytyTAEEUDFbCpdnqVIInXSPN92ZgNzLixIiEJwqxzJx4CFlX/
	 Vudr4HbFLKkt9Pj24Qx9u+FW+z0vwvoksoKFM/YNTLBGonsFWeG23xC/qjZV9CygUC
	 p4Gz/KE3901jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99684C52D7B
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172360055361.19328.12124771669750373346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d5408c6692e29f0788841ff1e2420acc81f486c5e8e37ec37c76992f983fcb5
Date: Wed, 14 Aug 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723600553
