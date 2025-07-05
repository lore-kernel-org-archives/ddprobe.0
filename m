Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF5114386D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751740194; cv=none; b=VJ0xvBDPWLgh5B4aAWabvkNyuExuwnIXbDfAjUGiXngDoZLXmCbpwPrYvCUQ77cNBMpND+x/FbhspCd+jrRxxu31w4hUnkO0Iy6dzNrLOXDqytECcrye32SMoNRELgoOnguOJmZcVIwswHysSsYbvfrviqjdxWDdqLwXKBuIguI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751740194; c=relaxed/simple;
	bh=gsN+IYGErlXHcrPZgXXnl6gP9SfnYE7IYjhaUbOU5k8=;
	h=To:Subject:From:Message-Id:Date; b=qyRW4PdOwRzjSdVD0UDUD0wN9VHDw0ko+roeSHooY9f+8xiFo39Kmb/83e1jYSsY1XuzDK996rBqtfelnlfnyTCkR2Kf1BTPGLXjdadM2UroYLr4wQPYQt0QUi2Zc3MeXn7wbSb6mvI+s14OstbHtX2+5/513Al25/85FdnAykQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0KJep4r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0KJep4r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3B8C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751740193;
	bh=gsN+IYGErlXHcrPZgXXnl6gP9SfnYE7IYjhaUbOU5k8=;
	h=To:Subject:From:Date:From;
	b=V0KJep4rvacUQHHaHSoaL46IB8oKoMk/cB7M91oU/QIOFlPaIHQCccdSp5yfZA8y9
	 F9d9JnEnHJ3b4AiJZR50YPjMvxv2G32jHCIEo7hVTi9kmU3T4vb9M4rix80cbCtMeB
	 tlDSK+QZIUOe7pgu/+WboIoamu9NG1vVReIVcBJaKuRTK9MI1og6MLRAQSX1v+hQ5q
	 I72FDavqyPWtdQOARPkf++jXXHves40BOcmCkBFkvz9kfnoERCxttyF/GGJgUy+rbN
	 H42GcJJTZm5jq35gmqrJLE2bnfvtKaMpqmNvL35/6NVIBq0JmJDpkcUvg4X9SVseNQ
	 CrA0CnXMiDM/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95003C83030
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175174019357.24185.8119916071569248736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 867d9177c203cfc638c2d51ddb9f36ba3d4deea433d1ac17ccaad808ccb89d05
Date: Sat, 05 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751740193
