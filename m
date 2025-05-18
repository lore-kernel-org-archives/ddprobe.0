Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB9C2F43
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 18:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747592395; cv=none; b=OOAUvAHacwaIryZly2zc/pSYKPw5exHkz3Ri1N+uqPyEVTi05ozutg/+8rZUvtb8SyKiUutf7F1o7LJBAPUjWUeu73HAj6iZUNiMxriv/rGOTYbAAdy0qMZZ9AdyEcYBvcnnHoB/O16qhy3F7bD2YLwt1m2/ig3FS9FRilKk02w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747592395; c=relaxed/simple;
	bh=4Qt5GKy3mBtuOX66AWRpRu1k2D9/gqHGX1YVgiOGjs0=;
	h=To:Subject:From:Message-Id:Date; b=cmsRkRC9iNHr9VL/Q7LvBXGRfbAHlq9eU39vIHE0Gk7mSrrjNPfTxwiSphIHTqRMXx4jNoBNz46ukYTBkXg/ANjxAWcWQz9+9iXpdf5EEk7SpdbZsKm/zNPssuHZ55sPb5CenMtI8MTpuMCJWCUBLg5Jw/h0j2vmjXSPOinGFiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZYc47x+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZYc47x+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEA6C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747592394;
	bh=4Qt5GKy3mBtuOX66AWRpRu1k2D9/gqHGX1YVgiOGjs0=;
	h=To:Subject:From:Date:From;
	b=gZYc47x+adGtMq8HIAaHM4fnX0+yRT0USVCTUo0AnLtA/jaou4eHsg8nzoe0TzN0W
	 RGiPu8afXqfXbSQjkjltnc1cUeldJu/glGJvP7aIbMKX4o7E/4r45uW8fQUSd39oor
	 iJ293DLvglDuoYRgNS+aJNxpCPj5QmoQ70ZhMvyzVbjb/b6WHsMc5VUeyU/vJNFW9K
	 gkNAQmJX8sdgY1aiLjr4YxlBZLXMCTp4u55ovTbB8qk2rR3QVybNlW1xYLPxEFfiqL
	 tAyEiLPiwEbmCCz6QGLAZvRqEdCpRhAIwrUua2qUjzQXPhTawMCXikg4AWfRkga6xL
	 ow40r7zFJtm+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A04C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174759239357.15632.7563706147965493935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56cb48b21adc7653b65c059ff4cd7d32ff5863370f8836416fa596325c24d7d9
Date: Sun, 18 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747592393
