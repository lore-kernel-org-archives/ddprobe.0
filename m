Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC7C18B0F
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 01:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764464574; cv=none; b=REbIi/7xSb0KolHMDLfW11LPTeQ/n18PtFuknjM7CNtdKQPmN1bLmfrbGGmaUeQZ9/sexb7blTl4z72iWIgpjghTmSZRA7A+f9q9n79wuYEiM5a5YskKLva+yEg6tB2pQaZea3BWh8e0NRgXpGoURlEOpJNJi5WSFqxFfSjVOHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764464574; c=relaxed/simple;
	bh=1+ehO1NyJzJgX0AVxmX3PZrYAeV3FHuUIWtPoA7lQYY=;
	h=To:Subject:From:Message-Id:Date; b=o7g2zfVEKd3MQnsZayPiEE+EAXULZD7JGSot0zDhP9VOyIlldTtEqB1lKcbqMpPuiakBXVMrymhEZwi1Vd/wHbxCkYE9+PgE9t8J1Uxc55Jc6FdJBBZb77PrZ9CpAmE0nonyOhqayMuU6tyz+xfkq2bZjmn55C3C/WanCAfXcdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jj197nSC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jj197nSC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2693C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 01:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764464573;
	bh=1+ehO1NyJzJgX0AVxmX3PZrYAeV3FHuUIWtPoA7lQYY=;
	h=To:Subject:From:Date:From;
	b=Jj197nSCBKN8lzCX0PL4G/9+lfuQ++UGDJjIeAC8YybFPmIEl+3GpRPKShgTL6Fdt
	 zh4qdfqqKesCvY1AnGNVU7IbvShM45XcTeSh0IeNn/T0L04CkhP/kRNTaMJTJSGZfd
	 3T1xkX8dJW41AdPfWKOhlruBzaEzebUZ0Imqmm9cKpJ7DwIwFJ6p3vACX9+o3fqnRu
	 VOgw5VgOs/Ml08InrYAKpBS5Qsa7jwjAZr6DXHemrkCSCwaLbKHyutTpQHQZoWBHaJ
	 xA1OeAhFtcwD5T6AONrL3XcI9UhmG4TA6yofCA+YThLl1cYMA94SlF2D0HfAEcee9I
	 Gt+6TSTVhbuPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90047D116E2
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 01:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176446457358.12527.16050846738200744238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9f21297b65d47205a6328d08c0469dfc4d981d09f80975f3f9b7523a9f236cd
Date: Sun, 30 Nov 2025 01:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764464573
