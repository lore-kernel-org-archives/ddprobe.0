Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558E14192E5
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 16:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781194594; cv=none; b=H7imnMEeDNmLhrNxuFhDfx3plVYqgOMpjy2g54mnY2at1MxSqvHfLZkt/+XUQa7JeLE9ulhvq6qBv14MQQgIio/eZNIYV0QiiCLvByBmwHo2PuPO2L2GLDzFiKQxmuAhH+aaBW5u6eMSgBMo2AuqaTP4+iqbneKH1Mj4/x+lYKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781194594; c=relaxed/simple;
	bh=W2sDmqSYCfsz7gQBt57WDLws6YoR7sNwNrCCmAImh7k=;
	h=To:Subject:From:Message-Id:Date; b=WxfhQ5Osu+kKpnvjn28WPTmMKv7/PMMouNZQv4whULwrChsRwr5UkKIN9dxng9MOT+OJzJkhrazBurepQoVsGKcH0eNefdFRyw+mm9qAoA2FqmfpTwS39/G/U54F5LKDWEgK2jhlh6xV/9f+Tz9v+190yrkeYnQ95uRaSPocU7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWtIldQy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWtIldQy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5F54C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 16:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781194593;
	bh=W2sDmqSYCfsz7gQBt57WDLws6YoR7sNwNrCCmAImh7k=;
	h=To:Subject:From:Date:From;
	b=kWtIldQyV7YBSfZ/+GywvYQgwrv7r/I7mKdU3pK7re+A4mzG3zgXFERs4WmRxU74y
	 FxtYyQ6m2yhzyXSLyPE+oRwu9dZATnA4XWUlfhhcQ5K7pWbZrmiNac/X/PYGVsEV5g
	 4unHaagd/I4Pvenhv8IN5M83sg1PZFBlmxmQKjF6gr8FqyaX+E+kji3v9oSPJNxr0V
	 W1xmh5LECK8pn3phhc5++O1r0mhQc7lfF9WnbIQCVw7MnawER9CM7ell0WceaLX6/c
	 09xd9FAnh0C4QmM1AUDSDdmTwbxne5aSp8s3bH0yTneku2aAxl1Y99VbMDS8p4Nqhl
	 Qz5v2GS1ZAoVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA42CCD98CF
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 16:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178119459374.10106.17336490194898562500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 268ff71c30c7423d3daf0236d95356568da91bc2a545c89c7cd0c6ac3ba2dcfa
Date: Thu, 11 Jun 2026 16:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781194593
