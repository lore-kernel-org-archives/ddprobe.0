Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBB12874EF
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751620794; cv=none; b=Ovp/e5LQ6X5uf+JeQ2r+n9kSoW5a1odYQlgupKKH56PrKAuCq7/fUeTIT8KKDZ0+CoNTl6dE9hm2y4u8Eoqbo+Mpnl3bjcTb5ZE8hxDa+jfGAwXCKjhw7yZqdEJ1eq/XVtUZ+YUMuCBuwidv/0yOs/rOaDr3osrXdPTqZ+8kd8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751620794; c=relaxed/simple;
	bh=uGeYSdIe9sDSpZdWS3+ekq5KpWjA5zKZgASDzRy9mRQ=;
	h=To:Subject:From:Message-Id:Date; b=n2sFzKF6u0kUtZ12GAsJA3kUprWI1206zYk1zE1ixGNTWAlzbPTTqwTx1zcI7PN4/bwiUSn5pAyGxKppM6sRjfV3A7QaHqZf6k3dHqz1lnr5MyKP1QGrzImyyk84wdw7S1859S24tp4ryoW8c/4Gq6wObTCQt7AyFtM9fivrNxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kIYSas0y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kIYSas0y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13B9C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751620793;
	bh=uGeYSdIe9sDSpZdWS3+ekq5KpWjA5zKZgASDzRy9mRQ=;
	h=To:Subject:From:Date:From;
	b=kIYSas0yCx5IatyZJR+/t2PfJ0kzshjEac808oF93fNfUzCRFAaIYa7VUT64qiucj
	 6y2LpEHFfPXy82Y17nn3OWvgMHUYCPwxlxgVqvNw/kfhpBIE4HLySm3DHzMmtnjH/+
	 zdfm3F2yHrhFE6v71n4uSgaN7bUB+t2BomKM7V1VW3xwVK9CaUG5tJ/W3kOpIpnaeA
	 7BoxV7f7nHIpftRMhvm74UbQPshshXSMNGmwUY/nlKcSMooqLotE3ctrGruSXwnUC7
	 OtWCu1pugRpXO/XcA04I98YrCKI+z7ToSLJSQaSgWeXXBvXS+CFkyaUwzCV0wMJEVk
	 dtvaP0k5Cl8Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED73C83030
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175162079357.7241.11064373843940805480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46475b502d3103dd690b28fb30eb510445fdc1891a2a3c9d44e152aed0ece005
Date: Fri, 04 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751620793
