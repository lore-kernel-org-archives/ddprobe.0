Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA5D9214A81
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743445194; cv=none; b=tU3vIQYvkk2/A4lD3UoJthmIComsRLHvGm1JKPDzVhpNdwX0Y4mMBdZ7iu0D+EbCUjhLh1pz7amAAX0Vz3NwtIjWHZha6mVfYttNBT2ggtB/2gvbnRcK7PfmkHIgopgvfwK3IVyq03eYGizqjKiugUp8RPdMLSEuXDGkLeVRBwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743445194; c=relaxed/simple;
	bh=kFhVHhNCkV/c9SmI3tGyYcoT+FPEo76VwpME68/e4ac=;
	h=To:Subject:From:Message-Id:Date; b=YCI4VEWOEevxAOPQ/89vw0QDU3rdegRdkPmpc9iyOib7XEyfh8rqoSmt+xctd+/pFle1RmSCi3gl8WQJIclpWJ9fi/W4ibrXnOtJuBawrkLadfejjAayp3d+LmvlWSnFlUjj/BO81SuagQ8uRSIPJT79IfHyI+IKTzokL+Pm52M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DYvLyeMG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DYvLyeMG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE24C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743445193;
	bh=kFhVHhNCkV/c9SmI3tGyYcoT+FPEo76VwpME68/e4ac=;
	h=To:Subject:From:Date:From;
	b=DYvLyeMG1a7FGySbfxG6LtK5K3Vwgmw7U1qyAzkppYkt3zO5Ge3TDq6K0zsZIavEE
	 mSBix0LIo4TdImsPpWuCJRwUUgl+U8yduUt4GKcv9YAbH1Bbl6sRQ623xBCVE+vFNm
	 /cpVJeHS1PT+wKDnulJ+cJ9DCaCC9U6SgEBTalhEdlfDPHZ+JJv/09YpEFACpEFnfb
	 Vs1pbPJhLBTgjQPx8O1wf085UzZliGrKJmhyNcLANBuv72WryEu0En++vGJVKjlkDj
	 KF39P/XyFbZXNha7z3yo7/Fd0lrlFie4Vnl5GfjBU8+g4blNS5Z6HlBo6uw0E/s8vV
	 ib0t5aMF/3mRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A403CC3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174344519365.24158.2305233115581007278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 034c8a9a0f117a68a161f0a02f0bbda094935b06d07c4298cf1e99ff442a5699
Date: Mon, 31 Mar 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743445193
