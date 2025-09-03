Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D84652FE56B
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756903193; cv=none; b=OL7fd1aPbfhzBg/PRAsQjMzEjgdJuSrPSsjpbBq20FEAzItx8xIRooH9GxIRhgMk0ek+Cp2BsxQZijSba7xaGP9SrYwHK6o/po8Vl6ao6TpkE3wRPKgXtfxP+Oe163qvfd6xEfBXivZgnF8rGQBrJXLE1hTGoLbIUI6iRKcrsFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756903193; c=relaxed/simple;
	bh=h0vGgXLeG1p6hezxfqCStGnIYaUfVJBwLCqX1Aw9/bg=;
	h=To:Subject:From:Message-Id:Date; b=HhrU7p+M6+uPtYlhGk/1vCpAm6hF11mhb0OygzuxANefTgvS8nYEm6uvaojesbw/YSSKQFPVDJwEeo5ZFVTR1y8nfxY3aT/pPJbezHY0MJbkdgyaaF+5FkwJ4mpiyHsqHTT4TeEeZOuMzg+yidZlqbKx2Y84jHF4SP/3vFQfu4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGTC5Akz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGTC5Akz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5CE1C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756903193;
	bh=h0vGgXLeG1p6hezxfqCStGnIYaUfVJBwLCqX1Aw9/bg=;
	h=To:Subject:From:Date:From;
	b=KGTC5AkzAN2WMwpzwqmdqN8VKuz7rGtO30wuLxXi488EfCusCvc3E9Yfrwjs+7eS8
	 5Y0bwOPfHLFkoJSx4Ld8vc96/F/l8gXo6twcv+enP6qtDVHztzqGV1czh1Lck+6PJq
	 YdLiKcST63Zbk7GWKsVsfo/bc5FmUBGq1OET+6YksU4QteU64jXqsZf3SmZjpVsOmM
	 WcsrWmaRxjVlm7YWsi05pMuwU89JwsgsOwN4uWoLrteAlHTgYPD+e+ZFA5MUHA78aU
	 zQ6ITp+h6krZSwLHkF03eh3oWopZZgvHZ3uU3xjDJ5zdFgiy9iexnsZDkidyzrcPa6
	 gHS7+1HXrAK1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A09F8CA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175690319364.27233.12381558499605075993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f3e776ed0404e1d2386a85d74cb1d0bda93c6a7ebf7bdbed1b6059b24352fd2
Date: Wed, 03 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756903193
