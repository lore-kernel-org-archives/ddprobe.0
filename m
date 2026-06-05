Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18869386C1C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 18:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780682674; cv=none; b=nfCpGnOWM42q1hGUTIstx+mS58EOaoCNVbV0NxLtQlFOtVx7uxmZVodsA3mRsFO/PCaVSMUlwKxdyqnTv+9yl7vjzav5ElGVFCji9ZxDUuidX/4lof8Sks/WUHQm8wBUo4iSBeBd22LfO3eXm9H/Wq+OEvbCUMmEm7EKMSqNJ1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780682674; c=relaxed/simple;
	bh=vQHM+nY4mqM8BHPTJvv6Ch642fHe2XuA6/pCxHv+Kz4=;
	h=To:Subject:From:Message-Id:Date; b=ded4Q5CkABLl/KvCG7KtnODAokZWmYvZ8aNnDiS2MA6FLLTY5+Zj+iNlg5sL7YwAoxoqZLKJewxisiMovysTUJFBAE+QNEostwQTkmfxLYF+4UayH4kglBUdU5l4RMJS68sKVmmnXpLC/jLEO5HmrFvFn5cw+QUYDfySNgWW78k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Um/HK/wm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Um/HK/wm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE887C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 18:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780682673;
	bh=vQHM+nY4mqM8BHPTJvv6Ch642fHe2XuA6/pCxHv+Kz4=;
	h=To:Subject:From:Date:From;
	b=Um/HK/wmaQCil5G6gjIbCPh+d7dwWY3sToOtvAbYGUZJGXSnybehPvBJBh8Qoqs36
	 6wVSx6U4EDxyJC+vGibMJCUqBB3Pn40iCiThF/ncxWPvCIRm1HpQI2F2o5/DnfPhFC
	 DniMCRmLH/R9dJ4HNAy7MINXOt4N8BWAlvtDV8W1N3w/b6AsoEfsO0WU6JxBj110cZ
	 N3/HZk58njiXhbypIR5el6nMhYDnd24T3gTQi7EWWJFdOQfwv8DwmMvH1uFDUEttLz
	 bW/jBraukbIck556n5FxqeUjSwkngDDp2cnOljSOQ8E6Q5GfGR9NSQZIP17mPjAeuQ
	 huvDYVLIIO44w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B262FCD6E7B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 18:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178068267371.12724.7705201108999250296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd809a9ea639472a16098a92d5c8af333d3b37d1ce901501162af37eb5745371
Date: Fri, 05 Jun 2026 18:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780682673
