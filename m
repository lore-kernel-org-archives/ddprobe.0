Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706041A702
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 05:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719465863; cv=none; b=WC8KmV71J1+PqRlw2A3cne9chZWV6mx8kVlcW445990UHTGrnV2K5OmR5lsgXoFoeEBaGugA+j+w7LfPBMEWKxgq45wpkhB2OD6q3sL4aPQfxpTxH60qSRZEcEnykodK0yOgWHlTUMFzVRh2ldFl4/WDwG417p8ovI0GJa+sGm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719465863; c=relaxed/simple;
	bh=x6xHqK5YlLEvAU3wcn0+Lp+u2bMz2kG10AxXHxRQv0M=;
	h=To:Subject:From:Message-Id:Date; b=jT0ELBgyA/hFzjFLxaQl6qQebl9jaMu43rvsgb6rCL/FApZMQT2E9MMxYBqtKkW32tucKASlsbblrIo+vyMgFyNnc8zgLuo+aF4B73wyYkhazgWEo+1wm+2buKivFb9jDFt+7xoZTrzBe1BT8J2p+mpePUpsbllZ5+ReAyKnxaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7pESt8C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7pESt8C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB2C4C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 05:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719465862;
	bh=x6xHqK5YlLEvAU3wcn0+Lp+u2bMz2kG10AxXHxRQv0M=;
	h=To:Subject:From:Date:From;
	b=V7pESt8CMH2Xrzj2OIPgWsYpEamS6q0vV5/lWaK8WT8xwhowo4/3MDzcUafzTVgtU
	 p/Soii5BKK2rZXdhXfJnwjE8JZqUIPKDEphiAoXBRRwgQbaHOlqxiKUgKfI+iSNz4H
	 wL52xBKH+gUy2zYr2UYNjTWqPeCY69zHysNnH2U/yYrmDyHS2ehqEhCDW36fKN0RuU
	 92FuqqwvVcJaS2PxO60NWVpEF/chHMGmMh3bLeVwChfPCMvZwhM28/UNGkgCowg+LP
	 vuEdCchPgO4kQ9tNhII53wPu7pj8W/hr2f3Y0xc6T3RjRohsQVzdpuq/xajW+o12sl
	 4282vBQZnAcvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C33F0C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 05:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171946586278.26339.15962727363348514858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 081df85c9b6f3c1831517c4f578f8f52c96b63251fbcee31672580205be3d8e1
Date: Thu, 27 Jun 2024 05:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719465862
