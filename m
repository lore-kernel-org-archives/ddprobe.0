Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1944623B63E
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751447394; cv=none; b=IJmBiwMo4Xi7QNc0UQbpSl0M3DLeCw+YSaSjedjC/TyRgKZNH7rTXCd/rWp/Z1YTbowvfJSGRLBaGeWqEYwlZ++mdgJ9xDukfAavZDYCoMkBSPvQkXb1zQmSCUJULvqaTwXF2kqFYAYnJDWqcfDtHMjtoUhX1QxAdj6ak1G5vlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751447394; c=relaxed/simple;
	bh=ukpWfc7QdKsmDPUenkIHED3BS4LbrmB7+FI8/iBxpH8=;
	h=To:Subject:From:Message-Id:Date; b=KW57OezbnTjc4+Vr68LZ7ysrRZ/lt0O0LZGbfbjSPn6Bpu8pXK8tUWhGtkCqpatD9CfBt1bC3N9Mab1Ac9+qxZwSrs9jUELOFaOPqKKRo8Xa9FmnMIAxJiUiEhkNyuWw6LvlMrtT0ZIQk6jrGP+82+lwrFOAlkgH2HNQj26JHdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EAnZTGNE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAnZTGNE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2380C4CEF2
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751447393;
	bh=ukpWfc7QdKsmDPUenkIHED3BS4LbrmB7+FI8/iBxpH8=;
	h=To:Subject:From:Date:From;
	b=EAnZTGNEk1jH+cUSEXPTLg1zyWm1LUhfHKKUqLI/1/3b3kVTruEQhvya17KmnJIEH
	 m+/q/nZs0zo/F5K3CGVxeCoM1hnyGVP078Hum/nO/zd28uQWMb40GhyM1Aw03t+o2q
	 6+srKJnMLscVf9w2PbixpxZKIubLM+/TCorLj3SvM+wGE7QD+yLVUcdUUgJ33lOPSX
	 mPoCnzW8/iGZPJZnpJMOsoy+fqjmmFhjMJIY1vVmKHfKLmFTdyxmEOgLU3n+zNjX/N
	 0KKtn7QTGSm/7R2P+pJCHmw4CNs7HXyIwdLmA5ICx1Fze9NgYR6ynonEFp7tIJKUGJ
	 g85HYHbMA649w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F07AC83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175144739357.2206.6123039805358492800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1626acd4c7261b1a5fd079e59cf7f4a4774c5c5f6bfbf9e19029038ef73fe5be
Date: Wed, 02 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751447393
