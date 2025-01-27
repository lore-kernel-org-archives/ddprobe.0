Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4223DC2D1
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737979554; cv=none; b=DOpLSD+zGdmzrXdvXvwf7itfILKG1K279oa07YGzZ8XjKKaRWnT0hw/TLoZ0xomui2uX6pui2c7GIaWBDaPF1j8P9/991UQXCyUwyzrNbcSNtF8ad/M9eMUrs6l+Cgy3aZIAZmFAfe2eXyKE3pEomOPKwDVu4Tn5vQRPDVwuxNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737979554; c=relaxed/simple;
	bh=i6bOSi8IoHA8hrBVDIUfZseNxDR/Foki9LPklqgp2vs=;
	h=To:Subject:From:Message-Id:Date; b=rbq2X8PR+kMVNNa8xx+hUdjOOgucMWysCpXLd9h4P1LpunxQReXdDvwG7oqlIH9LcvgoHX4Sn17lqY877bGS+lCoFoFegGw71H1CqqsOMC96JgDJoGepodVSAxYcwu9iXmjTz0QYvTit2hSM3iNS4wuxl7Kdx+dFnq75N/5wVqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frzbxQ0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frzbxQ0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA201C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737979553;
	bh=i6bOSi8IoHA8hrBVDIUfZseNxDR/Foki9LPklqgp2vs=;
	h=To:Subject:From:Date:From;
	b=frzbxQ0ljXOD6MnOP5b+24e9AL5gY9p9niaTJ/ym07gabtj7TwUWgYpM60i8Nd5Ai
	 pnVVLeP6ZYatWevn6ndmcbvfy1w4dSUZSgiAqB+84UE2nWXft18MqiQ9e2Fn0qgKRL
	 5BJClEW3FndLRLipyng3on8G3tUpap9OEd1CGEqsxIVXZvQzCItyZ9zlzt0R9EylC6
	 nqHmkCS9XjhpjxKZa1D4CxdUxXo5KCU19MoSQ3ddwsyuUswGyL0rJ0x9OYLRgfLds/
	 CqxemDAXHU7nlNZY4+0WaH3uaAZwa/MXDsE030JWoLMONhhbO4Sz1LK86vmJiieC1X
	 aCDk8LfYaLfqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F7BC02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173797955359.24242.16874161220390045821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12df468931280013f7012ddfe60f2e271d804f2a1d940db9f5a183e0aab74834
Date: Mon, 27 Jan 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737979553
