Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E9ED337BAB
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 20:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781900194; cv=none; b=Zy3W2z0S4OcfP74f5xLrWnNuybR1Okb8ojjbDK8a30yFEtesqx7oiRsoctW+wElzQvEqcksiYwtzytThN6gueP40zFVbfr2isaWM6zg3kjNFzDBpqNge1w1S43OY1WwYgv3RozfydKfEVvBiw9V+inXaVbDPOkz0gE53racBaM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781900194; c=relaxed/simple;
	bh=LfzGBxI7axK2nnL6vSoD33BH2lbwZXf4auHeND1u3EE=;
	h=To:Subject:From:Message-Id:Date; b=fsZJ6QJ/DfXSlroDjiNAVaYpQUMgjkvFSuv62+qGr/7fMYqhikDi2ymf+Crnn0eRJ5YHVAKDtbxDHZKiH78t2APFN/6/FuU9SUbyLbX0ubJ6y7redF6uLDpnFJ922hLyl9C6NS0ttu0RqNHxBRlY10fM5p6ANo0lPGENuGLsTDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEBB8h9k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEBB8h9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F52C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 20:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781900193;
	bh=LfzGBxI7axK2nnL6vSoD33BH2lbwZXf4auHeND1u3EE=;
	h=To:Subject:From:Date:From;
	b=pEBB8h9kYjnySdxh9nwD3Ke1UvWeEIBWb6qxFPucEZZDnGQzZ+Ahg2hItB6FfYe+c
	 1yrwkYEDTrsuKh1L24OcvS+kvSwdNEAPPY9oLfIUIwI3dSLEHGpkDgFMaNunyEaDKE
	 PeinOqfFdgM5zL/3wEYfMYHiI6SQAIQzvDa9ptCP5EeFJfb7exerfOXOl2RU2mBUBP
	 ncLrUnmIRpTW1+gHVKI1qaxa9/qSyxisH0jXs0ve9319Cw0E0LUO5eSbk7AQKN2HCf
	 LvB28vfx/NuoG123V9aox3MSt9/tPeb4d6+6UQGRY1HjPdc+dr7guGOv3+l7QO5G4y
	 /Q/ikIz9n4aRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04AECD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 20:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178190019368.14571.13609387580580641744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4703098df601ec0c954dd88375311a116dea97df3dd51a9a957c28abf8f0ed4
Date: Fri, 19 Jun 2026 20:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781900193
