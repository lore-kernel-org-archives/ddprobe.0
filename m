Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC9CF270054
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 19:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740685133; cv=none; b=UHgS/rQlLPY2VtVGZS+21Z/GBIUejjxcZaeYF0lG5QbkaOnLKpMuVTEVU7wxz0ZsXG9tAnXAOPqRYDKuBtI5Pd1SSOYcLjFKCPpxoB2K6apUxnAlHLtmc/rauBTW0fP0HtjuL4Gzk4g+sgP/fnuYP3B+60BUkZNsYBlVoQ1AU5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740685133; c=relaxed/simple;
	bh=J77r1RCynExHxaI052ZZpTkfP7+sGWGdM2Jyl9Q0nRk=;
	h=To:Subject:From:Message-Id:Date; b=qARSNzT+yob1I4b/FGZ1kS92qCY7useQ/ivRdyM46Ez8S9Tg5Z/wizdfp9HrrVoY9cO6fYeJgHar3oPgYwISQ9HufKWBnT/7ZOsJwNWpMmNTp7FErxiOQPO8iIATo9ofqN75FN0iYE2tpLUrXJjmOZazTjhZh9NEpDekGrcUegc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUSOkKbt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUSOkKbt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0E4C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 19:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740685133;
	bh=J77r1RCynExHxaI052ZZpTkfP7+sGWGdM2Jyl9Q0nRk=;
	h=To:Subject:From:Date:From;
	b=LUSOkKbtsgVh1A3aABSvQ56FMi0py2QfkJH+WlHKt1MQIxUO2Ofcr2ko+CmJKROOL
	 Xt65oOfZrIcoJZAwOtRZPz5GwipWXAL7U0eXura43phck+sUbcsfcGxic8NrYfgYrW
	 x3NcFb1+Rioc4rRQwURMooZR1Gi1UP+NuwXewlzB5Q8j+g0eO0lKHZwvNfQiyy6HFX
	 InlAdoRgslcM/itc45qcfWzT1Wh7edjqPhXwbmyYnYFAywHbyjcG09+u0KsVTM/97H
	 DkoU2IPO4lNEgpw45f5/Sr27oX9OVh4mKVPdKH/7LUuYux/Z74+cxIN/D77G/zMquA
	 aClXLW3LzWaGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98510C1B087
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 19:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174068513361.26233.2367527616966182983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b76b38bddcb0e597e02e6a55648902c3510594e5a70b2fdf6aa46200a2e0714b
Date: Thu, 27 Feb 2025 19:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740685133
