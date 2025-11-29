Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317A41F4C8E
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 18:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764440574; cv=none; b=IP5QFQl7Oad27aIdZfHPnH8q1a4CMc3RPLW7aOn707eG3nbmQQsPM+RILXwpmWxoufut8liSSNXpqPum83krNYzUpOe3PKLZq0m6cW4ap/xttf/I6E5z5KaWUbEA+Pu9NGKQscUvNdgDZjBaqFw3cUmngM4m4Ubje5LZC3vfTbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764440574; c=relaxed/simple;
	bh=UwGlV1UXLk/iOXl1ALniX06YfOgGAnhtzTjq3Gsz0hk=;
	h=To:Subject:From:Message-Id:Date; b=Qw3nw4xQKE5KMhVSTftFmzeQhBB3rvJjSI0Z36iW+0AWUYVl6sCyCg+sAVWIV/eOVIcJW4K8K/tYdOd25dQmalah2qJtlBCpoRl202UPAIoL0QOFxMa4k1HU3xi2fGwJ/jh0WH5M65WFcpSsPBvMzRScuxDIo6xvDjcp8N32bPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJc1X5Ud; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJc1X5Ud"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D52C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 18:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764440573;
	bh=UwGlV1UXLk/iOXl1ALniX06YfOgGAnhtzTjq3Gsz0hk=;
	h=To:Subject:From:Date:From;
	b=MJc1X5UdJr3jCuPingRWnc/jNqwdaeL6nvbLF1wniNgN79LnumjRCAGZHUgmClnJK
	 1erLdVDTj5rDt9yxmaemqWOwnAhYsrr8NWD6jPwn9g8GkTiylGefi9x7xlqif/1gpR
	 U2CXd0ivgyDeNHrn4Dc2szYtjSzBieYJJmwFwTYmPHBD3wfgLTELljxA2HdJwyMSoC
	 3R6wbBTaVSwXWWSXNjITYFopwIhg2nrD2F/NwYLVTc/5/HEDcWZ/QeNWy1J/F080fd
	 H0gvHpPZl2z/OyF2hC/GM2jV4GE/4vhaNAU64yyrz4nFvvIgvS6Q3lQPJllQ3GruYn
	 TZA8dHu17gfKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B98D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 18:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176444057358.25413.11503316799597436309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 072d3246ab98dceb8fbfc3fe7221cdc775c9e56305eede4d0e8e1c228aac94fc
Date: Sat, 29 Nov 2025 18:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764440573
