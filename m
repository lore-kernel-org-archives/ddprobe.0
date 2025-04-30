Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30867258CE6
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746012594; cv=none; b=m7Vcv+Q24VPMU8nEB7OOOVRbUZqxM4/0WgumV6VnI7sRxe8iQZqz2avbZqwcawLJNBpIRR3m+ldxyNPp6MJeqMyFE6eI2fUuSwVtqecx3rDVGeiLJeEqjxSHmtAD8+03DkZth8BicDA/4O6Vr+e0qdozY9bS1iE3O4VGsMQDy68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746012594; c=relaxed/simple;
	bh=TJ8dUSrMIXjfLbBcEjl+TgU+PVB+9/iIvaELUU8ijL0=;
	h=To:Subject:From:Message-Id:Date; b=i6TngHlXwQTZjxSdgxllnNJSi/EPlZ3Ka4I2M9nGkozuGBCTMsCfRV24HAvv//5mh9REaTHbBB1/aBkHhYkbybdhHABOEvbyCMVUR0+ya600iDmJ1Vg6F4VbtIRbHTtHicr/jNOu2T0uYYzpnKrV4Qb56JmlfGrP+3I7cZxiSBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stdq2jC8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stdq2jC8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3968C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746012593;
	bh=TJ8dUSrMIXjfLbBcEjl+TgU+PVB+9/iIvaELUU8ijL0=;
	h=To:Subject:From:Date:From;
	b=stdq2jC8nqPqbUCtcbRS3k0lqeX23VvmH/GbgXsy12S6R32JX3OC68Z1m4UI1HMEt
	 DayEBOpqOZoXJK2xNfxu7gsWHGtsnxw2QMb/oYTEc9r0MJxQxGn3aKy6Fkr0/JXKEs
	 UZe7A/k/sIKUQg8pi2HzHBoHPW73v8JMk6Rb5qH7a8akA/eClNVXSEavKD0f7Dr0I0
	 wJodpfQeI7SBJpHi6/Me9//Gzygg0rihJ05t1pCSGzhkGulOkY4wTDWZQpQrqqOZdr
	 uE27/Q7fkoFaq7hR9tXzrm9K3uFpHISdWP2vcLyZpWv+yMg3QM5rlvE+qt6SuyhEPN
	 sUz0ynWEXTPoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91583C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174601259358.31397.3110223885341487555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea496c278f59dce821015905a7f9d7e20dfb811d6c16e0ee2e62ff5efd40a92d
Date: Wed, 30 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746012593
