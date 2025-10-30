Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466222F39B1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761799794; cv=none; b=T9ScqSl6wMLux2KaGaJ5UWuR/GxK8L94FmZEPEfYiD1Ns5AB4u7pDny3ROIOqYv549LjGx3Bpgu/LI/pwCVsBDl3GLaqMIIkaRFcpt6rqlkzr97+fw0AqgEHGMgYKdDQ8FZJBNH17Uz81iXF8k1ORFYkx07egdtbokPK/ANUmqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761799794; c=relaxed/simple;
	bh=owqX5fDc84Mu4t6ZzzhvnlfxK6OP+02OO3m06SC6rC8=;
	h=To:Subject:From:Message-Id:Date; b=g8FroPAi8CGnEwvcAloZ0IRsuxLfUYUR8ez/iJKIk1+u5mvrRJjrs9h2N+Iyc4jRpQ3GWtm7bNou19oZSIrHA3nrjJ4DFW/sMPtOY1k5owTzJaAL8rRZuRLk8z/ZBwqq+mIhoJ7yNd5a67RFViTouPrkI2G8n0vCphx724oPkAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBsSoRfq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBsSoRfq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1274C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761799793;
	bh=owqX5fDc84Mu4t6ZzzhvnlfxK6OP+02OO3m06SC6rC8=;
	h=To:Subject:From:Date:From;
	b=oBsSoRfq2ICt00eAKh90UmKjeQjOz7Wd9ST2TKy4HUHAiEMjKv7aEiHJImt+v9Am2
	 0UnSaiiNsIAnbJkW+RQG4QNV3CTbXUlacTKqDinXfFpgYgPP/3hqrjy+pjGPQv6fb/
	 RFtRFWluagzaiiVlYt+vEEEHBhEYa9pTEbqoa3atj8gN8ry8aX4zxxDNRjX5+LFsvV
	 Ch6Vg6CXqwnIZXnZiaLs/C1qo1QW7lYZKcXSAbcOlfJ+d7qAGpWTD/zAAKgOHfLwXm
	 G2s0jXyEDuu1JCUAMdRnEA71pp5KszuaINcMSMEsev+mOE+7NjHi+cW+5qpcFWgX5o
	 wLCji9PliZbdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E9D1CCF9E5
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176179979359.24135.17791869959419878846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ca9e849cb5bf65584a5e1dbcffc7b5c90a004e1861cb9d158cbe076d7fdebc
Date: Thu, 30 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761799793
