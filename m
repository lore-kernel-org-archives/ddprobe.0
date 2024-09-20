Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268F37DA66
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726820754; cv=none; b=DWX5i25OKMgH+6UJ3WVF93E2Zef9yafGgLn4RB7wL1BETsgvgOv3oynmSGdtESs0CmddzfgME2wmM/KsPqUUBikM9aNAGTTESajLFn1tvd6C8usd90gkVqhcAzycvkf012qlsOOpYLNkpNpWfJHnWmbiXf59vyaoWgyWHv94VpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726820754; c=relaxed/simple;
	bh=bnQwUp9P/Of/w7l3OZITBVln38MKmgZmEwciryLwJCg=;
	h=To:Subject:From:Message-Id:Date; b=AmIllJx8ExXoXK+9dfZdlpO0fEGUzahiiK+SpZkG0XyBnqu4/qIxfRnZgT400P5DdjuT4ZiHqbnhYCSlyppJpb/87t6zVUTfqlDO66iTzt+8e1sKXfzl70j7nzyrY0Q7d5AOiphF9UlcDhvxcczRz7l7nJtyk0lTg+tRz909PdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3DOqonB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3DOqonB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CB2C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726820753;
	bh=bnQwUp9P/Of/w7l3OZITBVln38MKmgZmEwciryLwJCg=;
	h=To:Subject:From:Date:From;
	b=L3DOqonB5jBV8YGx4ZdBI5T2uPKx1aErkUAzoGWkNkB+iAsI42oGxfj8pj142gn1u
	 1HDNWacVVTVGMtoMJAbQ/nH1yiy03cdExOGiGHwLRzNcOM5smF3qW274csfcQJu7A4
	 BziU6nDC8CAsUPfJ5125eH2zg4pZrREwvmNbogeFwnNbZ8sb33iWHDeyf0ACAKTBsR
	 /C0GCdr91Awrb3EWYu15F1+E6c5tqgTRA0qWyFstidWJCY1KhJTtHUro21RH/KResO
	 5J4+iMy7LcDv1/zayqKzHbrKDZulxlUGThTwJaXvOrlYXAsSbxoBNzgci82gz1fdZO
	 ovmDHS4Lkpnbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A82CF58E9
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172682075359.28126.12539450608852251848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4259300d8112b44db584d20e0768cc1da7bc8b342a381ff40d5abe68c3ff6552
Date: Fri, 20 Sep 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726820753
