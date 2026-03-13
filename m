Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C926931B83B
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773410693; cv=none; b=cLwqhy1xghHw3eGho69/6Voxxdo5Hf9XiG6+BrcBahudxXMa7hxsdCk6PucgIp2b3Db0s2BYZ/TMiSKgnAOW8fLxojYIHLqycLdcCbiyi/V6EKUaml7p/387UNKc+vp1GgmKE/fcOOIrJDjxOkrBZrMQ8yZ0Y61L3hw6praV5l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773410693; c=relaxed/simple;
	bh=EZPpyG7uHFpDJbTsP6MMDlOWCgL8ZvlQk3RNg2wGpeo=;
	h=To:Subject:From:Message-Id:Date; b=ON56BGzYkmQkQ4pfTkrpNsBDZJnHUn9VIyNu7gsUoeNrvV/2ipFY1cfFrtZ6jsY/qeIP0EOG6P8/IDLYNpHhunhsjnQ5EdCjgF9Zl5Fhx3/hUm+OksPP8kOtGazUte2h6kWbykL+vZ8Y/8LzlogCYRSfv3WLHznjazlEVSsRntI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+x0mdzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+x0mdzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A171EC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773410693;
	bh=EZPpyG7uHFpDJbTsP6MMDlOWCgL8ZvlQk3RNg2wGpeo=;
	h=To:Subject:From:Date:From;
	b=j+x0mdzL+I6pG1YFnaqGPh6H07jRR6gSqSFuthqnZZyJQc0MeZv8PZ66EKKqkcJZC
	 oYFZq4DR7x+Onyi2dy5xxSNNG1jQQ4kpacOlkLlj1573MAtXfaVkN/A8kDp0D6s3PU
	 fuLAyE/D8mTvcXCsuDPTT8INYhNHWu4P84C367in1lkVZxQLBWH98dRWZb6cQlsrh5
	 lBuE3fbnHGFr+2luK5DkC3Rbkt+lvPZHMfubAXpglkW/QLxj++jSKKuUgyh/3w74tl
	 Izhe29E/8J6XTsJNvRSqGCTVleYYZpW/xn+p4JJzmrqJ6cpu1QzNHr2zF615jLO2MQ
	 By8+n2lpOqlzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916F5105F7AF
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177341069358.5068.10722363967297949606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c94ab9a5536ddad71ec806d12db0fe852a3fa1c438a06bd4709189ad9f16386
Date: Fri, 13 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773410693
