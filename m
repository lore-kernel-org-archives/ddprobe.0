Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C6B78F4B
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751101194; cv=none; b=Ky55Q95YrZjpSXC9W6Qdi1wVoHryYREfD1MgIwLbq5C4dSAsypPjEOceqWAPTb7GD5p8O16wOBp0KHZUEb02iA2VTtu8p9PP23mqh8t/GZltWE24/YAimob1s0cBP28vtS+EtFCqcyWk3Ugv0spu3JS1wmDK5Ks2e4JbP5wjUW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751101194; c=relaxed/simple;
	bh=BWIer2+4Qpq74/y16tHCM54QGilLu3pfGACys1V7X4g=;
	h=To:Subject:From:Message-Id:Date; b=i4560/O9TNRay9RtC4kueSUJ3J2+A5T1ZGUQ6MKGynA5IUT2DhlPISIq8AinSNcmWMvEGVtvgA78v3jZu+kjFCt5hcPvZwlm8A429r/99/ud8Amm3y4RMyKxkf2SmSyNhlzPYDkM8OQkNsJlz4ZTREziIMLYclgBnSTJj716HMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m17b9dGK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m17b9dGK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC91C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751101193;
	bh=BWIer2+4Qpq74/y16tHCM54QGilLu3pfGACys1V7X4g=;
	h=To:Subject:From:Date:From;
	b=m17b9dGKJRdBCfOd8DkDXAOiBjnSb2x5HNpwES+e4fsF9ETo6bcy6lKVg1Fp9nZbg
	 I+lV6bj3FRdRsWxuCVEo5rKvk8PHeNeK7DyYdHuejxncgHDXKW7s/f7FH8vLP42DeV
	 ufDE+GQUTJhxRftgkjHpnCFrLayLzbXA3Wj2rXb9ShIK9Fp6zwY/4IDPOTtO3QRAd2
	 pk2bJg1zPoYeMOxp1XroTCY5K9L0TjcvbZ/vwXyyoGRsei/7eHbhI5p43PWLHfl1oE
	 ZPeU1O/b6JW3inNBORMyw0yyzwhAFonTY6ha14jtWCtfpATMn31cHoYmUOOmmiOxTJ
	 kxqlwyVStAW3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B4DC7EE32
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175110119358.2669.3425037710779799174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cba79a65e7e7266d583cc09607de9236ef963e5374f9679de2d355446cacc73
Date: Sat, 28 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751101193
