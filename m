Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2305A3955F4
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 14:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778770234; cv=none; b=coSM/TLfM+dW7EnxUhtOHvT2cXBF9Ev4DjsjNrX6SEN82XNQqfU0vL3QbZiFXk6piFE96TvdRIBmaMbwbP8ScCRHVUR8kULMrV/bUtEQtwwfjKyx1ZrstEw9XGW9H7c8pyZISgl3EtSixyotruXHwl0C6XaYUTaAfvl1OUuRkW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778770234; c=relaxed/simple;
	bh=29SDp7me3LLyQvWt3gGCXT0iJpbnlhzBRGvEi9ugtQo=;
	h=To:Subject:From:Message-Id:Date; b=LySd8HERABqqB4msOAHPd2kE/X1Qdp3KbNRC4Sohnbjn9ahoSIyW80pumhqgDTBH8LC4lN4NUIlSYPCB3XtYl/DmbdBIaauPeIZuZYaME2yt0v4UFro61qjcBv/xOhADokgx0M0lghrr14ZyzMOx4GXmPNld4tSkhDulgO+X99I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MrgBF/Yv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MrgBF/Yv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF8B2C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778770233;
	bh=29SDp7me3LLyQvWt3gGCXT0iJpbnlhzBRGvEi9ugtQo=;
	h=To:Subject:From:Date:From;
	b=MrgBF/YvY2PEX9vxpU5WXNiNupp/LNw5oJgrOlFreiKw5q6Z9/JxD0gdHlUbRBKtn
	 9WxD9PgbJINdsJpRl1MvfvvkX4ypnfD0N5yIF+GaPldDEd0alGRk7yMi3iS1FbK6Xk
	 neBEUENTxh7W1joJwOgVJegzX2Qz21lYiq9OW0DRa7e1VYuoLpTubFlmTBAoD6DdRo
	 2qb7PJAlnO6bALmh1xUT7Ibt8NAlGmCjkZNQ0vlXuWgZiCU8L1fW5yWwE5FzwAWYTu
	 NWlFKKbBW0ljaFWRBXge1zo7e0gjRX3+tHFaIPWL67MktBG/J0KRR2eznsqtuIXSoW
	 p1jdheu0gQVlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF948CD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177877023370.21192.8068966795834253909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7fe7396d7a0f83f3e2cdff48c47660b2f0c2f3bae4b48f0e3a9ef36fcb60c96
Date: Thu, 14 May 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778770233
