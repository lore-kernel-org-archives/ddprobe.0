Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CAF5A29
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737693354; cv=none; b=ggTnVTc/GHZDt/iYQ+szVhU/u3SSoK81FOE19oM0ZSANkXe0GshzxRZATp7XZjXP94naUTCHfccPdMjXVAuq+5PmtomURmX0f51kGY7gRb7EKXO/YHFjYuT2242M/sTO1cjBgOR0sjZ6td5Dc7WAX/cpGBl0pfuqav08dTYGqhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737693354; c=relaxed/simple;
	bh=bhC0hetq3aeNeZHSPJMOIPheEDW0rSzdk9h0cpDxsxs=;
	h=To:Subject:From:Message-Id:Date; b=HEmCUVcF/EW0Ipu6uRjnX1+y+03lPG13DwVD6Y1gHl90oVQz/mxwVrkj7yoMLNlJTAbGphDXEbgOCXDbXJa7g761rftM+Sp14ppK2tLI3otEM/+F/c+x4Udlaa3cXjZUofgebyXLAJjPD3whJtG1w1pkx7EW4O9eynRLJypMWG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t0FEDHJU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0FEDHJU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA924C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737693353;
	bh=bhC0hetq3aeNeZHSPJMOIPheEDW0rSzdk9h0cpDxsxs=;
	h=To:Subject:From:Date:From;
	b=t0FEDHJU/yuLhL42AzZIFcDt5SYOsIDOQ7JU3MzN17sbGaamlr6MocP4OwQiJ2GdO
	 LZQDF3g6B5+148VkTJHDXqL8L1FMApH81RyuLbs8BvafdrFjcgutoYXlWCguo9POrg
	 JxNHssuU8PwARsADi08fA4QhAVD1vGpYyRiJoLA40Hx6u7JHj8Hq0QMBzf2xO/oUbk
	 Lzr8fntLB7x0lZdJajQ4+Sp+uaS1FQ7dDPvMKkJg1PPkxa07KRlHAfi1kbE1N8xhSc
	 AU8wu6nAW3V4l21kO+frS2frlcJVKpdUO8Al0ed7aeUKWZysCvRNnGt9Lo8h2lvV1m
	 Zhu8yiOIe6gSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961E0C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173769335360.19406.17670575239598594076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dcb7af2ffaee9fa6113a067b96989f589a2772dee3c70022c0d8a8d01b56c0f
Date: Fri, 24 Jan 2025 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737693353
