Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09448220F49
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767778434; cv=none; b=WTQmEdRhzMqJx9BRcCCPpgk2fLHxwlmLvjTf6G3NiqiAMi32/uW0/Fh4bGlvnCFAFuKDKTag4zf8oPobnmBEYFy7cuJ4Tu1Mjlr+vIMe/HszZZSUsz02s7FlVWjhEOzwmwp5ypk09vvhZSkIbdzej3+MecmbvAe+4J1IYdtdSzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767778434; c=relaxed/simple;
	bh=bliNRTamreAGD2I0b2Hq0NX/Qni5b5lEzsq16JS2Gjs=;
	h=To:Subject:From:Message-Id:Date; b=QBhVhroH77ioU7qE6WLKoGZg9J3/THqP3lW9osDg9C/EpvsshpexCykURNjo/R6+Kai+xp7UNCsl1OCvtPxktHCjDyHjb+lIVJhxTsFSQUDrkFllrQN2jjRoHn3leRJxp0Co+l6TPVNffMDJTYuNVf5d+zw5V2xM1MtB5oLSsBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVRzWaCR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVRzWaCR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2ECC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767778433;
	bh=bliNRTamreAGD2I0b2Hq0NX/Qni5b5lEzsq16JS2Gjs=;
	h=To:Subject:From:Date:From;
	b=YVRzWaCRu5dQKX5YrRPTMyXen2qo4FurNmSNOt0PJjSEohPNPklUDnOKilmUb5iYK
	 LP9hmmCwC5NuPyWZUVT0txf8kv8vIvGzFAWzA3I0DiZgmotJB2RuI/wk8Ba25VjLl0
	 1gSuqyahdEkM1RbmSp3N4bLvVX65I+28x1bsFzDa02q1c23gj6K3b4QlGDwkfj/uOf
	 t81nRlf4IyYhAgQLu9XDDwHMD6e6suar8sumHg9ZiF1wzADgSxKcTnvmAPm2q6jBuF
	 LH/VQMe/hGYolplXpoIQNOflBZctwibf8SqmqVVFQZ/rpn02DXbGJFD2RYgxixZwhn
	 iW9vFpeJyW6JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F494CF6C17
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176777843357.23507.17887809427580718520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38266b1c236f480ac3779ebbee7cad51c839e5fe11f45c1d8507e0bc52afff82
Date: Wed, 07 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767778433
