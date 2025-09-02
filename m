Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1DD2E88AE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756799994; cv=none; b=jI51pD2UhZvYCD39g4L6/Nk42Ef0BZ8U7HpuKxtXkjsBbWAmaIPfEzdyKpI5QKbAJnKQcEy+Q7iYDTNMxj98NZ0I8/9EzsNrxn3B3TEWQfYFHcsS54H8oNmy6Gd93xcwgMD7kCuXCc5ISE2cd5mB2wGx47pahJFcEYkg418YkRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756799994; c=relaxed/simple;
	bh=4fEbrtmBrxkpcspl4MddxHDfaPUZfGIcUR/d4+sAeDQ=;
	h=To:Subject:From:Message-Id:Date; b=JgGsh6StOusJDE1ib2sANoU/AGArbREHnXP3fAH13SU3hzByMlVPNWISul+vruRmbW7hQYrAzTY4AyiAis5Mqruglvf6bAyREJm9TomwL8I1Vw3Z9LT0JLu55lcfJDoqjXl7P82mMnN3ZKRm4MjqdzleX0SaE80B2e/9fOoOpZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJ5PhtCO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJ5PhtCO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35D6C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756799993;
	bh=4fEbrtmBrxkpcspl4MddxHDfaPUZfGIcUR/d4+sAeDQ=;
	h=To:Subject:From:Date:From;
	b=fJ5PhtCO209D3z/XtUhGRX+69F3kyfN6Ke3oWvT+9PJ/GpehRcEMzU1Im78a+eGlt
	 VVeL+HP6fpDtxtjhwtIO25Vpz6U7hJ17/ZvaXYXCO012S2zXzz4+zzR7wehEYxaflM
	 yZCEC8F1Z/HdDJeTGG4GfMJTUjdf7/3Yx0Y2yDi3SqWeP09Vvfwh5oJ6IqpceA+6j8
	 iYnEKBxEmrZHVxqkreO+DzhYZRyKEc2Fsl7Xh/3kHUEviVjiizzv4s+oFhcMsAGG6Q
	 tK+HcDVdFGZ5TnDC0edjBA38h/NrfqV8cKh2L6BG6f+K8pzSWl36j2LkVWuT3IpVgU
	 LDD4d18QlLe9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9172BCA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175679999358.28366.15030146418344726190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f33ec7e6303806feea7866f0e00ffd3f17cfb45e36322bd324db866c2bad46d
Date: Tue, 02 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756799993
