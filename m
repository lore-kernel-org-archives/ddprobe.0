Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 852A63B3BED
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 07:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782890314; cv=none; b=LAYmmafh+zFX3fHgfRLm5I+RFs9zmTLoZuwY7onLU5EKCQd/mG1XH6/KuGr7/vSAHOcEe5m7HakmYRJsEz3Fj24EkIBkoN7tPOd1M6pMJGszTZahu7ssz2NiC4P9AIhva+C2oauorYlmzifQqDKx0vQN7+nRiwYSFr1BL7WxlWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782890314; c=relaxed/simple;
	bh=GY3/EaSxHpIrFIeaJ4qINMp4Z3Q7q6JdSA/kcNNPKmY=;
	h=To:Subject:From:Message-Id:Date; b=Nm9f3Nh8VoaB+ydxWDEnReRmtdJQymAdPhSaxWM+245MQM17eYs1ctnsb8yFrbuSzYp1P6g0ZEOlO9ViXeKjg2A0LM8YhSHz2zekymaatQINKYj1HIPOJJhYu9QZLX0GrdhuJhcujjWL04i40LjZLF1q7qBNYiGARypYiE31e+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmfib5vz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmfib5vz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDD9C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 07:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782890313;
	bh=GY3/EaSxHpIrFIeaJ4qINMp4Z3Q7q6JdSA/kcNNPKmY=;
	h=To:Subject:From:Date:From;
	b=cmfib5vz5hV1UDmT5kxPHZ2bgh/QIjf7MFNcAfKVca9oUPplxi6m/k1iK3eDYp+vU
	 DuYO+bH5sAJKxuglpxrKXN8tbrAHmSJF1ym7jE2J3nJmY8TZmZa5rXNzBaN1Ppt9YR
	 1+pL4G6rytciBMvfxDbzHd8Mgh2xYwC/eNc7cb5Xb5XFKK2yrO04bfOEHOlU6JZh1G
	 lxGiWKm94C5v5GvMZSRQxt4OoHOmprQ78rrivtHNXVQ79ubmfw9YAGHjf4dQ+taOz+
	 0z7ySQgPPvWFjImRM7umd3XiGCV8TQh2OGSq39oWS1nOKenpYGrY4WuCgWVViunHd7
	 Wbuu/xggk8YSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0459C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 07:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178289031371.15565.4033640004033214737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d890c2dace4e844da3af855b50fe2674cf366bf55337a6e40c7421deb4c76ad
Date: Wed, 01 Jul 2026 07:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782890313
