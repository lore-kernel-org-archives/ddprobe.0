Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F2C45349A
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 15:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779462154; cv=none; b=fLyUUZU+5+MjXVSJTmmsuhCfXmlQzolMQp9yi/TYCQyLndKnN/mfuhVuSkDit6hlK1zG7hIIAb146rjVzRRuB8jztVhlEMK6H6wkeOpl4G8zCbXgD5QbTJfTPMgw3hsjAu+93xaNLsmCVse2hOwPxZQb1wO2MD0NzHiQWTHjZLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779462154; c=relaxed/simple;
	bh=EewQDYt0W0CFgNSp+vIQdrdfp0DCc1JXs8WwVn8sNtM=;
	h=To:Subject:From:Message-Id:Date; b=e8HC1rQ1htxiwzp7hB1KVehAoJSAYgGM29dNjhFloXp5a2Xk7X/OdxqPJzpIx9sHedvGUZ29/pbH2/GDW6rT+YxsvjWpbnsytUlEShU0AeUvdh5SGZs0ZO42wtNPgv/zPXFdoTkIgph+mmP4TtpBGtEMI3stUIVUuHNG9IZbss4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XohnHAWF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XohnHAWF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE141C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 15:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779462153;
	bh=EewQDYt0W0CFgNSp+vIQdrdfp0DCc1JXs8WwVn8sNtM=;
	h=To:Subject:From:Date:From;
	b=XohnHAWFqmWANM4wnMdNbsRVNsY4fM+ZgJKsNNU/K74RFIWQnDEzNL2SPAxhIfBwv
	 rNknEyzSQk7xA2iwW3ux+jgjKr75u8qAwbUNLe/EGT53S8fYK9WOpFkJLy6MFUnlju
	 Mt0eg/B9WKakjeifN2tgSCCFTrMORJSuuBk9PE7NP6P0KAV4C9dE4cRHvyEvTgKbjJ
	 yxs7FBK4B91X42CaKrn12yuWfwsI+o92sxM4V3zGAsLTK8xS/DljmnbMkv1w+n19l+
	 WK2V0HudMnxe9xE42L1UwR6LEZQq0pOR20Gojf0mpzy1+LSDTB68vXBWm1GOuntRup
	 LD5KYu52HCXbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF90DCD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 15:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177946215370.7072.13514964565015197172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 241be963ec27e2dc10b9db5c07393e14b2dcaffd548bb37b866f29f299d4e09f
Date: Fri, 22 May 2026 15:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779462153
