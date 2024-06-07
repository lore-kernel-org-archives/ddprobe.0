Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B10D12B93
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 22:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717798043; cv=none; b=nRHY5PNnQJLxtzSlg2geMHfjEVzKWDk4jK2+GMJA9hksn7qAt7KkYmB+mWy6zL1GDBjWciBl3CrAEJp2BmXSFe2WbbhL7DlBESQPqKjhAPoFOrypMeqxmfyUZmjQdv15kfW2qdLGuaT9PqVEg8noi540X4Ona5UDhg9POPxcYag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717798043; c=relaxed/simple;
	bh=sLx6DGApdfTGQlzLYMScFj/R8KmBmB8+GtDGvFK9xds=;
	h=To:Subject:From:Message-Id:Date; b=s1UO34N+sNNkrvlh2mfPZGBXUgmEb6B+D0WhiYAouqrzQsjm3HR4j0dKMWdzMTcLHW483EHcj0cO3ksQRL4K9MLHcedhcK8CH9PMN2LQCPEZRn6dQMPOzn7h9xzHNCG6zshgh0L+/gpsL07o1rAPHWIgDuBliNWQ8BR9Qtc4DAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sAU6rFI/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAU6rFI/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E55E1C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 22:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717798042;
	bh=sLx6DGApdfTGQlzLYMScFj/R8KmBmB8+GtDGvFK9xds=;
	h=To:Subject:From:Date:From;
	b=sAU6rFI/rYlHoQSljNLjTb6aMRZcs1y6in2tP87M7pB6g6l/Ttd4HiA9+GLO3kj0j
	 +yosbcbpO5VfvX49AbuaLh9UT6zK+AC/6H14uj7AHw+bnHltwwxzX6inHPWn6HY3ww
	 Se9mCj1VcLo3AEtICVh6RydKb+tx65H6sw3y2Zk1vn7+/LFB/i262XPDQbyYbBa4n3
	 dN77rY0p6MYtKjnbZlYJGUbEewDiWflHDOu5bbbI7f9Zp/2hBvlNn3CCu0ggE0RAho
	 JHpHNXe/fOhjPjJ81InQcg/t9rZ2NF2UbyPzg7jHLN3I174UyuCmXFXkBHAosbrP+v
	 LEh+yHRtHPkhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF875C27C55
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 22:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171779804283.7874.11088103615080387794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfda8361f09015a84c2e4f33a52710041f62d80118f6a6d4b06808da32238720
Date: Fri, 07 Jun 2024 22:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717798042
