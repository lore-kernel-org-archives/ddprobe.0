Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A8E217F3D
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758257994; cv=none; b=c2DYK4+5Cju0GXbTYsIfBJ5xNzI8xE+rKGAovQDUaDf5HHbc+49IZ/z3EJqEYnwviuZw26TO31e/gnZvWaflFn4mNfuyED/YVRxOJdxIrOUqttoX9DEv+dbIDFKZWLm8F3dBgglA+LiYIY85//nmt3gpHyzkJqefYQqDZzKqc6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758257994; c=relaxed/simple;
	bh=aPo+N18zNlmsNPuOT2GWBQWPotL2ikdQwuicGAaLnl0=;
	h=To:Subject:From:Message-Id:Date; b=TXqO0Vf+M/5PpQQlxKsXA3jcL/xLQiTTTAeHTZy0QpbG0VWohNu02JufFCI0enL7eKw7wUchbMKo8rXi0Dq7RnkCinUQ3c1KRDD5kenw5QCkpDJ4+RFahTa0Zl4+Lg8EERtlFBkjE3knnJD6iTVekvSsjBNpiRpZvOW3PskDERo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mq+HjE+W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mq+HjE+W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8903C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758257993;
	bh=aPo+N18zNlmsNPuOT2GWBQWPotL2ikdQwuicGAaLnl0=;
	h=To:Subject:From:Date:From;
	b=mq+HjE+W+wo01IizRNJlGyF2el+y5zP0u2xY6uRUQZ6pADu80U7cXT5REEadvM3wL
	 YEJBavW9pw0jSJmNquk6adkwpB6/1z0Al6zbY4N5yBHG60LAZzNS7ad7NRNI57Nbb6
	 NMM2DCfhXrPf+Z8cAajEhgGripR/RwTVROnVjZQJILlZK3KkpzgR8Z5lriWCWiEpVh
	 6o36jeEfZNl8cNDXXph017cbTzAIbvOsLYz1qJY8WKWcLM8oLpKx0BCswRNdyt6Z5r
	 nuI5WQTENEkptJmfvLHU/St0gaps1/Q8iJNn90av6auKDnOKPuq+ZoTHdPiZ8j8fC+
	 iwS6jJ4HmLQOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D21CA1013
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175825799359.22030.14646992133104912910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad5514a0da301416c862f43c4da9d4527691972bb3657361bf99b93b50d1c23f
Date: Fri, 19 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758257993
