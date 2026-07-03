Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501DB2E06D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 19:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783106314; cv=none; b=ifykvw9j9qs7rRARtmD6+Nl8cvgWntZRIsnB6c1xcpp672H+l97o6WRGDJzyx+iOJgEbaPDsaM12DG1vx8+RDwqhve0tkievhAbu6rk4OJUcgx20WqlIw9LaoSSsXGecW9AD7351Pvd4q+kCUP85gO4Wa57T+SV+RtrbjgyluKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783106314; c=relaxed/simple;
	bh=LvqoK2pa0JNdum0PQ71R1eqacGGipaDHcWeGNPcOMy8=;
	h=To:Subject:From:Message-Id:Date; b=kNcMfjPA53boFLPJxBM0EbXH2xgzWv3PxGys4u1NjOdJ2LPkRgz0Iz5nxF54eqLse76Nsiii7kECFg+oQVFw/dVPFXcrlPJLjZSATTpMs1BC1UijxLxJD/iHz/P+1a+pwYtyzBxVIQObtJJw/+LiwxlxooWN+jChMu4YF2HT8DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cunmuPfs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cunmuPfs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0060C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 19:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783106313;
	bh=LvqoK2pa0JNdum0PQ71R1eqacGGipaDHcWeGNPcOMy8=;
	h=To:Subject:From:Date:From;
	b=cunmuPfs9tJ7v5nX5U9hx5mlt8+Xbsg5rEFmUKXxEeEXLiCH9y4ajP7iLAl32IsOM
	 cIiCy0TNZbIfSyZR3XhqDh7DSfnPjMY6Bpv0qVEM6lNt6Jkk/y1qF/jDigCVXDeLPM
	 vA9vP0UavUeO241YlHenvlez7awNYGVgSMDmeRtWPPkgnFAjmWUTdkuLje54XDUDL+
	 8OhtwEEtuaARPHqiueYG2SHU8sp/8gcmAkvQKbJNzMnQkLSsIMgpx+7RPM2awm0fZj
	 q75GKOvmFuMtt1eMBPa3T5cmrpej+/QaxyT2alRb09XRbntO1QaJWjeHZ/TjIhz7t0
	 S4pfx55SEnSmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93CFC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 19:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178310631368.8664.5828244916553029697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 667eb8ec6bd6493caafaabfb42a070cebe96c26357ba78b9512d418e2400b58b
Date: Fri, 03 Jul 2026 19:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783106313
