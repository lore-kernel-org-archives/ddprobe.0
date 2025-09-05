Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9223191A2
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757093994; cv=none; b=iTmEYud21V0QBUTxVFf1ax+7FK9tUVFgc9daoz1f5luih1JvJol0qFCdf5AXxfvutzmsDAb75m79+BCztP8c7n7WtxBumAXdGIaEugbZfLR1Gw1LcTKMGzw0ACkM5nfCDrmTmcUp3Zz80yS32OuYBMk/PtDJ9rk45pdRuxEtduQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757093994; c=relaxed/simple;
	bh=B/l1edPV/Cbv28XrU8/mWYJjFkN+LpZ7Tsj3lUIRaWs=;
	h=To:Subject:From:Message-Id:Date; b=Fd2K86eyCOiAuitUJJmsXUysIQgQ/6ZOxx2FGGZpG/dXVnr3iaW3aRSme2Z5ca/2e6wc1dM8g9QpWYeYs3AWGZotq7c6mteeTSowVS4kEnoXXRl3biGnDJ5a+sY6cDYDu2U6NOSSiIFR+fE3JwccjslfMfYU1DN24L74LypwQ3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOJ0OwCn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOJ0OwCn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F2EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757093993;
	bh=B/l1edPV/Cbv28XrU8/mWYJjFkN+LpZ7Tsj3lUIRaWs=;
	h=To:Subject:From:Date:From;
	b=MOJ0OwCniuZHxi8SF2amB5917yjojJ+TNIzRFjmAf8kYVaU2HJDjGLbPDgl138aOx
	 wnRJ6xXNl/5VWkjl4fvGJOKIY2Fr8s2gOP3Xzh19v10x6zaP80R85EhGCLNqojzZzu
	 KmDghRjyAQGE9vkRHz4/pJZhFbIgj7aVbUoeqOhIVZLX+5ihA4eOIo2TJeYfa1Gp4J
	 QNDc+KxagA4rWjPgAIn1n3WVFR/rqJKh+oEO+MWPGoZd8xIq98PFGOQQjtZUsr+/2S
	 O94XbX37vfmAwlIkjorqjAqEJTvVbS8pGfdV2/XwZobDSsWN/bf48akDcmKoF2TTUg
	 /07VCAq1bxwyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F963CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175709399358.21243.12514846316430337863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe66b39e6e583e4cc6f84413c2e7c6e91da54044eb84bca288ce65ebf69361ff
Date: Fri, 05 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757093993
