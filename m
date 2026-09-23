Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0F052FE48
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790183434; cv=none; b=N3NQNkDEi8EywkOkFId+KDQ8EiQAymUJiduMAQJC4hzpeeAIvvbd8OpDJx8lT0Fs8K73z4ga5pZ7RJ0emFQGFiiVL8wZ9lNO3Om7xDJwlLk0CWf/icPtODkMZlW4ei03UKtGeI4BgKjpgybx8emdKQx3SgPgZI9oTkxrvJTIwEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790183434; c=relaxed/simple;
	bh=njdlNGREtetGkNInRSyLC0Jkg2LTkXOHP+7jXz0SwsU=;
	h=To:Subject:From:Message-Id:Date; b=j0NQhAI5d6vFh1o7mYe13OA8Jw36KPZuSr7r/Xw18vobyYLEfd0o3ZifjnBFV266zljKSr0Q88gKRAcTCzND7CGjjuXlTDfqxK28pYXl7au6NskQm/6CBLgzrjQ2Y5U4XUPyTCzubnA2ryB6Fd1R9bylgbJbL7BTV7o53R4d9L4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vC8QM36C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vC8QM36C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36EDC2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790183433;
	bh=njdlNGREtetGkNInRSyLC0Jkg2LTkXOHP+7jXz0SwsU=;
	h=To:Subject:From:Date:From;
	b=vC8QM36C4aIiRnh/G5k8adPDBNMGKfFLyFmJj3yR8B1bdkGHqcRsptFG2xCGEQpuO
	 ghr0wsi5hihG1fDNJP5MQ8hx9wh+hYvf8H5KO0iDFJZ4LFfwWP/z7UR6C3PUFcH+P3
	 SlzKyCaSoNDXeQ/fdzUA4q5lWSTHFCJa12awbGTtvelLXtPXEcV5UJpNtZ160fJh5X
	 UuB8zTn775CcaWT+n0LJW2J0vXsOoXZD3Aa+eAxvE1tcyVVQz6cmkKuKld41BDQzH6
	 Ndd2z0aBMuJjvfGFKA8GUOmHKsy/IE4PCUDNN0MUnnvWBjg4BcFBYao/dMN6N/UR0b
	 aOn2Gon/HrgqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF718C98302
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179018343370.28795.1984864329050015372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e49db03559448e77bfb86f47610887628e63d843405b027c5acb9ac26f6be786
Date: Wed, 23 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790183433
