Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A15528E0F
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755817194; cv=none; b=QDV0j7y8IgedT3i18Ld+wHwNIWWrIznMliYhEpIY9jrV1nlzuR2umLfztbpI2FCijw+N9CUM4Gu+Y1LSsuhbgitK16XR2Nl3qk4OOUs3xgTNoV2pcrDA0aA7Nmc70X2WZf8HES7V25lp7skggMDUv4KU0ky9UQZpSWSfqfydT9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755817194; c=relaxed/simple;
	bh=oF3Kwu+Hcv9lNp3JPW9zmMNZmQlSza00JErvyhJ5Od4=;
	h=To:Subject:From:Message-Id:Date; b=lPKqzeRjjfSFf/NEJZOr4aZQnwmVYudh+EQjs3LiUURjptlUyiBz3oRjG30O3diK49G0w4bvZ0MvLoqw34QqCL2d2ImL5XmnpUF4wiPE23GTMZ9imxMvxuofwPkrkzztEwlcymgPoRWqyzRE/9Le2SgQwEqoE2cgrfmhIoh1ckc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQv36FrN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQv36FrN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DC0C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755817193;
	bh=oF3Kwu+Hcv9lNp3JPW9zmMNZmQlSza00JErvyhJ5Od4=;
	h=To:Subject:From:Date:From;
	b=eQv36FrNuCfo8vUHswCmGJqHl34Qr9NH/JefoIvpbskkTjHET94zGd9Vf4cNqI7Zw
	 KAK/HuREanboGq28HpGNcy0uVFAp2geHT8FbzwfTSBkj5xGgIu+eAkxnwS5LncyTb0
	 wXxdy75do8DlVJcS65K3R7Bcox2vCnb/M3TD3Js61zWhQBDQ1vExIxh3yc6cTY7lLH
	 5lTx1zThBR7zZZLzeF+lNTJuqvHlFXKZjB48z/uQ/lz2dhrKalL/xA0HYzZCQbfJcC
	 aoHWiwhxsgfPo1sufYOH2suQydPUvDO5qlqAohIyFVQISazw/i5NUanJDQa/hAQ3F5
	 pW6fFdiCegTeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE89CA0EFA
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175581719357.21313.14918160474706078559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8902ed69573f9d06892f2011c9a3cb9c195ad79e24aabc465cb6484b462f14af
Date: Thu, 21 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755817193
