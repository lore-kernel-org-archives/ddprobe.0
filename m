Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 672E928488F
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788161434; cv=none; b=GgzfytpzRkZ8Ym08EgISiX4Xa6ZXfowxSIYh6TnrnJm6AnlS2aGHy/KZus9MQ5wtWno6fQq9Z2dbyMVWZNCyBER2bxO3/v8WACGa4cjOkB8lrMSF5W1VJ0y4lHE0bncEgYhjnIa0Njf+abnIfzjqCwRwmhzeiBm3AQ4xOqx8kmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788161434; c=relaxed/simple;
	bh=CzVmjGAY+C1w0PpdL9Ug6maNteLgTnvDOaK3sIYOVEE=;
	h=To:Subject:From:Message-Id:Date; b=vDPSyqBzpWhgrkbxQ48ZhSLCi+rlIpaj2bGJpRyH5JDSChOzmt4mI215duZ8/sMgVsFn91Z51JiwX/HRTMGH6jbcRQm+nAd67z2wyDDZlOSv+COOyIyrUa6XMX5l75oDiDfL0mgQpo+woEczdm4xb8zReTHf0kkjYeYDt+GuSkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=geKHlZ4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="geKHlZ4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD34FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788161433;
	bh=CzVmjGAY+C1w0PpdL9Ug6maNteLgTnvDOaK3sIYOVEE=;
	h=To:Subject:From:Date:From;
	b=geKHlZ4U28bexk3bvAktk4ZFSkpf90quPn2NWjtVHJQfY6q6YTzhd9cqG7HFKCI6w
	 GK1N7J49m4pNaegCFjZuI3v0rE37SIwd916GJzvRejdnt3w3ruGpTchgq+vuWEK8TN
	 Yk5glLMHcZCXRSnAbBzpl/uCfXxSulBE+wDJRNar1kpmHVKJf90HFkHpxKWrzoeUq5
	 jw3Z7CL/2Wn0lPR8wmG7KhoQhGkakbf4i8O+Gq0JnNMTcf6aUuMdAv9G1U46mleLFR
	 hsDMALbZSurHaf3h8ov21Hv+X4OAYUHUiXnctHlOgg3cwRQG6StfoWndjyuvAsj4aZ
	 +0irpP6xX8avw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6047C624A5
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178816143373.27022.11399031897945625380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bfc538c4e85405ed9aaf325931a5c68874b973ac7489bfaea90ba7d5d76e73e
Date: Mon, 31 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788161433
