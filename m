Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3696B1BC08F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790460034; cv=none; b=ORy8+7JBpZlR8IhysLTGZZMwZhIHUf45YAb4KdT77+PVTwQMtgqCKmGUvIFsBr5aiNDWiDVG6Mx/EWqTFas8StPLuE6t1Nexm6m0MyPTLwnMqRiNiYQgNVTGeWzjdh/GFMqFWWqiZIJNsOsD6UoRRkViMbFT/gJhYbqezLV8iPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790460034; c=relaxed/simple;
	bh=8/sPKSLKkZ9BS+vyQLJw76MjOZF55eE2cM6WtlLbEWE=;
	h=To:Subject:From:Message-Id:Date; b=N1ag4/NjTAU6MAS7fX1uaJ8B0K3FNRt47JNxAOcApW7CX1iAZX5aM02bqBtUFBa7LhUiWVRch26lgQzDCiSNgduJY1pzZ2zg/v+wqf2OHw2s4qOim3YMM3Nq7cTQeKHY7C7spdxtbsadhqhC8AQx4RjexuTxS8njtcXYpIprxlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOJv+iM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOJv+iM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB555C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790460033;
	bh=8/sPKSLKkZ9BS+vyQLJw76MjOZF55eE2cM6WtlLbEWE=;
	h=To:Subject:From:Date:From;
	b=fOJv+iM5RttGIlw4mdTkmGHeQdJ/8T/3i9k227SYKB7T0gr0n2emhX+l5c83EI7xw
	 J/n0PaSLhpCN/31X1V7Ste+Bt1wKQGZrXQHCpiyu7JxjfGDua6pD0mvzegwQN70juE
	 HWaDAhpAg4T3Z7Z2ZMyf4HojS58Hc5ueQldfIMK7IwYbBfU6np0NIQg/xIJ7FyYL0l
	 1iFTDcyrpsmg6pQfpaCCyjlXyModcaptUrtnwjfWu2HWHgIzr/Mkskg8BQLqBiMAWm
	 4w6tIUO5IXNybJeX06Xq9ZHVGhC9ngWP4l9EX39C3Z/FjfXaw0cj3FWTIgmXbwUg2c
	 4wxRTGb8m+t/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DBCC9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179046003369.20078.3530229626496685322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec23a8ded54224508827b7ec359bee58c6f3cd14b9ee68b6ec38de6c9c3fad74
Date: Sat, 26 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790460033
