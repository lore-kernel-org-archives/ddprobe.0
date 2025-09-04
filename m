Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0680312800
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757007593; cv=none; b=HSyTBNdh6cD6fuSBb3lnr6HiKsABonpJJHktzwH878bLPPm1hGmo7RJxtyeKeZF5K8oVukFpmPSxWSlcwMPWBISeg+TPqsQB+qjRBpvfIBFmKVzBhhFKc9UPTFxIgWDsjFYGJajgq+5O7JOkZh8WYj1XioPndDnIkTiSWpF5BbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757007593; c=relaxed/simple;
	bh=FNr/8awaVJ8oOpZ/28EbnOWOgoeDa6CDi0odYHcnaTM=;
	h=To:Subject:From:Message-Id:Date; b=GN0RIGmRkp1S7qCIYaXNRD71bzenwnuGawj3pDi+ZBM8OuHfpbSalZOZeOlXx+Ne0S3Q3xC8jx0RLS3MWnxPGmG81trkjUYHwhB9hK278vByJ4FfM1cdzQ969DoUNChY5Z27nKyMRNfxSpaSwpKul1WXUebNtHbQBiVJ0N+vQQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PF+pwa7L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PF+pwa7L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA377C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757007593;
	bh=FNr/8awaVJ8oOpZ/28EbnOWOgoeDa6CDi0odYHcnaTM=;
	h=To:Subject:From:Date:From;
	b=PF+pwa7LynBY+Vb5VjQkoSLRQ5DhLg15+8Vu5g8Gbm7753w9n5gVg3iDLyqpHakkV
	 r1tTcVbA1ROK/SGE0KgvbcJqs901m3856tu6jKs1FJF7CZnMe2KTmfp4Af+8ANLUF3
	 W6sLNEjKKTUaXIV3ya3HZoyLaH76o/vVVTGba4tplhE0QpATx+1vxzF07xHdE4bBBh
	 cRotM2chDr0GE/8B+6eS7CdCJUsyEEEHMXVyQYDowVbaapkF/ParBj3fs6UW9dOc0F
	 7iST/UgCnd9toz+imGhqqgR+ZXTF/Iv1GzL9q7dBY6Dfice/zXXllXlGCoGmpqHyUc
	 PCKXGsHYfIdqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D42CA1013
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175700759358.2335.6986144240358057019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b05107481b5953ef1c40ecac480aab4e4edc51f605786047020d6521241571ef
Date: Thu, 04 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757007593
