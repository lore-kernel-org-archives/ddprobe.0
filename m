Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C84155723
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 15:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715788343; cv=none; b=jzUmwHo8FwWJcIobeRcOh9csJo9eB48mMiWsX8WgLVqXcMqnQJBt5+TMAkSG0Gka+mr86JBOHj3DSBBzQIAotollF/Q7T1OXdNd4w3dT7e5R6GfyyM1xXcGBAw6HAPHyP69AYBdsoe81B1X5cy7a/R4Oe7pAUq08JcOVKNi6TSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715788343; c=relaxed/simple;
	bh=RSCqO2jwBhC7ziR4CaopPCBApWdqzdBVxqUMkPO5AJM=;
	h=To:Subject:From:Message-Id:Date; b=gEuu1vF8+Z2nVYltgJuHrykWSkxZmTts17CbcoIg5FzwiMfTac/mrGWwcGIpOzzZM04F3uCQutEkT/dS1OIcS2R8aO9ylL4p4XSnPzgl2PPBMRdsRg/tyxIDiDkiLQmxAZbNwXvWu+LXGAD1NicZG23ITtw8OZ1c5lQnZ6NtjLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUD+oWgJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUD+oWgJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4ACEC116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 15:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715788342;
	bh=RSCqO2jwBhC7ziR4CaopPCBApWdqzdBVxqUMkPO5AJM=;
	h=To:Subject:From:Date:From;
	b=SUD+oWgJkqN8BjflulZcoORDZfDuhcagmk1Y2ZaFYIUZSOnw61GF4G4FY5msZzmHL
	 1VGrHwwFcI/QHwTgD/CkYCYNX4FVB32McX06emo4oAA0q6gYl5W1bQf1JXfx8Ve0At
	 Aaf0tNuix+j2pqJsfB2WLei2tC7V3mUuN8MWYKwQ89KrZHFnZY02hBko4YGJXHmG+E
	 CQ+zE5iLSJ8lQMVlPgzkI55LWm3bx377J/ZU//rBTlaJzU9rzwgRKH4yQd3lPds3Tt
	 zG1tyKDlvniVVrlrf7DyS3o+tOqARJEg/82OY57xOGos0Jba7TGptttl70dRhifkMv
	 zoxFqF4pDN3eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C58CDC25B77
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 15:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171578834279.25045.277196418899455571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f552a78a447ce44e9b9f0bb680304631f505cdaf78fcaab601749476a5c6bf4
Date: Wed, 15 May 2024 15:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715788342
