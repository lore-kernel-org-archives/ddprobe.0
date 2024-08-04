Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189A0B67E
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722756954; cv=none; b=BP3fo6d/Mp4RJaoLsWqpKuFYvefNFbeaXR9gvZUkpyP/TV8CByp3V/eKnM771E2vG9tV2YBXZJt1lHQdedggfYCuaJVTOPSpNVFWKCAZyadTJSB5uqTg7gLg1YAzVKGLQPr0C8ibmULlh5ZlmZBWdpzYuEhPUfjgxx8C5g611Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722756954; c=relaxed/simple;
	bh=Z5JJ2ylVRDpLcSiIQD3mkn2G7gAMrFFR7uHD9WnFuh8=;
	h=To:Subject:From:Message-Id:Date; b=Ln9WdNicpRo+WXP+CMnydhJLOEq2jdKY5zS3P6AQjK67scU6bfdDPt0NEuT26qmnl7sFOD/oPJ7DD/aC0y/H3LiktTP5Jz7QlJSg1MZguu40t4W4oDu15Vdoy4PHlEsEDD2LTr5DnAXCgwWs2lFtPQ9Yqx2dLYA2whSwoKV4cXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c02Sf5oc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c02Sf5oc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9001C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722756953;
	bh=Z5JJ2ylVRDpLcSiIQD3mkn2G7gAMrFFR7uHD9WnFuh8=;
	h=To:Subject:From:Date:From;
	b=c02Sf5ocPWDt0l73k5sIYdrsqjIzlSDXXkou4TzhGaRwf3o52IZRDbNFZ+1TmQC+2
	 J3eNxquNBWBxrqd1q+jxrd0O5OlDJdqM4xObi1x/fy5YMQAFEOzWB0AXdL22kzBnn2
	 KioGfh6qDpPvc4coGVUcz9wzk9itc7b/OUALJBVOS9oWwahY4GZzmMFVA5ooWe67jr
	 oNbH1oLiNDR1B2fFrFF/GpO0oHdxx93MWKzDAXbMsTVOvfORdVwS39A17NQdyJybSd
	 Rhcs5b4GY7Aogs6+bNpnoxolkw/XcxexwelQPeub1xx0RxDICdSMyO8aNK3VHzOlYN
	 ulVqLuB5PQ3bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97209C3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172275695358.26425.16327492028440940569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1ebd9731ce4c2c0cc39704bea49c3b4066c135b72ef68445f0dbef021b04ccf
Date: Sun, 04 Aug 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722756953
