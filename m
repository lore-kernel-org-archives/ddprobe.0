Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0773F3382DB
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768253034; cv=none; b=SYlulz53PW3rlOotsq9wpPfuahv3rKQ3mc/8KEovsTtKoXHFSthrDrtwAsAsjol7YiUG2Wv3yWCTNm1cPdOe82MdKQeLamEOFUDt4yhxFJjJSfkpq4lZBnmh36wKh70cIIgJ1FmPGl9eNuQsEguqGj/yVQq6X8pprgASvTpAp/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768253034; c=relaxed/simple;
	bh=EJIXOjbvKdnGsnqCCF3LA1yhMNKS+doncySGJv4qeXc=;
	h=To:Subject:From:Message-Id:Date; b=I7VRRBfjFuWKxju2O62uMS/IQmJmWPJTkQHmf024lqxwV82NoxslLd4LPMBcMVc9IeeALdXbwhsoZm3PLHxdVBlDrRmh2oArHuZTjVDPebEthyjF/SfHFHyG8kV6GmZqA9cRYYD3VnJ7JJo1J0r2TNZBBv4ldXy8h3SqenPtCUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q44gtd3R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q44gtd3R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE92C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768253033;
	bh=EJIXOjbvKdnGsnqCCF3LA1yhMNKS+doncySGJv4qeXc=;
	h=To:Subject:From:Date:From;
	b=Q44gtd3R5/erYc4TT0/XYwKfI3idUVQj+Ngu5bF0//AAM3ulCmMVmIPEqSIOhcwXA
	 98wUrxif0V5nJZpaR8AmdKAVB668U1eAyp/T3IgpQTGoBoCgjWz4Kdk5EibD1R7X/c
	 fFDKSt3QjHAOccAfDFKXEr5UW7jVMEMFHDbPx9VlkPE7SMTK57vja1OpTdNisjHRY+
	 zbSQqVoaNnPsKL1fPZ7Sdlf26xx8DB1b+Dz+03hZZc7Uggl36ul0PLCVtciOrr8kEF
	 ymV+5wrVDBIKPy8nIqe2beWorDsmgn6+qadDeR3csbd1d7Ev1AePjXpDYdJ3GZooSv
	 a/m5DFEWnESwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F72BCF45CF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176825303358.27601.8473684248142856386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 628295fc5e473ebc12c4a9b21cba32870060d4360699407ad3e37d001d79f39e
Date: Mon, 12 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768253033
