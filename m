Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8DD3A1CD
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 10:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714213343; cv=none; b=BxvCyhQPh+mJPrZoqhCD+4XAu6URnfxqdcQa62Uzz5QtJ8VHUX+FW8mNvpJ8twnW12O+XJkBVDxquGGXBmYUd+cPUqkm7wxZsrIjI6OcWoRMAP4RVJBaW21+0ipKMEQ2FGYsK4tAd1Z5yvfkXmR5LV3y4NN0VwUQSUbws78YA7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714213343; c=relaxed/simple;
	bh=KbGfCfajLcGpxxPNHForVVHVE4dOmy85lM3nSwM02Jo=;
	h=To:Subject:From:Message-Id:Date; b=ccwzXPMNHvg4POpNh7xZMe9KLT6m9BEZBVaKy6dGr+OlkT4VEvfbUPcR8s9TeanSijoYaHTA1I1bXixePswrHf0HB61Ab8tkqSA0iFeQQtCLGCNeF7688lT43HfDYd52FYFZpZhiGwS7kieLqNgO4pdXmaXpjeNBzhw5llXM0NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdfhsMtX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdfhsMtX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1029C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 10:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714213342;
	bh=KbGfCfajLcGpxxPNHForVVHVE4dOmy85lM3nSwM02Jo=;
	h=To:Subject:From:Date:From;
	b=RdfhsMtXdGvJIV6KOHYwQUVJv/qhvvq6SR/4oe0heOkjjsxBec+0M27DlCQcVNG4e
	 T6IeQVK/Z4tWWAqh26Zs6kGJIWi/lnKqCUhy4qHxBu2mG2lJaYQvDCCvYTihbY0AII
	 4M7xbzl5Jh6UKHLfUp3+WP6t3r4RyPn6Sd8o11S+SBpYXwQyWE/I5+3/UsnjxvIKTi
	 Cvvg3S+RTyZcuxfJ5FvhK8doU0oAN8MUE2zymIvEA6rEKPnP4OyILiW1zcXUHp3/WW
	 kxj4qeAF12nVR4KHCxwa4tPqntde5c+5TMz3f9NmFDgNfDbtxQmlklhfvyFQp3jkNa
	 XtcxOH71T9nBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC671C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 10:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171421334276.31394.4972225376499476260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83e0339f931d3c3c03e45635de661155ba8ccf81296feae8f82000ec01b37d51
Date: Sat, 27 Apr 2024 10:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714213342
