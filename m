Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7DD72E5B05
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752145193; cv=none; b=SDoj1dq6nKTdnZ1XWOHTyBBNQi88C/Rn0Zov53GRzv9ZsFUy3Z0JSOAFmKGNIcR8znGuFeE0vucrh410aMRXREatJrmcH0P+V5mFq+20S+WYtimgv5D1a4DYp5LfHK69YIrPhADTbmz7pOCFzENiM3npF8sQZn3s8deLRbu/Rdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752145193; c=relaxed/simple;
	bh=9HiKFlaWGiwKei7JMLpIeH8tx8RlLzDgJIda/hInR+Y=;
	h=To:Subject:From:Message-Id:Date; b=aSpITfrzL4F8x+ziB+Xt1lmzWo64EQ1eRP3EK3JYM1pRZspAiKyZmmGf/0u9YOWi81s2CJymzMQXuuqh7niY942EreOhjC6xPZKg3rk4BQvrX93Foh7YFKooe0ojfrRbnvbGD2GYBH+Hn0VVaXeeBH03IskrseoBprcBAc9ivuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulsG347C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulsG347C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53D6C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752145193;
	bh=9HiKFlaWGiwKei7JMLpIeH8tx8RlLzDgJIda/hInR+Y=;
	h=To:Subject:From:Date:From;
	b=ulsG347Cov2WsfnlviAqoooPQDDb1aw3+wFKrOqFobT+W5FqrjAnzDVT0CFEQ17Ed
	 G9O6+05p2TtWubFi3ZMXP6YeUqRZ0BKrRNj1ue6OpE8nNl7AaZhS+ofGVju27rPqtD
	 OWzQ1jiDgh2KdgY1PsMVeAe6hNfwaumGa2YjcDcXpJykvVoon4tUoc3hxPct41AJDB
	 e0Z8CvJDqnh7IDJFgwd+x7651Rj63lhkvUuaAzli6P/Qr+yWNaUhueae0GVDR54EEi
	 6UXuuOR/KBNiwVcd4ebQe70gSHIW7YofFXdU3fMuwrdAi3L2QQJXSAHknLLqjDIdDO
	 hlMXtGopmlwdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9408CC83F1D
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175214519359.28609.8389590288673556670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98e388aaae3ff532598c52d76292378a131a23dbb0350a32b98b51e9f772bade
Date: Thu, 10 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752145193
