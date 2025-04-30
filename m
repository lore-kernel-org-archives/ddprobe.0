Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D43188A0E
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746045594; cv=none; b=bm4FFUpIcGUw1WFBRSkrBMPCPvSBPoFrqy87D+sN5RuKRbaIEDD80gHV2y+tQHUASsl1kqAeIeZygleuVN4Kd2ahx/1YA36KFwPv8HK7z1XaoqUH+xu6lhA5mkGoAmM/ThiK1T2UTvG5O2RtqpusTHVeZYdcuzRIyCSWkt/W0JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746045594; c=relaxed/simple;
	bh=MuiFEbL6Q2Xxl/b9SpF6XJ8ddbewc+u4gS2CJ3xoMGs=;
	h=To:Subject:From:Message-Id:Date; b=Hrxk+P64UYRED3ipYpVltCZGJCjEdISErA16W5bJn0XcLpy0FJ4F1o/vQbiEQByOIZzDZVgGQlosrrEjdSeJlOCm6VT1C/IkJc2h8iRrtqOUxSjx3bxQzufOOfb73R+IP37T6C3RkCKSycDfSYFZgmL85FhVEZ/4jJK5fcwja2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMzMXJZV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMzMXJZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04BCC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746045593;
	bh=MuiFEbL6Q2Xxl/b9SpF6XJ8ddbewc+u4gS2CJ3xoMGs=;
	h=To:Subject:From:Date:From;
	b=oMzMXJZVZd9De/KhUlpz3Q+wDf0/JxhneVYSL466OfKp183YD7lESov0+UR91U4XK
	 Uc9+AcAYGfIhwqCCwXUKHqG2VEZYAFtFoqPJxPwalYM8oL3ubUySLVuawDrrjz2EhC
	 SYkDNh2uX1oh+6Y2wP92nDdoapRPGC61ryHuDAEP/y+G47LE149lu2R2oK4CoiVO6A
	 vaYmBHvsBLHKJCS+YR2UXTs0q4CLz07dVydlblQHiixE4jcounQ4aioEuyHtCuP6Gd
	 KL3XIe1o+AJVRZhiUxpMVXrdrWHPyckh6bdtYGsxAY3qDsG6eIyMCdLMP8xZChp7M3
	 smQs+eRYlkPSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E42DC369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174604559357.31656.3910500877936990022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef7962526b229a1dd83d266bbc791995101affa8131156bec5404ec291555c88
Date: Wed, 30 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746045593
