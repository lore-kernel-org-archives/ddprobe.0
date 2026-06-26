Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D37A36EA8F
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 23:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782518314; cv=none; b=KXOMG9fKahIdP9yF14gxaR5ghmhiWXTjuich5hEGOYr7frBdBo0bqsz3VZtqqb6oqsbV62UTaidxdKoaw+TNIjr1MhRSSdRNt2V4Qu8jT+6jZm0UUe4OLf0xXfTP1PFeo/ybH9nT76XzTscwUv4qHE7BqVi0mTrlxWrUJImX03o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782518314; c=relaxed/simple;
	bh=cycynXrtHcjiZbGycgxrfqISLs3hidusm/pixnMgrU0=;
	h=To:Subject:From:Message-Id:Date; b=MMapS1gg1HXmb6/+BeDg/nPmhTbx3BK/LclLk5MbICNPcNvVriv1S5AP8PL/s4Un3eQrXZLZemlNss3Y8kZQbX/3a+rmyYAUkOQlLFlgpGTe7CKixzZLGxO1kTFdhCC9INXRiFEc+vCRGqpDENFSUfOgpHv+GfqmaQijw8P7ykk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWFdY3Qa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWFdY3Qa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE403C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 23:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782518313;
	bh=cycynXrtHcjiZbGycgxrfqISLs3hidusm/pixnMgrU0=;
	h=To:Subject:From:Date:From;
	b=QWFdY3Qa+XxGkBmzja7gfeEL1HGdEppXEKISNtxCk4RAA10iyyoDym3gpNddgb3dM
	 3T6Y2DP4TVPUotTG5l7HiqGNds01toWE8o3r+Bu8edVVpYkjPtewJ8DSINoBO3Y9uh
	 s8a0DXtf+N24FNQCU11IZGHXYRAUSN94IPuf7fWP3lszwvJ6jSQG2kNtYN81fTp5ob
	 evNeul/Vj9QBdBqR592FTwcfwX1biNiY30Pml3+8RTcYNVG/NeQ+eE/jlMQzIXGaxq
	 h1R1xfDCibx+wNoHQq6S0EFWcnVgpPFQ74K0Lp4x/1+A5yE3u9B82lU4gjzxn71Wbm
	 Evmh/y35aoQUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C3CC43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 23:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178251831370.6890.17972744571121467933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a74cc82dc71ff4bb8fc7ee5fe76677f5710bec56dd1f5bfa591925636154b44c
Date: Fri, 26 Jun 2026 23:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782518313
