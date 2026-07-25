Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB8A13A3F7
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785014434; cv=none; b=Ce9i/zzSYC6oaw0fLen5v3VQrRvNb/zqNZscDj93XlVuVVu0UUV8Rfg8G7NZZ/kcS9suI4xkaHtKHdayGkOG/IlAZB0s3iuQlpoQWRZWO3IfmB7iPbhF/L/CZRq3CTqYMVmM2ipoe6VX0iz8sGUkjUKSu/0r44TNr10frikoCak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785014434; c=relaxed/simple;
	bh=2nua+T7qjdbcpNekHCHsTx4uTyAzbjrBkCklV1sXLSE=;
	h=To:Subject:From:Message-Id:Date; b=cNSU9pNLk8yh7/0x7ozou9tP3hD7QJzER6YRMD/FLggJxwW9mfEHAGf+ExZ80Hokar1ga2WrF2FNtPNRsfn2RSnhmfmg0jItv89/8SIK/FrNkexe4LtLaCoytcHc3Y/m2NCofpS4JAb0xrxkaMz2JeJk/XpMwuEAKEvsJTMMTIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsQBaSWY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsQBaSWY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9A3C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785014433;
	bh=2nua+T7qjdbcpNekHCHsTx4uTyAzbjrBkCklV1sXLSE=;
	h=To:Subject:From:Date:From;
	b=jsQBaSWYYC1fHlPbPR68uvaufrM83wkjtRP3rgd1kGUBTecAPObjOCnCGxXjOSNRr
	 2oy4YqUt+y2aRV3HUIt6DbGTE3fuOVNdTBRccA6xYp+ewz6BXuYJ3M6cgy98GaVChV
	 a/FJsjlQRqcD0Xzy9XhSRTuIlGYdo+L7hcRUa6WpIkaJavM5M88vI9730a/9VcuZtU
	 vEOj2P5x298D+L2sqcnjsxmkj0aZn9Gcqy99sxBDEBVbTw/5EEpBeXeWQMZtBUATd5
	 pbkEDzKkgyLumS0R4hVpQEJnGZ/gPZBWDASKS818K0kkb/dvoWoOQf9FiuCh8clNCG
	 TkgtEN/eLuBzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF69C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178501443368.16698.196063734881942485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26a4e7d399380efba0cd64b963cb953d893578637d50f1342be75723bd997280
Date: Sat, 25 Jul 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785014433
