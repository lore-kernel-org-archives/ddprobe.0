Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2446C2E36F0
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754197194; cv=none; b=J9yVcbVIrYaMO3xhMfsII/GD3CrjKnMnA6kUPjVTQBHEkBBUVD4shAWviLBG0eCujBoDROjSZDkn6g02rGZwBBoZJ5XUY0aJwG0Nt1/dIt2zJNPWYZhqIJERRk0f2e5lE6hNwnYd7nhhZydmeKKKngZ2MkHwjMgIveeJmmhsYKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754197194; c=relaxed/simple;
	bh=ZpB8BV68b/Gxx3qv6p5e9QIBJSL3L+83q7ClSka/LOs=;
	h=To:Subject:From:Message-Id:Date; b=LJiYJfihoaxZt8R5L1iZTeWwunli+RUIFaFWnNmqMlPfBwm6RSs43z1SQoAuFvRNHv/itYVLjT37RLUYWWvni+L+g4sYp2ha6OQhqa7Ydb1CglMrYI2fWAhoNYFs8wc8Ob/4DwS9ORwmSO0ZYXxD8+XGVj4luF3l3NT5sgNScbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIQH8Bsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIQH8Bsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17AAC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754197193;
	bh=ZpB8BV68b/Gxx3qv6p5e9QIBJSL3L+83q7ClSka/LOs=;
	h=To:Subject:From:Date:From;
	b=YIQH8BspnonKZ4575GXAtTlgpF2xEauHGPY31uCu8AMIXZDir+Njulu2I5YYRUsgf
	 aJFTjDJZOfe10NuoA26tqc9b9UHkcL3pMfcRFVjixogBLEXfU5YWap+1vSzIowom/P
	 9TTuzTgZJJ1yVmZdYDC2YhJBfA5XATD/RIX6EHPCyUlpctWuJfcO8zvtqD5eDuS/L8
	 2gpGwzixJ1KMtHviRq5ih9gqne+o6FH7zfE/7Z3jnQc7bE76w2+ATMRQ5yqlfAiuM3
	 tuTvj5grGKJ1O46kRbpyOsnIGOjOj4KOGWMqq7NjJ+OQ4zc6L7JtSLHloqjLLsYETh
	 /FmbiSx1WLuzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBFFC87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175419719357.1934.16410330292855886602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b6ec55345e85fb6283ba66d3939d66b6e73b6b3f6907841120eda8d6ca0ee98
Date: Sun, 03 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754197193
