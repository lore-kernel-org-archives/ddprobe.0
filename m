Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188A92DF68
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776928654; cv=none; b=kPDIQ+SHqkiWofYfRpd8hTcKEHGFvLCYEYbs7q0Yo0+SsxWWtM1g4ObOLfD7ZhA6mXxmOcwu69sRvTpL2k4qj0Sm9u1kM+ZuBs4hK7tc9rnAFIvcKOq1Jga029pjdpZkLAHq2OtxrJDsn4hR6dDD7s2FU5AXQOQHHC06LO1B7IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776928654; c=relaxed/simple;
	bh=t/gIMcfC1oulH4KCvawl78MLLeu7yfnej39oDFp/hM4=;
	h=To:Subject:From:Message-Id:Date; b=IhttjkkbSyanR7O90KIMmygLLFKWlqfvPg9/S+X7q1FvOwULc27SiyzDE+x5QOOn8YZuhIksn98Dqi4LPl6Eece40dI3YR2DVo9kN0wvVQpStrTfNToudPyYOePNH6/wwxaM3c2NlpFpHABl98k1iCGtZslNw8dwI38p0QKLnTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYypQCu8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYypQCu8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1AA3C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776928653;
	bh=t/gIMcfC1oulH4KCvawl78MLLeu7yfnej39oDFp/hM4=;
	h=To:Subject:From:Date:From;
	b=IYypQCu8cffCEZ1WcGq/PDbMJgFbB5cThuGYCWKkiIBJKlnbMFj/r5F7hlAjIbsRJ
	 QVIzPsqkcH2oVZYjWdISKjep4IcduX14cA0UH6dIlVMDUid/8AeJT4eWJiXzuRUwRF
	 s/FJIXcKdDg39R9cR93UO6gAeWjQIy3gjZ4IQlNsjhAIpUVpFQgtJn5+4sw/XXuQ8I
	 DG9wqCHHAh5AkYmrVdFVjatSTEL9uVjH91GNlbHIBWBSKKro+6DqcFGQXwfoIZPxKl
	 GYmtJthHb8MfRAViem61C07s51xJ/Sb0eK0rCDcn98/6UlEyRXYiYA+OakOgNveNoC
	 /tjFxPm5C+O9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE196F99341
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177692865370.4945.3263466444858631409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afdaed193d93e80dab9b1655317f959b2083d963ccb8eb21e32952a2453e6939
Date: Thu, 23 Apr 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776928653
