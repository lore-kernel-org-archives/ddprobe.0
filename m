Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3943A3B585F
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787007034; cv=none; b=sr29VPg8P8PJfk9nsGeNTa7smdFzHUAlT0LT+iEzkEfiKEc5I1oSHx/fxCpGArfaaA10MAoGdOgbCHyPSh+FMfjS15+g9p+IRC7kXU46jF5NdkvSkwloClr4Rkd85OzrOpkftXRdQ20W3QmFx5PgHql2vkhjYoMpJq54m4kyuRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787007034; c=relaxed/simple;
	bh=74RieYrheGGejC2zpqISZhvu4tOKn2PrEWQlkOP9I00=;
	h=To:Subject:From:Message-Id:Date; b=BXMmLHojljFHJflCN4YC6CKAfMa62YcG4jBQmi/RMciBVx0Em9IkF/ku00BcWNsdahGPPbR70C+VSbxf7LG/RODDf/3uh6468nTm7qB4vs0rojJLXPUp8437w5yBz69nDQbbZ4ixNQOwyiZPW8Rxm7gPdGDMVRfmAkCZkMBGntU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSBzESK2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSBzESK2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AABC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787007033;
	bh=74RieYrheGGejC2zpqISZhvu4tOKn2PrEWQlkOP9I00=;
	h=To:Subject:From:Date:From;
	b=XSBzESK2MNF17iWohbYxNjCFT4NnvRNIkNRm8kA4smULLZPW6Ey9e1NmUEjOe1v0r
	 UMlXgn9novtraq2H/OHpJ00liSjC1RL2vJOF4/eCJuzjdkzl1XtlREMCU2DGVX5FIB
	 sWNcX7lU3iG+D58zHqxbXaW/x9Gc0RTcQuqGlVpD69X+lvSRBElhXQZToZMmNON+En
	 2tnQmQZmfZ+6SSr9qnlPjyRo8w4L30wOYogjaIo4drPFGfZhdtX8lDahRe5RxJebqA
	 eOFtB3zut7DR2chKfZ/A7GuTzhvlwuty+cjnTwaMljP60jWMU3e+hEe8bw6rMl7iFi
	 T4Xln9HMxM9Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D60C5DF74
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178700703368.26382.783321152215060030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ab89ee2aab0057aabc29105bd75091d1b6fd981b3e890d2d2bedb5ead3334d1
Date: Mon, 17 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787007033
