Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364D52D97B9
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 06:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764223374; cv=none; b=lqc0C2CYPiIL5Btmw78kI7yOOYiDOtik2CsCukH6C+HuAqjhJC8N1nMSDG5IJE7sffwOKB/t/kJJWDPZNo7KzwLvg1EPmN5ofnITp6tZCMWGQqYoczCUV4Dor9kAiC/QiYLGs07kNUeUD0fV2DNACiJHSQyi1zteMJc73tVaBbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764223374; c=relaxed/simple;
	bh=0z6USGFomy2gnpbKNyfd4GEeXdjVm/Yn0UGzwp4+R7E=;
	h=To:Subject:From:Message-Id:Date; b=cmUu8MT0LSCQCOAx44tJ+PEqDnJb/1WQoimWdJQ/Lo3SgHHWwBu+QhBje5VQTUMXdkIwVRPYEKaGqSfFxsGo+nSBZZzUTQEnyOBQePkSojsdwXcuNczuv/pXafR9zv0AB7bvrv8wfqd6p77t/odeARtqP+paxgJHvvi8KDsvcZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VlVFLDNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VlVFLDNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C09F0C116B1
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 06:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764223373;
	bh=0z6USGFomy2gnpbKNyfd4GEeXdjVm/Yn0UGzwp4+R7E=;
	h=To:Subject:From:Date:From;
	b=VlVFLDNVmt94OAcheNdnM+fecYMcDRUN9yKp0ob5LBw+mKEy28igehBkIvyxISid+
	 fclVWMMjV5EfvXB1d5QmCHTyv4cR7vkgxaIE0n1vvXxF42tdHQ5djFWQvJekiSTttz
	 wTG9b00dTFYmgSYjYdK3lb6v0msahAsUC6YCw+TzHXptio0E+V/Ya5rmliJsRqu+yG
	 ZxRYv6cuVxHojMAhlzh76JHS02dg19ZamftO1Z5jjdM+SMEPv6I90y9g7kpIPRR9BU
	 +IPqSolwyKWvMqjGeUT05FEzkTglM0+r6ySTyXefjjDlE4gyGYQ4yx5ulT2hsXSSWO
	 wgyuPQDQHwVcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9304CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 06:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176422337368.27643.8642125773504134525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9614e9e0cff1ca1280e6495ed24463e4b476e56fe8b5c9d634e6ff21acf963f7
Date: Thu, 27 Nov 2025 06:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764223373
