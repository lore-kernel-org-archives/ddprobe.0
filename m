Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3949B4C8E
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746162594; cv=none; b=IHa3BaJgO54hYCbz3u6IGKoNJHneUDj316ZvXF3Qk2shI8mkAyPsaTP0E0HQfv6XRsHXrlYmQLoj7EE5zSzTZRBIuCPAL7ML8avXslDJUc86gvxtWwYQyQDVWmPiegNtaY89l8SiliZBSGjEdDbRRX8vC6uNQlcVpn2IpJTd8+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746162594; c=relaxed/simple;
	bh=AySVbSdWHYZ5FBaPfhS32fbXCae9i3OQCM+2Ucy/s7o=;
	h=To:Subject:From:Message-Id:Date; b=GYxgmTYI7v8uahpgKs7cK2tnmk4XZkcyyYePL9NCDlGRhYhHDI54UCQz8Q86IlZpa5mFNOBysXMt1vgdbyuyky4SHFEruiOTArgK3JWoSvZ+FWttaLbT48pNblca6Rv0ICHxE3A8jHMpyrLzHXrFB1zA6rpdbGqgDFcTm3ke7h8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEYTQS5G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEYTQS5G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7791C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746162593;
	bh=AySVbSdWHYZ5FBaPfhS32fbXCae9i3OQCM+2Ucy/s7o=;
	h=To:Subject:From:Date:From;
	b=NEYTQS5Ghwq9WIIatlNis/hsJ9wRdBU2SIS9ZjX42roeX5I4ogIU//PZSvEzUbpt+
	 Np3YiZCpmkUV5MU4rSnMUxePRn7DaInV099rhSIMT2pDU3LDoOUxtG6s0T2qXmLvqo
	 XxYFuOegZ8HasFwUOHgKDwE5kZlfjHSFJMX2Aqy4/NNHTf9nLMHaDIC5juGtueWYcw
	 LS+kN6slOhVx7eoLjCywnHmtbP5XzkYOc0ljCI+bQagD94gaEHOp8yy/DTMAUaATUX
	 1OKSvYlirK+RqMIrDxWx3Cj1/L7mTHUIfwNes3Wqes2j0EvxAiyntIM8GnQVwKnjP6
	 W1qm+KS/v42zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938C5C3ABA5
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174616259357.32000.10027333282039247862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9e84ff60fae693426d8b4314c051479cb4abb0886feb23f08cc2f96d8b63bd9
Date: Fri, 02 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746162593
