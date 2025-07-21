Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2905720B1F4
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753070394; cv=none; b=Lopwo6TgL6Tbur5wr2bhghDl9LzPfj9Ndjs/75ZvFyL6jJqPE9UsbXV6rmRNCVawOkE02IdM7zM8xE/n/Kiji00PTqK3JdxfRxuek/68SkGrhGDQKInHnCXxTGD/ViUgFhCaGD6NNfM65UYu1L+Qs8+ATkOI9V6BGL0fTJeocfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753070394; c=relaxed/simple;
	bh=WxN2UDkIXUZg/o4xHdtiuGJ9koSvcoo993qNocstiRg=;
	h=To:Subject:From:Message-Id:Date; b=rpRFGcgVJBrWQjTynBUazHfeN6RnohAvCZRPAnbbuNz8RO9sYDuRelpseaH6jJ51RJAxyKDEQL5QauDqiME0fWsSB5JL/D/6OcDfwmm9cm0xRTleiWtwUnwU8umVdd2vZYCAOg1i/L6u2xH/xrHLUiPkBQlGDNjMhh795FhiXms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPf5pKYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPf5pKYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34B6C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753070393;
	bh=WxN2UDkIXUZg/o4xHdtiuGJ9koSvcoo993qNocstiRg=;
	h=To:Subject:From:Date:From;
	b=PPf5pKYFwWAdzT8aTqgGe3+FvWlLKTEpiPgBiMxeC/zieaM2ToHRcCbTaFpMa+6iK
	 Rm7d1pLdWhloB0LGns3UrepXAx4tR8Cn2lZjFke01eb+HcCNHSfazYuBbX8e9Xsh2c
	 W3F0TNT1ouaGTs6XKfWBr95Xs/G7j8IZAkKHchtm2Uld0JTI1hmM+xn163izjBwZI8
	 XBaGiMhH9X0Zutx29SLnyYgizywUfVI0487UfeqLszmMM2kcrrUUVn2C/5/K8kxsjt
	 j3s1H3pN61a+POLdM0NzQeW3Ik5/EwQo2pXJgB8KxLWzXy2a40exBzx/AK+/0nBwqP
	 GMG7g55lBCZ6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A9FC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175307039357.14100.8203457945011464944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8d68915cbbaebb9f30002627e9fec64f02a1b9b28c107899b914079ef4121d7
Date: Mon, 21 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753070393
