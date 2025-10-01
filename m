Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE8D22B594
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759305594; cv=none; b=hHK5CKOZrnHiGyK89/nwU03RcdMF3nTGtCJeFEwJ3taXXYbsSQYyN4k27Z8tndZ0qXwHTGr6qii8nVnrv+JdY+A8gN6TZ1Y0vM0fB5J1qpbf0ZMIuSXN2oHJVDM/knGZW/G3AYRrOv4B404V5zakDMTEsRqIJk62f6Rk9AxUXg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759305594; c=relaxed/simple;
	bh=9R0/LcoVMOReGnQAg9eOOwmj0YzZrB0Hb+nXWNnGfco=;
	h=To:Subject:From:Message-Id:Date; b=PPrGpjC/saWv88+MjYtTEf49QfrURXX4llKLK0jwK9NLQOrSvVFFu7QBBYL1iiRvEu1WVDPSn3Ji2vio8BOYwECJIDsPOyP37RYhwaX96QcQyXQuNEZwxkfaoMIMObWho4VnVSg9LdHWoknWpWQRV9FWSuUvQO8JZM9O1U4tr4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZoUV1Hh3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZoUV1Hh3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ABDC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759305593;
	bh=9R0/LcoVMOReGnQAg9eOOwmj0YzZrB0Hb+nXWNnGfco=;
	h=To:Subject:From:Date:From;
	b=ZoUV1Hh3QR++Gzz1Xrksf+YcnNnj56BFg3f/YZCi8FORN4YFD//E/I0ncM8nQ/UDt
	 CW04dZa5mPyMV/NCu+f02OPEPJki9cOKaD57s9pRHERYyDkjHSHbGgEHP/jdj3RID9
	 tapbtOa5H80ZvvA8chqwrZ46NlkfX6+6VTmjJo3kApm0kY4mHYmJGV5Ic2gmy9ofT9
	 T5tb2DZvK1BXeWJ+veuzG9/pHHFTx0URPTmqOFZqqayWyhRHeJFRSv6nXBcouAYEr4
	 qPVbc+qo38BBa/o2Yxh1l2p/Qwqa+QILBECDNt1TwF60zYmBCvxgkNu4ejXjlWEB++
	 lWKiBVVGhH24Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE31CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175930559358.21014.13914964697123514532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97681e1cd60b22787149f918b45c0231668c013d16314fea6412f3bcc80eefaa
Date: Wed, 01 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759305593
