Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A137360
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 00:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713054563; cv=none; b=jEs4RfMZmeBy3xk2Ox0VXdnHfVFq1QyPFke+H4IAVDLRqgp5sxJBSdS+g5vc1ulWa+L6Zj4WQM3bSwBNx1lmTXmqkpSWcGGVGh/XlgjklX6vWwd2CfyI5iqt5UNWKuGzkbxJ8MbzTXZI6Bi9MJjFPN2tLPJnuRgkPdOV7+ImHNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713054563; c=relaxed/simple;
	bh=31JowjkjPxIsj9vhjiQSvOQnX4OhizT3rvzVnAIOsNI=;
	h=To:Subject:From:Message-Id:Date; b=B4rQq2FBEYmDQglAGPWx8Vg5OeEMy3KfcgZ40TjeNN1G6x4GTPx+uFocnLfKBKdV5ZEb7fhMR4ttmyL7SF0y2BW4qD3B7QZoV3OddER+h1xqdtJPg8GmZcT0xmnwhPc8r3dPlS3aiBnDuD+GOl6SLt+BLEpiciYfWZb6OnZyqcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=el/yZtIB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="el/yZtIB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA3BDC113CD
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 00:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713054562;
	bh=31JowjkjPxIsj9vhjiQSvOQnX4OhizT3rvzVnAIOsNI=;
	h=To:Subject:From:Date:From;
	b=el/yZtIBcU9pAJflaOhPpFb1HsEK2BRESlDxsvQzXV4MiY6x3T14YCgT2f2HaKvZF
	 W2RcLwXnFLk88WcBlWKDQqJcLQVU56HsCcftxI4UE0mKuaPiUqlaaA7DF9VWCdJRHJ
	 FwA0J43DPhzFMOYGP0qLcC8KzNZDrLEe5Wup3cVw2ucMlmZf1f5S1jNO64iAT1DpG6
	 qjH9lMii4OuSrxUmTHuJtyW0ByrA4BEvfKatpZ9P4rKo1Wq9eAMTh/Z7OUseL7QPsY
	 nnUr55K2Y7iH2hUO+PfmSOZKJFx+geLF4CwMe5tdBlB1+us3S0nyWr46WqoL30d+lr
	 WyL9D1pWBdbrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7BA5C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 00:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171305456278.19499.9464124730456358331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46aed1d2b62dc2a9bfa91a6d4499f2908901c9fa0e80f31c753099ee48252732
Date: Sun, 14 Apr 2024 00:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713054562
