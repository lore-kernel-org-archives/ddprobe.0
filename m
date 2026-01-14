Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C188394499
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768388034; cv=none; b=HdCdHLItMgPy88+5OIaDJTWJS2ZPgmtcNnNLjPVLaGl0merqSSf95UMBnWCDC8FkBQcDA0fssLErQXsKqzXcGnbPXz1P3GxfnLri6t2G6KnI98PrQb0tP4MxBCj1IvjB8c8+U5MhcBMxU3UaAGAnsj6UIgOTbEVobHLbpMwq1tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768388034; c=relaxed/simple;
	bh=qGe2WwtOHuPxzWSzgOUo1B4cK5CFTQ0tglBe80csJXU=;
	h=To:Subject:From:Message-Id:Date; b=jmAd7MQaE41NxDEZ8jWYstBdE9HpTv8r985cJfrfAYRLvB9GjWZTWPQjHzXOIoEetOb5UfPxiipxMM6xFBviv9H67LKf9sGTo8fE46SUG7xMksNxWw1VBEHiFWUrFnXQ3bZntJqBdCtEoQ1MSSdleuDBpoOCBBVuqaxZFA7eY0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MccfL6Ao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MccfL6Ao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5FDC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768388033;
	bh=qGe2WwtOHuPxzWSzgOUo1B4cK5CFTQ0tglBe80csJXU=;
	h=To:Subject:From:Date:From;
	b=MccfL6Ao/mKW7fvtUeGqNOQgoP7gvdpOuM1xRgt5rI/rHGCl/PWet/RvApK+gtjvT
	 gEPmTcH+Rh50KEt7RZ9tEv/KX772JE1P+FnmlinIKRUgBPlMkpy+mZzEn8TOwvR63r
	 A1vFt7TFy3HzncdvCCQpQIxK5YqdBGZMrcwik6kQl+UIXIyoqkpXm+FErelVLAReQ/
	 G5sSo8SWiY0Os5YK3RZdSJEqryLLuPgCsEJaSXu8oVvTmpecaFYgifaz8mpSghGcVX
	 n/Hk+wAgtXaC29IWKoU1bd4UEtvP0XxBWOiq8tMKFzTAO4yNowf0NDS4PDIDs4kvQh
	 YdSZ7CJzDXC8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FAED29FE5
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176838803358.24101.15283478744624776006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48a5e49495d069787af4cb8e2caee2b5cca47b263f409545b0175407e7012fff
Date: Wed, 14 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768388033
