Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74DD2A47
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 15:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745075394; cv=none; b=ajUJkkFti+rAfWUl0fh6v2NWrt8th7EJYZ267sUjOHA5RkHPA3DhOsYtZBM0JTGVEDss8C2sLWKvFkDLgz2ViXMIiYTWqmNVYbyZaI3lsgG2XT21soRgdHbCTeMQ/w0raUbpC/UDG9uAR2DXdERIEEa3Lh6DvUHzS64SnVTvxMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745075394; c=relaxed/simple;
	bh=NIJRirBWpx4Rr8uO2kEen+0DKzykfYLr8NAjdv4f/r4=;
	h=To:Subject:From:Message-Id:Date; b=r6AZhd2SNRhY0dyFnK1TV1sq5/WSqU+aAhW7gOn/5wKccRCeRhXr4kvju/lLeM05wQmIcX67NGymVKu0yPtU++Www566AFOCOUO+1JmYsD+nRwtYPxJQzZhkVCa8rKu0NDQT7oR0C6Q5OS2sMX6T6YIpTUOgvNVsnKPBCTMaurQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qX9slEfg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qX9slEfg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62F1C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745075393;
	bh=NIJRirBWpx4Rr8uO2kEen+0DKzykfYLr8NAjdv4f/r4=;
	h=To:Subject:From:Date:From;
	b=qX9slEfgKLwxJpcOQIHYObKagE8aHGhl1Z/IntwLUshSyjcwl8SK+dUWwXn7+QTRM
	 ATnnIrplVxtL/p894y5Cr3PQqrpJ4VDM+A305uiUaZ/sgpmlg4CaYKW+dIWAXEFwf0
	 Ia3T3X6R2DsE5Wc6GTJ0yN06OLw0hzLrHRv3nq1uasEebUBHI0aoPw4L8GuL6VCYNs
	 m2NOD4wqEneqmnMY9uF6H8lCgU2H9ib4/owUkSR/HPMQQlNeBxJHYzB1miOZfjqLeh
	 tuieLUsK5vsChWcQyx8Mqa//WSpbILq4h5w5C3Y5BH2HcDzeoEQ8Gq9+40Lb0LrvbB
	 fWcMeUvJZ5qVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF4D6C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174507539375.25474.15961162362323218340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30c66aec486d92b1bf26a1e33318e46da193f31466a2e2dd28e6a35e7fc717f7
Date: Sat, 19 Apr 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745075393
