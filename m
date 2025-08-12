Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3121F311C34
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754975994; cv=none; b=quhVLOMfgRDdef91aGR376dvO/rWfEpU1WbiorwWEx9LkSRdjFLb4nagNmQbPz6cFdaVv0SbBspVDI02vInSinskbOAZj34Jd9sAHWGi36h1lwDi/H2z7FdLdRwjDOVjrL87o/xVfkir1w0uYZAnxhvVYyvy5zuc4bJg0tZ64sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754975994; c=relaxed/simple;
	bh=5wuaXdublBAPYjQhLdYHXarwBJ3c6xkuHan2pT3MUT8=;
	h=To:Subject:From:Message-Id:Date; b=Jg5XKhgixAgB1x38FgB0DNFy0Jg+JQjRyAkP980FAsjYHlk66HC4//eTBNx9yAhbWhRoIiMiV/OXTsKdxauHuuR/tPpkQL8OG4TCOnU0hMA6Jr+SBscfF1xb5T0/62I3rTdjva4iO9bqXPhaH3+Xa2Ti5qvVkoERBhtgxRk1MY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f59meV6W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f59meV6W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B72C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754975993;
	bh=5wuaXdublBAPYjQhLdYHXarwBJ3c6xkuHan2pT3MUT8=;
	h=To:Subject:From:Date:From;
	b=f59meV6WeeaT5lw3h0MKa1j2ljI89DpTbLBHpVQUNr9a+GCMJfK6gMDZGHTNyl9ac
	 K9auHMWk7Pha4nprPoMqVSlbGJsqqcmvCfbE//D96FMbR4ymfMaSGby+xporZFj0Db
	 ATUA0l0hoaUxwqKBRNpj6wnaLfNWDTPAA2lcy1KMuSjM1hWC/vy2L4EaUdKHgWwa6a
	 mgGShFwI3q4L5qxn6ypILcEbiKCmrgO1cDKy4UgkDdT7DVYAiASzY4MjxgwrzqPtlf
	 13huoDz3yytgHvtaTEw/qCJmxxDKu6quaxyt2FYmGVvKA3YLTRjTRaRxzSEpgBJ3GI
	 Hx2kWT5Qls3JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936ACC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175497599359.9981.2017604394676750289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7653ecc0cce9a4b89bc0bbd2e8690661cc502a39b7333c6a7c85a0a7f7c20788
Date: Tue, 12 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754975993
