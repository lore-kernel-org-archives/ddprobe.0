Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176A5309DDB
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769829234; cv=none; b=e0qlHDuYuzM56pvckV8GPBZu+TEjg6R/Us/4H28TRZCez0XHbL0TkMMA+EJxlsxMMG4TvpM6vOQA+R5BoEKLGIIcQ8wyqQxfZfvxcj+GAIhocjJeRTi/qwXPBCQW5CWxXtBJiIh5FLU0ml2Kw24ib91k0ge4pZoHYD962QFvEwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769829234; c=relaxed/simple;
	bh=xeNyK4pCLwBAPQ7gfAyOwJokRB4vEUKED6Z87Y/WXmo=;
	h=To:Subject:From:Message-Id:Date; b=XWcXIVIPDKKOOd3l1HBM7qTfiThzLLJorQOQLnAzKqhI7lT6Z+47guokDE61CwV+PBuQO29ItCVMD3QfeL/zCA6dGrDo79nCR44aZsIJDmlTLr0Tlnk67f/mv21R/rQ48FaDCHUp1Ylwwh2GUimC6gSiXP9FN1CRjQWtTxVknjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BM8R8eSl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BM8R8eSl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D94C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769829233;
	bh=xeNyK4pCLwBAPQ7gfAyOwJokRB4vEUKED6Z87Y/WXmo=;
	h=To:Subject:From:Date:From;
	b=BM8R8eSlAmxhgrwdzMZkQCLgXkC8yJ5LNN8q2t4r8+JsSpPrCxovuNkp+XznvnJA8
	 xbu9hZZKEcnv5S3nmYR4sMwvVQbZ1UjqvPj93RROUQWYuFG2glvr1uiRYgtcB354Jk
	 Fo7SLGw/+0KaZ15Slo8o+AueN6kam6LTU67VzfkRcQYKG/zN/QotuKmC6C6xp4T2Wf
	 sbT9q+JfPSWUY1ZAzf2l9kcRZ72llRJyAOc3IFMW+0KFpbC/2X1v8jQC3s937hmvQh
	 UGI2T5xooZ9satqaZ0LgpJkBZBU02k4kC4MO+tU4B+PPyk+ZOuyKsj9d3j8p3RIF1y
	 ULbW11fKmzk/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942C5D46C1D
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176982923357.31011.11021743970975533604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a2d78360265dd4f111052225ae8b91df1b9c65c7a0476c34ddd92fa7cbf2722
Date: Sat, 31 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769829233
