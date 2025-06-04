Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B6622A1FA
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749040194; cv=none; b=nyzAwXDcpc6rtCp+TibLk0KpfYKJFajgazIrDG3RULWeiK+bMbGLpApPShEaO+0amaPBGuc7Y80+LvaggUMKnUcGjEdXhqC+bp5s0WECr+GmlmlsISGV22MKFlkPwUYhb7NXPOOa0KqImEVG56w2YEBuuLSTGxzde3ATBYPbc3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749040194; c=relaxed/simple;
	bh=rdniz4zXWMoush05mgPorLNGU135JhrmQz9vr+sbeh8=;
	h=To:Subject:From:Message-Id:Date; b=EL1j8rQsW82gOoUo7SpUdTvz0Ltc5qJgg5GTRzTHQXVuGI2j1rXWQcrZ3iVlA/W+inbIQUvPv4CK/w6RjVysuqC4UXXu12orfsp0TcaCblArbU5GBOsLg2bIlONrsGsgVAlkdPVnscLmjpI1Vhxz8KhuseIdqjr47OYpyfMuaIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCgj7UgO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCgj7UgO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29D6C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749040193;
	bh=rdniz4zXWMoush05mgPorLNGU135JhrmQz9vr+sbeh8=;
	h=To:Subject:From:Date:From;
	b=GCgj7UgOs486QgRDeyxmIa8whjaSqVQy2/8dNZnxXySA9z+N0BAY8yDs+OrRFixpW
	 lAEFg5xcTJ1Vd+bVwETbAdJNviPinP9OenU4BIASUomNnxLXgW9KGvdBlGMrNegDQh
	 f1D0bZATUg06ZOrunCsSPXUAXUizAK7Uc3fhOQ6PBaqQKhxeoOGhwhnIzMmbPEpFaE
	 MwXio5n9iYtTl8oCsFOeDljUH+Vd+aFOts0Y76ZdbQzFbZO1baFI9YVLM8tbxsWiHB
	 qNG23hhbDD+tV5YoQOSbK5URHQWJbObUoMhBXxyy+AC31tAB9gDMnv25u7Z6coFTKs
	 LuRHEa7MeHDSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF5FC5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174904019358.23114.803027368376156526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1651cd9af15775d61f14383307e11c2705b5bb6bf5c4189de29440f1be015eac
Date: Wed, 04 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749040193
