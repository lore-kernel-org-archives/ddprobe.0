Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D736323E
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749353394; cv=none; b=t1yWxPbeVUzt6ZjxhRiF+0Je9raslbFwAnDAO+0ZMWcKb6N4KPH2gfS/fKfGrfbYzN5tc1pA+q/sZB/lYXRFVSQ/CFks3IV37ISgxlWv1vhYGwGi1+UK4wJ93B2ZVdK+HWQTCNSG/MwLhs3sQQri46CRnQlnhzLfLhBpFPNLvb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749353394; c=relaxed/simple;
	bh=F7iu/6ZaxTwV3fvfymGeUjjFqCXVoYZ0101MDSlJdxI=;
	h=To:Subject:From:Message-Id:Date; b=Sa+7YzX64aAtUJxhARPgbxuJv3SfNWK4bFR/7DlgmVI00pzeW+6UdXdSSApB1T+PaqfIPYr+d0vBpJ+OVWU/832bXSC9URMdvmkHfYa/L3w+e0r9wPjttEOJEgoPMAssiq16/tTOX6n9YmQ8sbP465wxeW2TyS2e1lYp9yUCi9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=daIhmQoJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="daIhmQoJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7039C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749353393;
	bh=F7iu/6ZaxTwV3fvfymGeUjjFqCXVoYZ0101MDSlJdxI=;
	h=To:Subject:From:Date:From;
	b=daIhmQoJ9LI1uNs20+rzGlVdTaGfiQMfhV0qyYj3LJVFUlcgu9z8nWd6n2vmHMtid
	 53E8pNmg8iPSMD4gwheDUvEpPtivII28goKMDQin5Uq8EUkEwcB4rrGX2/D6lTjwJq
	 sn8aO2ApXyVOFvi5newL1T+cnm5OMOKi45KtYs10riJpZ5MGx0geBgW9kjRedpS3uO
	 HLnlEmQxYWwbWBs8sa1TfdbJM4YDRV7aJAspMXeiMiRBiuqB/XkbPDiWKjdNGBXXQL
	 D+pyUY9Ar6PgV2MQNjBvNmJcpmJmLZtRBkZaHKhKsuR6VlegcEawJqSsG3tbvDzaUU
	 8OBOhGZnBDu1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91905C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174935339357.21746.3224046969025144424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c00162afe58e43d14f4074a13d023e1d3ff8c16b09e824955a18795de0cfe4ae
Date: Sun, 08 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749353393
