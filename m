Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A71184524
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 19:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781378194; cv=none; b=EgOWC45lMegoLj/A0unE8enFSmdic53k8LDZkaz7wQbkKq8dhHd2Cy8tf6ek5ZiBN8nn93rFOw/dt3radSy/JNz6j+l6vRt8YboDaT/NwC5w1Rrg+Hkbs4V0+4Zggn4jeX2NHs5D0BMX5CmAJ945oxlqk3W7zWyy3IpviqHJhkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781378194; c=relaxed/simple;
	bh=gVuWe5c/yn+N0HqZojjXfxfvH1w2bl52olNcuhEvMOs=;
	h=To:Subject:From:Message-Id:Date; b=BmSv0OLH+1OxxiJH6H65fXIgGhCyvWURbMD0K8zgwYdDlN+LLnZhCt3RqWUCtpZmXL76AUezVsPo4VGXiTLagh80d9Ofl1k03uc/avS+6sLCP0VSsowWf3lRUqLjw6vRrLSLt4wGrX7OqmNesIjBcNOVsEJkJqXxyqcfNF5K8zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOSsqH8x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOSsqH8x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A15C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 19:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781378193;
	bh=gVuWe5c/yn+N0HqZojjXfxfvH1w2bl52olNcuhEvMOs=;
	h=To:Subject:From:Date:From;
	b=pOSsqH8xeIn9AywomdMNoFnRJNHB3NVPqmZVXwarvKFJwPeNd4fnI49n9UoH2Ap63
	 w73iQcAmm4KvRYFb5uh6xl4H49n27NenPDSLDimzQ0xbx/L1s+Izpq5ZND2VePnTYi
	 nrSeBf8E/dLaOpWnDMbmpx0jx/OE+HaqqRaijX5V9rJcRXxcJA9qX4YDfcyenGYN6p
	 PvQgDl6bJj1wGt9fAwbjzS99yCQW18Ekx3l5HEEhGIdTNyILhcyxj2DskH2R1dkerU
	 Y+79rd8DAY/vpXZ1+rZbnXzdFkBDAe76wp6vkp99gwH0PBEu+Bjovxdz0Ouqp+KvxJ
	 xEuZ3rzV9zl0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE01ECD98CF
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 19:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178137819368.23720.3537840324098348047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 438203776c2dbf543a82c8f539ec60f42d7db72166f730d004cb6362f07b4079
Date: Sat, 13 Jun 2026 19:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781378193
