Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EDF1DA3D
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737330954; cv=none; b=lWYAg+Q7LKLCohXVT6y3v3fzN3aop0m9uKSlRkLtoqEQfHYd85sxBTE0g5az/r7bF6TZ7NXku1M9twUm1zvQd5ASc9EJ21bzNejMOT74Z8T3GyUfmx1a6Lw+T9DtvQYeneb+Fj3Z3XOjy2gLP3pAP/uFC9oF3JaYhLW8pHYWdnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737330954; c=relaxed/simple;
	bh=zLBlz70KPlsv4BDamKo0X1W0JJHLksEvDpBL0PS625U=;
	h=To:Subject:From:Message-Id:Date; b=M8ArluYuaFBLjHPE5E/bTflYzqYkCA7VbE7QeMB7QB+xBUWA+yQwnV63r0OX9yrzaTtkh9VyVo880eaK2YrfhxKAe1O78y4hmt8W8ofOdPYu2zcJl+vmQandD8rF/tUN2OgrWgQhdW8w7nL9rrY2YEyPiWLgBB8y96w6PGrxWJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=urvoD5qT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="urvoD5qT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A435FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737330953;
	bh=zLBlz70KPlsv4BDamKo0X1W0JJHLksEvDpBL0PS625U=;
	h=To:Subject:From:Date:From;
	b=urvoD5qTIpsVCqml6eeeoJ8mzWbQ1OanDWrkyq1wHop9iw9/E2guTXAtHT7Ibobxn
	 TFpF2E5NbIeuf0Oox4L0z166uKPLMRqEZ6/6tZtTq51JQfanhMQrA7z/yHUn9zxSFU
	 CT5eek+CfJBZQcv8EEmE7vsE3s7fi8hM0BJylS0FMRKuZ7YXuvywPn4cT9V5LRlIMb
	 djN7dIunVjY0/M/KacVg7WJ3BOPUDp8Vyo1HT8ZEcc/PgsWAkM3BOKuTcnDzA6E/CP
	 eLKUaTkxYr+Pdo0+ypoRP2uubXo1stqqkcZe0Jv40OmyDswhOJmXviWvRFA6+sMG9A
	 smGkosY+vkBvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC94C02187
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173733095357.12836.14039547213311479493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d166d9cf0e90f32a971c3cd14ab41d786f1557b0e1bc4223384d8801e4a46f93
Date: Sun, 19 Jan 2025 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737330953
