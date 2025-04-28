Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275F4EEAA
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745854194; cv=none; b=ltp5AYEPEWm1xNExDRM0Vp+vFLdohXyK+6QlUOGmZwRCJN9CtTD93veFWzm0kmP+ChOylpUixtU166TcyKR/qtJLEjfef5AG0zAO5rQH7oqfz6XKrfRo32KMbTZgAwZEh8XaxNi+zzYtOaFfvnHeQvzsaEcLYebGj5AOvGrMb1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745854194; c=relaxed/simple;
	bh=ZYgu9Xc6ZV0Iv88/xLb3iS3OwfMLFV6kEcNsajdrmrQ=;
	h=To:Subject:From:Message-Id:Date; b=hqGVOQbGzqCJWfPUJiNLU78XK7or84lLPs7sAlZtg4n1v/m5O2t80BPZ09KGaMZPfqh8PlcAWEsrR83SCWMfJ1GRkG0+iCMkgHEA7RrsXvcL5ZjE6Sgb0LG/iaecXNhDDRbIFtIn3HWCyaCyUabEon+WIxhdLTKqpTjiKLltd5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zui0CUu+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zui0CUu+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF8EC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745854193;
	bh=ZYgu9Xc6ZV0Iv88/xLb3iS3OwfMLFV6kEcNsajdrmrQ=;
	h=To:Subject:From:Date:From;
	b=Zui0CUu+MlwHEPmhJEaDv+hgbYMbJiS35hPo/StadIs3IsgQ+lwG63MQLS+FvY1mV
	 G/8SgPlJmVQnR7hGXXNnIBRMNqNg5XyZPyzTMFO2O5PKyJJZQ+vVE46t1sGPBcEXDe
	 S+qDGVrlSOY1CEbuIXRu8rR1Isji1IH7N51sxWEN8WYHaDRUsMaeZfS2vpNo9MNLkP
	 zVaQ/gcmip336f0Fiy4byVZMVv2D+T+Be0IgyoKwpMVltUbf0YOguRUfFOdWdSbK4a
	 Dbb/DV0GU95Js2C9sSGMcyrCYXS/urcs/yQ7DxmR5biXelqFQd7a1zftQ+bjNP4BHV
	 vydJ8t4YE0SEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED85C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174585419357.25395.17975767256757379198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3e0f651e41fedaab86b434f8685b101c7f41c74b93e982a36807fd3fdfcf6ed
Date: Mon, 28 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745854193
