Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A70933985
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725955554; cv=none; b=BlaxMkfhb8eWVv/zUeLZqZHawERRZxtvlSccCNIgladxPzkET3VVBiJ/Z8Ew5GBjDzVXdQtvbl1HW638h5GttpKG+GTm0gajzCDJ1TMre0bxMo/wLB7L+yOpkNFLntn9YJ6tezxdb2Q58QWaMHRQTji4e/JAYNjLFgSbN3wodGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725955554; c=relaxed/simple;
	bh=N9bT/NGI0G7Z0jXjUaAmBdTzRR64ggbsSF3heT7H00M=;
	h=To:Subject:From:Message-Id:Date; b=qSx0gCHnF2dAJDOy50UErGeVHKUe3dy5zkbqTXylGyRgfcKuFrWkuJCkkXeG1zx7ODwIUJhHgJgBcVi5LT4BmcgU98azYOO35WJvJVuToV1/RUwm8IVGFOpyyDQcc4ALTbFeihjippYICujMizjo5byqfJI7foAxyuH4DNZuCz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LyExNR6M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LyExNR6M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59B1C4CEC8
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725955553;
	bh=N9bT/NGI0G7Z0jXjUaAmBdTzRR64ggbsSF3heT7H00M=;
	h=To:Subject:From:Date:From;
	b=LyExNR6M6Qn/R4voiJ49tjDRKC4l/Y8gWXyeDIeX6s1gCXXd9vGccQBzBPq308fnF
	 vQmVqXIAT/ChXpT1V4NOaQk3ybPfjf+BSHcsbfaDTWoxfXRfVR4xLDfp3XwM5DC8ZO
	 XbJtH6qOpJIO7YOnlUZMusfwe7DYf0Ab/16NfZ8nai64x+4vbg/ydt6UzHuACeL+J4
	 VOD5GADJz2LRpKtn3JMGv8HRecGlbegXUEJRSm5nLI9BWm7RHqQvbVcaJTb46MN1ko
	 o/1/jxrC5q/kxjfcwAe6zVy/CCaxEj/2L3wEqjg/a1El0GaRSdJX5ghyTV0p4jmhv3
	 29Xvz5x+aGD8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D86ECE582
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172595555360.14031.9808583307755035260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dd99ba914ecffb50641adbd420f35e0817ed560286fe66aa087d7d4bc8a4112
Date: Tue, 10 Sep 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725955553
