Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BABE2652A4
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760566194; cv=none; b=N3CyeGdnsP6/XIH41NDwbHXIRBsWR4PKTHmijIzEFjFL/1EykQeBIaN/0jwUQEG8sVWeSlyJnrGjkMri1p2NTvuP8yZZ6V5O35YSs1F7RvwkaQiR4J19ymxezDRhtNv7gSZZWw08jv/d8OSMhuidWPoDsNNJdjfkTRjf+r51g7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760566194; c=relaxed/simple;
	bh=c6F3KkmmOPomO2hfpe8JbvNLSQdgDAyOQpI3NugXD3s=;
	h=To:Subject:From:Message-Id:Date; b=VTY427Dl4G5b8+ejqmC8g7S7HoGb6f5VnWb0sZuhNf85ej8W19t5Olqj9Nl46xd4VX8NiY75CBwH5C2ZSq1Lr0Qzk2V1GE7SCQ6aSUaWMIrqOzpxyLoyxYiNWfW6Q1sM8SrzfoEU7tM2DgJLAcHaqLUUa5WLAaAUoJ7HriHDf0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4/rJ3hE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4/rJ3hE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE942C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760566193;
	bh=c6F3KkmmOPomO2hfpe8JbvNLSQdgDAyOQpI3NugXD3s=;
	h=To:Subject:From:Date:From;
	b=h4/rJ3hE9RqIV3ZEKTJFEzLlaJF/m3wzory9oUi2gZEvoKb1sDYRaX/Ybuk2Yjacn
	 h0TJJkBx2zmWTT5JXDKAS8zrFKpapLSQxrK99Sg3R9xpBwttLAGWSek7EuKxE5PvMy
	 8OvtdoWXXdYriIshN/kzBP57i9ySgK7w9K9dSC6at378duItOTNRTYdY1JzgmaP4+7
	 hepWFrYQYTuiebNP4+ApegBZBSNEJ+UV1/V6vlozMPLYTN24z/ysIiVSBUTpXRUB77
	 1X9N8f+mHv/btwkDLMYsxtQSZBy6ThEUbc/8KNVZoGM0WDDWYtMCXkURgS4hJx3Lt6
	 dOA+tzXR1b6rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE9ECCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176056619361.24694.14366986369348728178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd04f6cce2d3e05ab60ea6167df80ba911aeb3e475e1a0e4a9f3526e080f51e4
Date: Wed, 15 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760566193
