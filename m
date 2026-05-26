Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49BBF3BFE2E
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 18:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779821554; cv=none; b=asz/8W4MQqz48RAawsm3RERFgYUox9bFn75bWatOi1BwbQV9edmLW6qhYLvMR93BurCxczH5jm7Hcqz9FZN4wLSXx/oduJikCTmprMfe3j0Ilb+v4tRpATp350g5gb02Oz6OXeQJhBj/Ki6Jlz6KDgtQHppvsCBOUhYb0CywIzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779821554; c=relaxed/simple;
	bh=GIz4WGN6O653q5qWg5UvPLanGzW87ipNN/2FSp2DgE4=;
	h=To:Subject:From:Message-Id:Date; b=ZtsC12wEo7TrlNfchE8RcjjjPffeW+/HqWugZowaGyKw8tUFeBx5q0zWQK5rwuaPPrRzjrFXlzbuVmrAbIjLXNe58tZG8n3qoGuz3sTPoq+shUiXZ/Fzb+zBHLs6LyLSlTbor3jU+HQV9FhtIsQx27Knzs+l4RnmUmBNjtGoR2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3LfqkAc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3LfqkAc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E45C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 18:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779821553;
	bh=GIz4WGN6O653q5qWg5UvPLanGzW87ipNN/2FSp2DgE4=;
	h=To:Subject:From:Date:From;
	b=T3LfqkAcYrIWne91hFQ7O5k2o6/P4GMZVj6tCVDUyuLoib8Dt8Nu45kY9AZgiHnD+
	 oRGagQkP9Ic7xR7IYMxmiNwZNBUBJMJPFp8iRro4NNuMoVuJeWDaxys9XW8toYIA8z
	 4AJH+f7z4lA1hVJ0S0L029wh+NoDlavfC/ybkgE76bKGxN8uwjgLnQTX5gUeZANSz1
	 g5O8d98jGBzFgIcirdKhdap1yS3tQqGjInFlQLYCWlCJHRY+rzwMaMrIEY478+g7H3
	 v56HAj1SOey/s9RLkq/30xlhN9VNRMSgSyIA6pTOq6vNYrp5N7q5qDHmLIjweHojGh
	 TCoyqRX8VOOxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9936CD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 18:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177982155368.16996.17370960352084257187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7848f8ec54d6d125a93183172f73728aacc79e0591363cde8dc261721a7876c1
Date: Tue, 26 May 2026 18:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779821553
