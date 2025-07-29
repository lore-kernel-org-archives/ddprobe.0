Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD8B288502
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753787994; cv=none; b=aAIMmrgEHzojRUcRb8BkC+LGRpySGmbuF0iVvvpQ2e9K3qRsAE+k/zhB4JHwgk3zOVsowIL7gPokn30Fqj7GnhjmSWsSO8pGVw+D/WAHYHH/wYC383Zepj/8cxM9AsYRMJJm8zbGYQpco9zy3jrFuIbhlYLwUYwnZ00Sz09BiUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753787994; c=relaxed/simple;
	bh=xlrgXkWYbRI77zzvVCV0HBZJYax/8DCBTM7CInKRuHE=;
	h=To:Subject:From:Message-Id:Date; b=YGnvQCG39Bq95NNF4lce+dOLAR4Jc80EVcFl9G79HjBftL0652ZGjMu1xXlCj9aotoXpZCMFK+Sd61nIsXBolyHPRx88eroINtEx1KEKM/DaD7Bs3phw7F5kxRC5ZxPMAQOY5LlE8hzvbqfo82t19FT5+PZfYNWBQLAo/BsQq2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYvdw+fn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYvdw+fn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A199FC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753787993;
	bh=xlrgXkWYbRI77zzvVCV0HBZJYax/8DCBTM7CInKRuHE=;
	h=To:Subject:From:Date:From;
	b=dYvdw+fnZRSnsU7cgC8mnzNSa25pTVk5SJZdoSnbt4iwPDiX4qUo+9yJnMpAwtrgR
	 2NRFPu2JAwejjUAFanvCoBTA/qb0yqlmC05xaSmX+9AFiwdKzZ+3pmoPAeSd+0955z
	 mfU4+YO+lvn5s0WaqQkhwP4Ywr4xn9u/66swNvWysY22vr4KIsM5FNyoTV6ieOxSY6
	 fjy95kDq6obtPql/AKN5XCKjImEps2nYnlEPZskYmmefrt7JZHGfvHfeVazSFB4OKz
	 0fTasnuM8XOGStLCRmWS6UfbqEye13xjdDbTBv6zgYExnhTbz5UkqUyUspBEPk43zW
	 J4EejBiKjBXYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E7C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175378799358.26700.5942000966460662421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 654f6419ba8b4ffda647798674b37293c74e90d4259322c5ed74ef7f89acf3c8
Date: Tue, 29 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753787993
