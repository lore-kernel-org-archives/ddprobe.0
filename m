Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC4E36C5AF
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771341294; cv=none; b=FrSZ9bLI5pCEgGb9zX1RNkrI3MXyk91KMo87wzwtSfT35HTmKj4b1kE8DQKKmQq/kh+cnXfgfFqU9u+LWbrXZcnX5IvBWmSY6/EV1uzoB0Z8V8AIGBta9upR2q69IBgnMDabSHiH6FvJajPv+697MysdiLTj/flZK5j2B6Z5UXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771341294; c=relaxed/simple;
	bh=HOvu9CrrrXTfHTrK+3wqawm7m4Ipyus1lznkRLhrKD0=;
	h=To:Subject:From:Message-Id:Date; b=nYEKnQcym906eOjeRrnWAlJhQ1RWJDV+t9Be4aqYrV3g/r8O7uKRM2oj35TuoZItcvB8iUeizGmnKsye/Cmn08idQwYn9xx1MY1ecBQv741LBIa9GVq3EG2kiEWO8RacjKS6bJNB8h9I46q7tDxYkf2H9ohZC6tGxTINZ3IuGSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJE1Dgfg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJE1Dgfg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD693C19423
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771341293;
	bh=HOvu9CrrrXTfHTrK+3wqawm7m4Ipyus1lznkRLhrKD0=;
	h=To:Subject:From:Date:From;
	b=AJE1DgfgYm6s8cx5F7+wD0F5lo5HOimz4Mmx+xWHiDo+nQ+rEE6bC5OL2bvOgn6HI
	 5T8+WcIliv6oYaIt0c/dlzMpC6tPsefbduTGFRtB/mk23gn++5vGxjO2SFxUeIi5LM
	 jatr7avRTdXyX95Lii1LjAklRoo+3prKPpmytot7Ez43T7Mmmpkd9uZBittZAYwz7H
	 TOzc05b1Ihw0HcURJszTpw/zh1+dUKfdN8qdUaWm/cTWe51TgVidNZYuydLeCjVJJO
	 1HqLOTS/60kECrcZuhUkTzU+DOqFvpNMLdPj8PF1/csMQwDTVvVo1YEs3NHGKzgYik
	 j+b0cjH/17f9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949B6E909C0
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177134129359.16576.14851818773534839599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90897ded5f064c2a707afc89251aca5d626e4d0726c472080d263e659c3a783b
Date: Tue, 17 Feb 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771341293
