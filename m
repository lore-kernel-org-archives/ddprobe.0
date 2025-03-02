Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CD0AD39
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 16:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740932334; cv=none; b=ZVUFr4N1noOhpi3DNfb7vu44aSu3qJCwCPCtIvmvXYu5DUf4ZoMgZdFIGUJSiXfkwgbwDZhKv3gsp5RW3WlZZeTAomTUUR43sbbogyZ0Dm5IO+ECM3pKjIdz6xqvlEhvOW8KXBrvPC6WY+Ce6wTMxI4QaIKAfYLUAnAKaLQ8koU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740932334; c=relaxed/simple;
	bh=LR6Op8V2bCywFpqFBJjuBF15ISfhs9sBis/0OPR05fk=;
	h=To:Subject:From:Message-Id:Date; b=hcUmwKiFjUkd57IJ4zd4TUo3BAafgjLKLOIrA32cH9uAwpDkrfuUxlCW3ZR2QiWQAf2je75fjNzqg/wyShjKu6V8oHPFC/xPQFK576UNHfCBD5SjBRiqakpEaz/cOwRZlizMfj3QjHxCsq+AOdLQ3BQ3cvpdshQSakGdYwoRW44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCfm9mKo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCfm9mKo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7536C4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 16:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740932333;
	bh=LR6Op8V2bCywFpqFBJjuBF15ISfhs9sBis/0OPR05fk=;
	h=To:Subject:From:Date:From;
	b=uCfm9mKoXLgIPVn0cK3LI2vTfu1Ki9FNs3bCdfDAHoxV+wfdctqZk+Lxay+iiyjFO
	 fz8YwETXylbBMowmPGe073GingdPHfB/o/xFYp/Cic6vyIER2Ukn/iPunm4vXN33TS
	 vKRT06jxvpzqD9cW1w1CbW5oNEokuICYb/j7y8Rywp8kMes9z6Q1DHPZ2EA1W9Teyl
	 bDn/XhnUa7ODE39Zle4ug8Bad2X3KDSGQ8TIgUeFzXILVGaZ07qtREnL58Hwb2b5bE
	 BSWY/BPv9zciOZv6S/zS1V2Vq7zVtgRrozg3NPCRRSz9sC4nF0xQ0zLgDdlNcXuYJF
	 3jFEfOkXCmCDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3607C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 16:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174093233365.23156.6160494535206750856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daafdb5d2a93942f698f6ffea30e4356e570299bf88b7cb3ab85ed30b0050f31
Date: Sun, 02 Mar 2025 16:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740932333
