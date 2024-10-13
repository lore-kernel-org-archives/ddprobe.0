Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F14231CA8
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728828954; cv=none; b=tkDR367qMAYI9m7X8wRcVRaR66SZTk/DvqJdGxvgnz02msLiSyLKgE0lVry4FXV2jkJDcvbmu44m2opkcw/8jBP5UEK2bfvBJE9AF2rahUS/8Wnuo12p9qDqth052hbJtPNT7Lupwrl01qV+uvAk+/wD1Kv9mN2Dp1fp9cTB2Xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728828954; c=relaxed/simple;
	bh=+368Bp4NTdoquZd3kf01B4MCGZzf35kPpVqeWPs6XAY=;
	h=To:Subject:From:Message-Id:Date; b=XTVuTCG1aZso98/jryS7a8o/M6CVZ0zg+KW1TOApGKP3Qh9/frq9BjrPQjKebI80ZAZXVv2YWhtCYkxjPKNz8AKrfFIVBLx+nHx6M+0RcGhwsS68UfxXQzr0alCHhlwXKPZHaDCtUXBkgtGDFwOX1VFVxuuwpxj8K+Z5hPKJaBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rm3dzAfz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rm3dzAfz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B63FDC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728828953;
	bh=+368Bp4NTdoquZd3kf01B4MCGZzf35kPpVqeWPs6XAY=;
	h=To:Subject:From:Date:From;
	b=rm3dzAfzyor/7pweLwJGDp6tRWbp5MsffFsvqXJkPuhiZY5PL6BVIERvIyBTvaY8u
	 AUeF/zCdwYRXctcMhmp3KbwbX9VBeQcqFy2jdBHvrsduhTZzcf0ir6XdDlT87LKRf8
	 /jEX4+FcANm+gneFquakfPQGiaWxJYieGSx5G0tVIPyD/yKYYLyrHvPsCGXHl0feDt
	 YgSYSSDuXujQWP9T5es+mXLQ7lj6bl0DfZ2wrryQGySaq4EdqOBuTUPpI1W22mf7O2
	 LFt5dmUejaLTvDNWgDfkkd+Pzga6ey734/vRQywXas30VsgRF3Fq4sAtssRXw4YJrm
	 HIVHVDS5vyzCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A11FACF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172882895360.27207.9041853117357987395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92a0f72fc6222040a3dc284f2bbe81e6377a0aa0e4311f02b2abbfaeab6f4a06
Date: Sun, 13 Oct 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728828953
