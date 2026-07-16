Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F8527F19F
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 04:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784175514; cv=none; b=RG6JeshFVOpDQWSvvxWCKGrJk40KI3WU6M6/pTAeUqF2QGlbZpngkYDIjDsHcvYbTzFWM6oHBoP+ERgapW+K4IEcixeXJM1Sim3AJCmAzvwy9Q+UaQvRn0WpFwuF7p/oXrBBODA4aBx55pnCblnTrXI821lfICJKjf4yW2ZNed0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784175514; c=relaxed/simple;
	bh=o2afTXzXO6RScxChyhyd2WU6TzFTrSwDfAAvTSA4xME=;
	h=To:Subject:From:Message-Id:Date; b=MCPRUlZwe2hFLcNRlCMzSFgFc7VRyxFz6h8Nnh8XX48CVDzOtNBG/2aC45taqaJYK7CWWdROe30oxDZT//7DAQnffuv9PALqpyqX3wyvFS0eu3tldU8WkpLtKl1Cpe/3VbjlEif+s3TzaxbRIFBkdS480btFZeKPcYiEukgw8mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QjXnSPHE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QjXnSPHE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2281C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 04:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784175513;
	bh=o2afTXzXO6RScxChyhyd2WU6TzFTrSwDfAAvTSA4xME=;
	h=To:Subject:From:Date:From;
	b=QjXnSPHEBmJnfsA40BWrceVy71h0kEJcdAfFhTo2HqpgJy3lJDTVE54nxs7LBKWRr
	 SooPxCY5sseaKNdoln2aUMFO/0qFP0UDzUu5IPpd2bvtGFhl1flfyoUFAZ2pMrjFTK
	 9buZklSagudYCXaC3UzdrcxLNQH6s5ak/mG1d01eemHbY1GUdjZpRI9gpyZseGWqA7
	 IVJXHiz5J59i3ZtUK8R0v91q9rNHFjHWke/FeSajVmVNtW2aQ0sa5Elq3RQl/sINP6
	 w6ot/TDrleLyaNR4LJG+CCpaGv0n4sgy3wuU2v9XcSDON2DQ9oAwda6R7Bj/ZkxCzl
	 kAhimOQUkzUFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD0D6C43458
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 04:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178417551373.30420.17471924481246729909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e728656d8bc3914b596912e13dd24ba6fa8e33ba13bc636d8a59a1848a6a7ce6
Date: Thu, 16 Jul 2026 04:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784175513
