Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2AA02BE7C3
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762943994; cv=none; b=ptgid+9WQMTDXOwAWLvHQVDTO7R6wO4WPcy8+jNQJa4WNmqdhmzKR4umQ0UcJENWzduJ544xgtNc7bRYoM45Y81wGE7pn6Xw7mN6ZZ+nItdY/90ErptnzbNqRPAHiklAgCSfwqiABgdR0V8ZIEU1aCjfHaNVa979jsUTjBsHidU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762943994; c=relaxed/simple;
	bh=8Ax1VQ3MUFq36A/ZCe6MMvDLAHASZJcN6IVcedDoado=;
	h=To:Subject:From:Message-Id:Date; b=Z5ehM3WNNXc8/t5+zGgsIecOGpSmLbuQuS7mnIwyV6k8XlYO5LRTurYlEkCXSSGCY2Zt/YT40kGmHk6pOblgLstqyrqcVfvhCSF0W+ZV4UP4ZWGTfpv8UrabbAvnEDhczVgWz9cqiCmX61lw/NJmQMcypjHsek9jhDJ2Sq18sX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ciO17JpY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ciO17JpY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2B3C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762943993;
	bh=8Ax1VQ3MUFq36A/ZCe6MMvDLAHASZJcN6IVcedDoado=;
	h=To:Subject:From:Date:From;
	b=ciO17JpYbS/W4hvLFQe+9Yj6aB+d+hVDpAXyUVdVK2T+5U6KbaMW1mOsdG3ktA/2Z
	 1nsFs/OVIsyL6oULdD10zbvSd7sNaoeI41eJHeVrrX7mCn/qZpCGCoK10QTWc0Xf93
	 cMABEQYwhz+E2/Ug/MqnqFO6k1AtbFXEw9GLpCsl+Bdh963+4iaFZkHXAd3fO60jNs
	 vOVcMbk7UVHRMJAnJkrXr3Sw8uo6bxVeLLhRIemjJXQBNu+i1GXerbvpNLzvNK89Y0
	 xyLun9WPWAxPg1hjyq7UXX1oK0WduOCl4TuUrauz1woKBeE4q2YtuoJYyWpSnk9QZX
	 DswmAxvhF4rGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91206CCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176294399358.1432.18064436384810337862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cae81b723e6a7c932ef59e3ca5e9bfde5475311d0cb659358e3e31c824267e7
Date: Wed, 12 Nov 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762943993
