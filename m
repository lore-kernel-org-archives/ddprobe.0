Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365B64C6D
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 00:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782864514; cv=none; b=Bvct13oXpWH8dJDAbMZ5JaX7rsTXwhi9y4LF8sJhZyU438VOSqFOZnTtXzbaPBI15+lfo8yMxCb+qpeZ+nqmRUrPIu6LkUXQY2NxUfP3bd7HKb6zF328wOrMDb7YhlBGgajktJ96hrf83OwQCWr0155elZR+VnTpVEzsSsYOQ04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782864514; c=relaxed/simple;
	bh=cgXXSM4FKdOWfM6DI7uJ/us8a8hVdBsbIKS2zQEigoM=;
	h=To:Subject:From:Message-Id:Date; b=R87SIRqEKBtV5ni5veSyd9A4uUiM34byiYsOmBuzE2qt7IRytj1R2aGGgRUVOv7PCvdmFz5n5R1IYOE51KAYqYaj5TWT4ZDwk5Jvpdn3F25FEw9uvS1KQ1IrP9JvbecBGsZ7hyNOSp2Ta/ownQcXF2gro3i/i8+XTSGiTtilSmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YqGw6t21; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqGw6t21"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C99FEC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782864513;
	bh=cgXXSM4FKdOWfM6DI7uJ/us8a8hVdBsbIKS2zQEigoM=;
	h=To:Subject:From:Date:From;
	b=YqGw6t21q7g+nmCUd9dWwLXcfLkTEqlMUPOdpEDXVT1rOv0Nb6dWpdN6WxeE7D10+
	 VY0M5LCWPIUenoCyiU+qoh4U5DfvP47nPMZPokY3ejupWZJf+psxJPPvQj1rBohYDZ
	 M+ybFm3A+E/NSPtap7YufP30utbJWOTlc6c0auT/VkrvRnu1D9EN8Clxv1WFSikKYj
	 xfnYdCNeg0GCJNPC2G6TnSukMnqPoIqUoPOQ2002SDQlXd8GdzKygFQfEt7/yPKg0F
	 Yr7cDK5Q4Y3gJw1pwPSdrQAjnabGSsmNaa9OVYk0FbrZ2p3pUqTivrOSQhgw1DUiAJ
	 v8jWITJDaUjDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD836C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 00:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178286451368.22533.16035399955964483791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da2e20961eeb714358c571fa390a423d6d6050ebc7137b556766e9e6798526a3
Date: Wed, 01 Jul 2026 00:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782864513
