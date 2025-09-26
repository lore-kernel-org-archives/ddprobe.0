Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5543A1D2
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758845994; cv=none; b=EHYR/K9iQlRyUzCbJw4jz7UlHmUdCEK1FTJiu2IVmZQwbw38F8wellPtKjgI3+T5d3/renrnDojD4iuHwAG6+EHbYMmFprh1Q4YuFpbc5263VYo+8/usm2J/2nsVXIChGnJxwlv7mhjAhKHtC7a/m5p2N+uRot9plkWjT0kMGDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758845994; c=relaxed/simple;
	bh=v7AmxfRvRKtYgxCysvG0YEGSEa6Bozuay5I530XWfe8=;
	h=To:Subject:From:Message-Id:Date; b=fUcYa5S+Omt8toj9SoW4nEyk7TWvwTrh86m5wT1LAq8Xt0sCsAiLOZUX//kgq2NcwudhiuiuFPyeagGlg8eMRKncri2PsE5HpJdXnJcJW4tUQT/zGcUF9olaIc3S/FXmIPkciGV1maR2KjfcWVuLjzGfBngHkZPzkGCZ9HrmxWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTSLG+yw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTSLG+yw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DD3C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758845993;
	bh=v7AmxfRvRKtYgxCysvG0YEGSEa6Bozuay5I530XWfe8=;
	h=To:Subject:From:Date:From;
	b=OTSLG+ywmqMkGyRa0FwE8eOvOvyi022G5k5i2J7kPdF4CBNAD2ZUJ1rc8uR4WZ0xq
	 mib094LZ4mcSIEgr4uu3CJKdpjJXnwyTKuhwEXUwY96w1CW1P1qgKVaQmyowpCAAam
	 6qF34p2/H1/Rv+vY8sz/koGvGbgQ+HrMS17FcX+XwEQab+aa2X1qzlOQ/wHI2cAa1j
	 GAIICh7OOGNh33uKzYIoJiaFu2VGuYycl2Z/7pJPO4/NctDqDNTWDfeIawvCdcU/ee
	 PiXe45/eIGNu2F1qXUxqfFEgw6SkdMkLEc67gl5HUiGALToO+U6OCapHk8HCgcW48N
	 aUFQOcPuuTz4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD1ECAC5B0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175884599358.11166.16461611466477425918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27053b32f3b5c8214cb35686fdb8f17218d4b9d393e4eaef0e0116c2d9607259
Date: Fri, 26 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758845993
