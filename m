Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F02F1F1927
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752397194; cv=none; b=mBdmqmzF326sAose59KrTAV54unAhgEB0Dpk4eECEQhMiR3H3tSztXGlO95Tj69w/lkjcH9m8jFGkNtXWxnM19ZUsZ3mXA719jsQfF+VxDXPMDXKorfDvUicDQtwJ8jrc9MIcauIKX96UXiw3kY3rcmPDWQJyB3qFKTtffyyo4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752397194; c=relaxed/simple;
	bh=YOGkWuwTmB2ayN0ReD70CRtBs+WzTEJTITh0q+NsdQ8=;
	h=To:Subject:From:Message-Id:Date; b=Aa4VtMQjQTFjW63qZCM3rdt/+cwSPPRp+goWkPKVR/ibKm1V17dDKl0TuD0Bj9qirdO9m/vfWOtSdVXof62wU1uI4ugh4G828IqNBOxdGdb1Rtk8v0MZ/mqOXW7iXzSVQIxu6dCBB8XG6D/W+m46fcfb9A8myrcggBbuSQ19xHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NAf42UGu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NAf42UGu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AC4C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752397193;
	bh=YOGkWuwTmB2ayN0ReD70CRtBs+WzTEJTITh0q+NsdQ8=;
	h=To:Subject:From:Date:From;
	b=NAf42UGuNyWu6hLWAwVbw0Xf5coapTjsL0xwLpEocJKf6Ch2TFRzrobSAdX4Hh0sV
	 WtSXydxr5wCHkuMmSlcPxAF/bE0Yqopw8rMbfQJC18L8zpXiEApOGnKVqpGqie88dX
	 xgpQj9g5XCu/UYpc02lr2/tpyKbQn1DW7FUCfCyL3F+v4XDotpyWK8QkyHzIsDlHul
	 GL1dBEtghhCPN3iYGAFjx459t3IOKck5/gguvq7xb82hDeoo89+cfMdrSRoBlNI2KW
	 tHk2dg/cm9kmrRTqqP1oiSkYceproj4Rc7VlmDcZO97WETQ1pDMky73mz3g5M5TJUc
	 j4i1O9KNRR1YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948DFC83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175239719357.6315.8239126090134649975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 059ce234ce7eed35e378f40499b3cfb550876af03b6bbca68421b516c04e3fd9
Date: Sun, 13 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752397193
