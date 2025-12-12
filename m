Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E41641754
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 04:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765513374; cv=none; b=VOH24lB1NEYK1g/MBACruv/BDuONe7X+t9h+6OXwGfQL9Z3vwYpEYq/6F0DBjZFbNT3vnOPYnxEBmmozV7Iksq4bV8VkgaL0teAEgyb89RIGIsILjbju6H3sb85FCGJlFn6eaIXAdWb/dgylAvqFlGvHSY3hzzzkOEaIv1M87vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765513374; c=relaxed/simple;
	bh=GEafmoXpv4dx/Nn8MyucdOhTTOVUdJPL5axxAiJSPl0=;
	h=To:Subject:From:Message-Id:Date; b=e0PIedxOr6ezi8P2tta6E6GQ2Px4Sm3fDRtfxiZiis+Ui1b1vSMiPJSBfEVnxYgBDMQ8fHdJq//DAbVJrYEeAjNAzPCFvfgd4JQoZQ9hsDO5xCXjwfQqNdYCNUSHCanLQXsGvb4lgKOb0qLBufzcS+6HJ2lLDo5nQuNMJFL8zTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohOSPoc/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohOSPoc/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1114C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 04:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765513373;
	bh=GEafmoXpv4dx/Nn8MyucdOhTTOVUdJPL5axxAiJSPl0=;
	h=To:Subject:From:Date:From;
	b=ohOSPoc/ZMt8zsrITZ8/v3/Zwp1gysrlk+YG+gG7lxiQ6b50w44Wvl7MtRV9Ofn44
	 xT3O80QM1do79hBcEO+URuDQaYWzBRC0sDW8aqu/RwlbNktjhC+oTB6la30ENiFriR
	 VW2j2yjX1JyzBw/TUp2tumr8p92g4fwOuiXyjNy/3P6UNovYhsX+v+eC5dm3Vvgp5O
	 0deVBrlivv4AXsIZfQjw8/MnUdRTJdt11LBea63A6nrUS2JTXiBd8U1IP+dzY8bVEG
	 zyxnSnP4lUj6rZyHMnu+xs6uzzq6bOZo69WpLOar8P0pwJiyZcwB/rUvR/V+eDYfII
	 AttvicrduVjgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E703D4336B
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 04:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176551337363.13339.18202225199900655571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23a24f057d6aee28c8d98cb9611cb3a125b3734b94b108a72ada6fe0aa25579a
Date: Fri, 12 Dec 2025 04:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765513373
