Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2418DBE4A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752463195; cv=none; b=CKiECd+5U1BN6+25MudaGBir+yX3QjFya02aFc+T6dBovXE5R/R7+pBjXuOs8cPjQHBq9S7PDXb0U6GBUKkgSh8XzCCj60dtZKsIP+vjH7jfspTGKQ2FBKX1/rMJnPtCLlQIDCPtOKHBqsds9Df6JNh+ceZHhG2LDnGG8rsTwq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752463195; c=relaxed/simple;
	bh=gg5zQ0Cnt8mI/hOqD2uAdNf7QICJIzxmU/+SFMksbfo=;
	h=To:Subject:From:Message-Id:Date; b=Eld4dGyGozIU1sVA1oirbqgCMx5sJPK+UMKCz0ajHDURLXWg9sPqeT/KSFXc37zl4sihTWTDZSVevRoOD1aMb+WnSiAtDXMoBcBJEAjq1r3pPNBe3wBM0yzyjP+YZV0Sdff8FfL5An7nrYyA+/fqaxdFuRL1lMA+etntpfuNJXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ps+KGEIb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ps+KGEIb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4B0C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752463193;
	bh=gg5zQ0Cnt8mI/hOqD2uAdNf7QICJIzxmU/+SFMksbfo=;
	h=To:Subject:From:Date:From;
	b=ps+KGEIbS2fhxnIJS7Oxizvq2hwZQ7hczEVXnYxbUkLhp6a0wp7HwAP5v0rx5AZ2+
	 o0CoPF9uFruobg+sSxE607bYIL9Gi8QEJiMAliTOmRQs9ntMKDhebrkDNV+jVegOT+
	 eB6UTpikHpPxNEeoLqYfLuIBvg4HArsGyqkTBKjTzYdbmCe0TCgIM6Gmhqrz87Tdv2
	 nAkhktFov7ZKHwIzCnDqhniuBMhYfVGSk7USlywG6vP1EW61PApSzrwCAmFAcoiYQi
	 REZxKHpU9PRUurOtUcCbF2aRg99NzhRne9+uWVadxeNCLLOnqZlbumE26SfaCvQwWI
	 vN2vl7LblqLTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F25DC83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175246319357.822.17097408461389494468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8bde670920f251357ec089d5af21d473b8fb37ad90af14e368e2fa5c113d08d
Date: Mon, 14 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752463193
