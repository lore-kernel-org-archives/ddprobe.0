Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBAA189F56
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750009194; cv=none; b=j2a5nGg/pIZG7F1yFNhgQ/Ziz+CqiMdpt0ei2kQeVGtI8qk/p0QLoRMxc9cSyaoSSZYB1haIOIkBsxJegfF1Rv/qYlxORurizucgs8GBDHgOW3e3LJdtxZARCGWPaIbxaaIftlWLwj3i1L3vaCYtfhG6AxEcB3nejVZEAR0hhwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750009194; c=relaxed/simple;
	bh=S/tzU6e9qZbCqEhEca8J1mWEH3jELdpgE9iXmFFxzfY=;
	h=To:Subject:From:Message-Id:Date; b=lhPkpRsQ69Qv9CIZg6vyd3MfqO514TFpCxvOeZGa7dPEN7yROqcepQKggjtLL/ljchZJkCXZa2VafQICQnjR5Gij9X4scEBBE8/2xB45hOA7qYtzLt/AVDavJ4vcwKoi0ZbP64PcfbWNC4g17zK/cO8IGFZv4rrTuUcoV2xThBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7TwadJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7TwadJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5502C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750009193;
	bh=S/tzU6e9qZbCqEhEca8J1mWEH3jELdpgE9iXmFFxzfY=;
	h=To:Subject:From:Date:From;
	b=Q7TwadJLC8oUlKK2a1hMe/DXR1gYyy7r4ox6d3eFTfeR4z/fit46K58u5sKWM5brG
	 VSo83lXreUq7oMMCoEeE+n+1y33L9kmWwXSv6AOwKiNLxdNcPUvuTzGFcZkTN239OU
	 u8arMIy0TvhORgY+GN7zIEAXN4wTySsXKI9bHSYtbYlrQERd+1gf02QwwwiIdWiHQx
	 +BNFm03O9MNRpxrLXac14ApAPiC27eVUP5Mg74wvzT/YwNM3NVijNgpkhIGTckrAPe
	 EPJZzjyUkmSdA5C0gXTq5GmStq2fPKyfDyQb4W7VPoS9q+VIF9aCk26UH87xVKGK3e
	 CxVE4A8PreJtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B212C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175000919359.29945.8274102502705024026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e810106494200b7294f877f482e8fb9600612675255f585380307b7e7ec86396
Date: Sun, 15 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750009193
