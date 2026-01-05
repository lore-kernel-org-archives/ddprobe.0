Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAEC349AF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767622434; cv=none; b=riKQugU2Y7JJrbgNlEp+Jit8KwtQJ7f2xl7n4dxTX/J+eozGAOr26Ub8yOxAb0Vn22fjJVsH+WTokLLR2jOyFoO4YXqAe+mtRrP/1HBKCw3vOLHzGAzIPOijzafsmYsTqln+r3ZsoJBMtiTEXhyFOW3ZRyRHL1NRVvbGlo9cuJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767622434; c=relaxed/simple;
	bh=HO+ypizlpteVSTGaFD1npuuYDarXBuyMtV/OEsCzQx0=;
	h=To:Subject:From:Message-Id:Date; b=lL4uW/0xNWafywybey8uA1b3dSoZncpjZfkdhhFJxdXTjCb2WgUnEOXV9N1lEDcrDg0frSxNIMIEuCBebMsIIUd0/L5eh860GfGdvbffDizWJ7bLdIlFO7xOyakVKBEmzKwYy3eN370RwmPJ4AFmxd93EoA7xwUgoJ7rZfFamC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxRIsw1X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxRIsw1X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E33C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767622433;
	bh=HO+ypizlpteVSTGaFD1npuuYDarXBuyMtV/OEsCzQx0=;
	h=To:Subject:From:Date:From;
	b=LxRIsw1XDePtpAaSaKj40szvURps+PsUKNeW20Jl/S454el7/dBNBkWXQXuBR/J+1
	 Ri3N/JTuiCemp1jzFdHAky0a2hh2CNvSOEK+Cq8sOGhbCon54oFEX2RIMWvJA/jdec
	 DR4WQ/x0MFNdulP7DEC6gzw81WP9lhD1e5JrBu220E8zPmwEvXhNzftXj1SqFgOydJ
	 L1yMXuNFvfK+Fv4OLDioDt3zVrCYCeInKZ1KyCtZ54y9OFQMGw8LcCWh09z7MR4udM
	 2Hn2d4MmU9IL3Op6YPrrrPrbkZNrwJ+ZhPkLcb/EqthGVjvk+4JluAKFiYTwoCMY2f
	 0sQhlcTP6M4eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95633C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176762243360.8828.12684316476230789719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb48a48d3cc3c02023d63f06ee56fbf1fcdf3428d7fbf0519f4f6fd2f8c1aba
Date: Mon, 05 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767622433
