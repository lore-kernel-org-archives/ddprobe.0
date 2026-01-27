Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C654F33B97F
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769509433; cv=none; b=hMefNtTJL4ToCff42UxK7o7lKPFQGE3sHhto4jhlA2IfXOH5bRs3fu2qJzw3yxOlYcN00C52ITZvVfoweWDbmAREGuvIMaYywUIbVzDPnEOmQCsomiDFldtNG59cCq1TtcvqG9bSKXcSGOCvuGMyBZ4Q4uRh/zuM0X116x2EjI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769509433; c=relaxed/simple;
	bh=tA8eqlPeE7Mh6om3zaJ7svH0IlNau4EF02Qb2IfZjyY=;
	h=To:Subject:From:Message-Id:Date; b=JVqYGE529+DvdNXsR/6MAAL6+kAxLyDJtemEx0fuGFSmmPcSOiMksm1cVvqpZfJPYgC9vuz/P0r1LvlLpYA7fKBUCnetJTMiXPAP/x5fsj2C58ERdmO5xy07KN4R6dRo/yghTzTyMx/bdYUunwnNNMYphdYBzrzXKYTIsYbx8xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNx28q1Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNx28q1Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A646BC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769509433;
	bh=tA8eqlPeE7Mh6om3zaJ7svH0IlNau4EF02Qb2IfZjyY=;
	h=To:Subject:From:Date:From;
	b=BNx28q1QXP9DeJjbFvmRN5zlnjLcDEx+5V2+iyyVrcAOBy/qBnQyln0RobFgEfmL3
	 0Nk5BVdXztworQ8l+NNntiUku9UQeR8sVox6ruRxn7SACpmIseSc6V16trkKsNBAsa
	 iiocaLpc4FQkfsgwUOvX1iaZaIfuwjtWI6OFWuohHvbyn2J8DCxRpn7gTDV6x/xaSP
	 2JyV5W9wI4nrtE6eURBn+uvSz/0v5LV0YlmN51kH69NwPmGm+JfQvoAg1GR/PpjRSb
	 zNhoPlv3h/D+6spkl43LC/5tb83qmJoEBKg40+bl4G7tVxKZ8+aRGe/OXwutXc11iw
	 8v8Qbwxbhq2Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DA2D2D8D4
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176950943359.24500.7875981019883003896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d6d5d83bd32d79a110f6c5f842e2677ff55c1afcb966f529bd374526dc56b6
Date: Tue, 27 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769509433
