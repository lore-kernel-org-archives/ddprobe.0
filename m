Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49A451614C
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790188834; cv=none; b=B2HCKQYbJDzywfKJ6TaE82zCdNYn4SefSGbFIQ1Ub2J2ejMsoJwg6YpCcT7uHu0k3s8IUVjDo4e+Xc6rGHrG12U3y2Vh+GMLn65ectBc08xdUCirmiNIVv6Ta1Z11m3hhB3H3SOZZqpQjVo3S4qM2HSVTR3WiY09Xlz+RhvRCnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790188834; c=relaxed/simple;
	bh=iC1kGpOKSGKGe/Rlz8u0v4Y832z5yMV5Q42JXg6vFR8=;
	h=To:Subject:From:Message-Id:Date; b=idDVaBcVvWQ8wQQ/DnHCNszcFFmI0fTDYQ47QzRbUc83NqNB5gr626o/29vZnrJyThtLvkeQdXnVc3fOf3sxdI6VpJSE4UrJ3ziHU89WHxJOtD4g8H5l/O6Ys3piS2Cma/NkAp/JIT29SuA2Ill/E/gjxEYmnbrSbUPF4l5r6Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZShaGXpX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZShaGXpX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7C14C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790188833;
	bh=iC1kGpOKSGKGe/Rlz8u0v4Y832z5yMV5Q42JXg6vFR8=;
	h=To:Subject:From:Date:From;
	b=ZShaGXpXGy7boGmtG+uTJQTVv9W/yzwkJwNIBQFdboCd/w7xfPFZ69iRbUr3e25Gw
	 PjsuglbvcrNRb+Zvt2OhZD/gmqmTwQzcxaqd+Rg5izS9ZBfY6boZV4CMF5fdKtbU1S
	 2eABQXoATjUifqTf3zB7NXUxFEs/9gdFokyAy2DqgZZr3Vp0VK9eB+jvAs9s7W/pCr
	 aCpFPYk9iylxTJmZpNCIX8ac/sWGayuwRlu+jOr2ST4vguRf6otIgIYgjvm7bgJOwL
	 rC6V2R0L2zV6DNuUUunT0boLvFAUw5bWiTqYYmOoBs6kEvjYMH7txFobdaKpJnrcRd
	 E8h/Tow02SUSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC0D3C9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179018883375.29091.5656052440987343436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 846811249c0dc2e8984d142f4b074366d0bca36f3571912461b90b23b1eb5190
Date: Wed, 23 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790188833
