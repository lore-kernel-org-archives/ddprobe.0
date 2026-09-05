Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D3F1A9F96
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788616234; cv=none; b=ReNbrbgdKn0miq5v51x1U12vnuWt7bPv/OW5SZ3oOQOQteJP8b79cmjGg4GLm+ntgFevgWVeZzLK4ArMsEiuuf5I26w51XIGuP4fq7ttG+PHtfl5m5IvQ2QqUmukv/2oJDItVONg1XYM3WcaZeh597JcIlnZ0Na22GqA9YZR9RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788616234; c=relaxed/simple;
	bh=EAFUfC2TiVZewB5J4GWbnbdQFMvrGH+WLfnT1EuPP0w=;
	h=To:Subject:From:Message-Id:Date; b=NJ9au7LWWNjnZ72A7Wh6ZfpUlPbUmigJpBVD37boUiTEswFpzCCAeECh9Rv9HCw8f7wwZzj1trnv09S27z/taKEGuMBCOEmwZ773tsTWlLaFCvqq//wYx60p3Fmrr8gT2L3r97eYD//EdZub1Ogbd+Tjb+o5a2ok8Ic7k6sYhQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YuPlJ4m4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YuPlJ4m4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C49C2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788616233;
	bh=EAFUfC2TiVZewB5J4GWbnbdQFMvrGH+WLfnT1EuPP0w=;
	h=To:Subject:From:Date:From;
	b=YuPlJ4m4iftpACWmfW2riWiBZhwZL6O+/CVl4UfsT/T1hZYwzjXW0cGRe71GXAF70
	 YlW8W/O5povDmOwr2F/pH+hJAaVYZ42luUvvYBCjbYLz3ItFOtmRwbQkcD9KOh/BGF
	 XV1yu1k53tquGkDoUGpJLBd/f1JVr+pOg4ojEeFW6N4v8jHTfj+etwCRc13FiYiE//
	 p2E/iXdxtxnrMjXp/okr3Xli8yN9Rx0JwDOX5cI+KjQ1hq36j6OnkdbMAnE70ZXu1A
	 qsE4dp8QVeW760VFECz55dIvlFgx1gQvVneUHty7QPE0easw/J9ZlhDbFEBDA5H37N
	 LVkxkPh6nbY+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2896C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178861623369.23611.15539601128290037422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a41a660fd5a096e3720a944830689ec7a653cb6d79d8b0b280966399970ff17
Date: Sat, 05 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788616233
