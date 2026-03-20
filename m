Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1326836EA9E
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774017294; cv=none; b=QCKJAWE3WTtxvqm5HxyVoFHZHfOs/IbPzn8zNshBly3fiefBzxtwyJ32cjZn9DyiK+iDH3WIY9BcYThloPQsL6AmwhfxyBctjPT2gP5RguYw1/Vc93tHeDeB1AAhXRmS/sU2OnxcNtHuwc75K8TEsV5GlZ5NoHIG0jPqaCnV6ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774017294; c=relaxed/simple;
	bh=ZJOGgVsCE8J2FLFm6E4AkQsu3O1JOpxpCa0BEmRvIuc=;
	h=To:Subject:From:Message-Id:Date; b=suKLMCUPdPXGT9uTsJ2k9iiuULpJ4vprrfkfAkVwdqysqH2C9vHekcme6xq0Fc+VsXIfCgbn7PA5boz3i/d/nnpTLAU9sNzJATIPPTaEhjpdP8Q2dit57rs/xLdxq4r72HXY335GmRrl+g2faZ43uuAYBnINJ+uHm9YeVH/Vdvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFSO/1Oh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFSO/1Oh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D805C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774017293;
	bh=ZJOGgVsCE8J2FLFm6E4AkQsu3O1JOpxpCa0BEmRvIuc=;
	h=To:Subject:From:Date:From;
	b=DFSO/1Oh0qc5VWHRbv7Tbgds5/3g5u4yto0gWhlxjadQP0ixLPnZL0/ONzJ4c1I8Q
	 dWaRv7HYV/5spRETe4MvSp3f3Cwy/oxMbayQugBDeMP3au6m+Auqrn/0WPFrqu+1r4
	 k4Q8+/dDqjUEjvc20IoAs3IsGZdFRMBhO4OsgJe/GxlzEkn4B2oyinMUjCGVmq1DX/
	 JgD20IHdVBkWpPDE0ve9i0ZXZTIE9gCGzaQ8qx7mqtI+awb5g2/2pyMQIFmlg+udhe
	 DgSSy+Q2raZXaBfk72jINVHobX6Jd1CxOxSz4UeI/IpPHu+HtB/NuAhyMJHsVJCMXb
	 YxwAyE1p06Xvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F341109878D
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177401729357.13892.3813997919445347160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d3951fcae1808e991d466bbd5e1f7a8ba386f46d4e207200e488434bec2609a
Date: Fri, 20 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774017293
