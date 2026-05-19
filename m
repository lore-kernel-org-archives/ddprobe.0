Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1B5A10F2
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 05:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779168633; cv=none; b=tDKUK/F7oKpdI7Ca4GZWEXELtrvI1xDZs6zpuXpn8kmgEsEfKFA+ifsuG4MJOp/zsZpMSzPVttHLBI+qzg7NOK9+yqbUJ3y5lGmzSo50ayUxHoDAaIUvjwitMSyo9QwHhE470T5P50DrHvNdXr2fy+1n8p8k3cseKz0JTj/oZ1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779168633; c=relaxed/simple;
	bh=vElw4Jx7iTzL36wM3tUi1cIy5H/VYFSX/wwROdGlzaU=;
	h=To:Subject:From:Message-Id:Date; b=T+phI/O95O+p9eL3mVtx4Hgtv5fjifUEjqR807+TcDNTZC9EB5rLuIP68zqk3/HvDLa3pD5OvnIQHzKLA+kqb2vkxIxbG9imN5N/OLUlpdCD9yjsQYPmmJinQIpGhjOhjsi3Uym0lKcf/iw2+6Vv6iva6jnz35xfZqJzGweCNdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4iqm2Z0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4iqm2Z0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E07C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779168633;
	bh=vElw4Jx7iTzL36wM3tUi1cIy5H/VYFSX/wwROdGlzaU=;
	h=To:Subject:From:Date:From;
	b=c4iqm2Z0rpOKEaNl9C1uzMKIzsGZiJUixaE8lx62B4zABW5vXS884lZcw0jFj9xCj
	 wJmkd0u00cogPQoPappd1cf2b5jMu7CMnkh+svZS8K8/FD7gDLbZJN/IYs8s4qYAKv
	 WZK1LbGNt96apZD03ha3zTre3CWlGB8pi0HpgrbD2KMkK+h3pwzgmnc8yo1rD4L+Iy
	 t550yrdWKMzQ2CvgCumnnZd63KX08eM4TFSkQEShVnunfHpysS+1bePS8gYOfhmJb8
	 YKD1+G7HsQiK1zVgQdXggRQuodafgHlRxacMD6lTFrIGT+/LJ+rSQL0yWhE5IHjlO9
	 l01JIZrXTWkqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB13BCD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177916863369.25216.3239840162812923614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e403f41b135420c91cc288b418c57b0c8cf56b9a74f51a8bd00f5aef13aec13
Date: Tue, 19 May 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779168633
