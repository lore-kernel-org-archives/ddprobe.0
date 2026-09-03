Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EEA630E85B
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788410434; cv=none; b=keB94gzuj8T7PSOjydlCRfck9QNjh0PkfBWq8mh9XSfJ6XCMgdBQoYG5+WMrzgWXTwXGiOGDCKfsrnW9iZU8WA14DtNTKQTjycu1sR6H3QxJKOUheihpP07v4j1F3piUUzRokNPkvA6kBAJ6zrnpF6UZ8SE+7t/+hM+8Y/2g5QY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788410434; c=relaxed/simple;
	bh=BC8bCya2hPLrcgN8Bu87GrFzVGt9TcSqAqVJVy5Sz38=;
	h=To:Subject:From:Message-Id:Date; b=BaCT1kEwjOWgSApkUcmIzgd7ZY2BkXwcJuGKpdoWXExyZ/RPBLCcF9eAW9mf/M50p8tJAi4H0DEhfAfIU4bvxNm5ZkV65hHUptsMFpFm+fmPlHfoePoABf6olECEhly3EgVxG3Yz211BRa6nuHUlwEaCuuVXCHpBl7H8gedowuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISJoh33i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISJoh33i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFBF7C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788410433;
	bh=BC8bCya2hPLrcgN8Bu87GrFzVGt9TcSqAqVJVy5Sz38=;
	h=To:Subject:From:Date:From;
	b=ISJoh33iqfADIOje++376PhQEr4WeIKErH4UiRWuxs+sTabZH+OG+rOSYknbgqDNE
	 gXtuKv4Df6XvOFZt+ZgPRTF2KZIPZMKeiOzobaURnfyyXt9ZwCm45FykmDD8TZUA4N
	 jiZvGTvCrk0dDlz85Fu3783LNi7XnTwypb2ZxBraVdF2KT+NL7znpm/aEFgDkCwT1z
	 LR9FHQ3AnYGxK6XbEqiMorbpzlhg5Iy5Wzhk4E0TrF2kSiLlePUQOcrSP1ukAWG5cK
	 j8YvRmNIrecOvGsbsVEe9U0PZGnJUyKNhQOugpx6ynt8FkAxESRy+23iz/skadDUfV
	 uvP25wPVzQRcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4EFCC61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178841043369.29654.9981608201400196181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 761b581854fd16c95dbbd8a72ade8eaffe33a134268af6083c75a0f05901cc60
Date: Thu, 03 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788410433
