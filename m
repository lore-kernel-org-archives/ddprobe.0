Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE9B12FF69
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 20:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783198114; cv=none; b=Q8vDbbn0Z3fgP5I//F6OgNbi9UGhREVM5Q1WoSnSS/uQGiypnQe/K8/ZlNR67lloLJ4Cb3EhC43y/i0eBxJiqaEEYXesAkTq97KZBmkMr6+wTo/61a49BL/W1U8ybbnXcH3QMaFmlSLFb3BZrqsIUm9zJ90VnohNLAy6wiD+5bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783198114; c=relaxed/simple;
	bh=pcJOd3QnaTgxftdplRAZ/XCEz/7OnAttgg0wqyRsXU0=;
	h=To:Subject:From:Message-Id:Date; b=RH+jUju15Codx3JbO8rUwixVzVWc2Ob1WtOJUZ7d8ErZ3LMAwgk8bLtVoI2ZuGiW+eJO98Dv4QWMCr21eXsFafv6vLorSh/4490/PTMbV+TDlo2aB1FgUeKqhRa9e7j/K2CyyIQq9ApKJ6sfWL5OTXYeYu9DfWk0EjSa9tu0Uc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eEvi45ru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eEvi45ru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A04C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 20:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783198113;
	bh=pcJOd3QnaTgxftdplRAZ/XCEz/7OnAttgg0wqyRsXU0=;
	h=To:Subject:From:Date:From;
	b=eEvi45ruTx/dLmlhKNmpn0x6Oh0qsK0vYcdLqiSM4OMyl+SpPl1clNG2a/ofzZYLj
	 9o+bQm1FTogqgtVJYkbpzdKXF/XUuO8ktHXrUTNafClQti/Cl44JFsi3gCYz/3oiUf
	 zgZInB5wqnFW5wLi5Nrl7E46JWgczj+pfSf/Cx6EEA+rr+ogcDqMRv/r1rYW1pSJ+y
	 lag33z9MqXt1PvbXLRtGErwkPZN/uqtVdEJZLpP6B+e2tU+rhqlqO3pTN3/ilT2jHR
	 PqiezO2VqsX/Plrj/uKYGWCAj30tDMoZO4UK+OrM9EcTyffF23QtgLFYzFG5xn3AEe
	 GY8CRadZtdYrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA8FC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 20:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178319811368.32161.353803596342294022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a89e98b44b0e1a0d1217a5220ce49da13eee486e61a6fe47742b7bda8d97f18
Date: Sat, 04 Jul 2026 20:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783198113
