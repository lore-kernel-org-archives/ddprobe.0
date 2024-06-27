Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A31C43AA8
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 19:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719515063; cv=none; b=dSdiyllJClsBy7LyAHp3TIA4dvBA56cj3DotDt02uibUi5uJHpjrFzyU1MN48tbyq4B4TYzh3W/615iK+Cj+BzxjboJVFfZgdqf895fHNyjvS492AyOFDva+z5GkLSHE3Sk6z1mAQI6qfFPXMHr/+5SPRKI6RXvGLyrU9oWJ2dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719515063; c=relaxed/simple;
	bh=kBpwxSyjKN4OedXlvKdGoUW/P+eAmXdyxoMIVjXAdnI=;
	h=To:Subject:From:Message-Id:Date; b=SwT2Awr7xNb3c4k8PYUimTWc+77ThEVA+JhMwH/ef1/56+FKNgacPgzUYAa0jkQiI/HxN0IVJ7y3Aqso3uZZppL2woW2TckZDpwUbGtGeRjf+NOpVCL/utpneek7xPcdoY3inDp58ULl/8gzlcUWSHOkWiE9hY2DS5hiqvdPTe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2zrV/lM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2zrV/lM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D905CC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 19:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719515062;
	bh=kBpwxSyjKN4OedXlvKdGoUW/P+eAmXdyxoMIVjXAdnI=;
	h=To:Subject:From:Date:From;
	b=T2zrV/lMbBF37lIoewk+F6EInLsq3fby4WnLFAgWscZV9jMudipyylTij5cub1Vi/
	 HyK0OJgScVJa/stBHhnG8C/pwrIilBBvusO64U3pFIdxYPPLJX7t9y9p8rYwHzCymR
	 xbY4oAPBTd1jAYX7bSXVpUR3qWsHL2IO9t0AELI7zb7BnAso2q6YNNXK8gWtwqypcH
	 L1h4KHQXJaQwSABiFKFm/5OFNXET7x2Pq4zkRKR6ee7KKYSTeIaWR9AVcLpFYytbsJ
	 GBX+xCF4suCVph5RJ7iHuRt+uU0T85+yCJvQUBymsOCnUBmWod3BaB+uzzaGECfnvJ
	 GAsawIhaVwdnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C539EC2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 19:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171951506279.4856.11359001784089778825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d9a5785bd8a2b42c9c59e59e10c4a53b9a3b07d676bc31fd57e67685edbe19c
Date: Thu, 27 Jun 2024 19:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719515062
