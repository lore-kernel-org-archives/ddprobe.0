Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458471F5FA
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 16:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714494143; cv=none; b=q6DrasS8KmwaZWDKLVXIHLhFKtMvIs4JaduQd4vEuimryKVpe/Fnhdh6RRbwHSgI2Vj5rJoX4di8wQTByGbQ6tLsYD+bUqj2auIPGnXMBIYzWlMTY761uISClR4cIqFyL1Inx8DYL405/3i14IMvyrQepJkzNzk79LxI6iK3cQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714494143; c=relaxed/simple;
	bh=326/oytAVhW9FJ2J2pc6X85hKKwxDSlwGQB5jXa9xuM=;
	h=To:Subject:From:Message-Id:Date; b=FvoLBgusSD0G5D+eyJhbVFnOhEuDA2Y8FYgu0c8UWX8Gdh9jYqt57WtbJyiSlkiF+EZcj7YbR0gdi/V4dLjEgntIxJx4vcHVpY7pZrUbFtk6sfK1KbmuOxCB6BwkNRK0kvCWb5RDJ0IoxjycCAv013qYNeiyTs4TCee6GMMdGS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7QSZUJ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7QSZUJ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63C4C4AF18
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 16:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714494142;
	bh=326/oytAVhW9FJ2J2pc6X85hKKwxDSlwGQB5jXa9xuM=;
	h=To:Subject:From:Date:From;
	b=j7QSZUJ6GZO7DeEUrtI9hj2CRVG+Sxq9oOLVlmSs8z6r0xiSl1nPkPLQtmPHM3+mJ
	 yWIYU30CVifdD6CG0b/k84Q4d05J0LkBc1//H9mEA/KQ/OBhjWhUyjOjPASTgfE2WS
	 htuk4pmT95d9bcEpV+Y3CfXqgDioJZ87ohTcGuuvdsMgzUAWtGjhzpy2S0NgX+ysfb
	 DCqZCWOU6UthYzPWjim4qYtqO8syylvBlHEMvDdEf25i4VeBq+ehr+LTLIz9MCw8Zs
	 0rq6ztlFKqhcZifarChbKqxu0r7GZpzjdGv0p4vjsoao8CuAZaGAEy+Vxa0kwxzH6P
	 wEizwO1whRHeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE40C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 16:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171449414277.8295.3188147373034067746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b7238f734651aec3e130b2358c1873438628d24f1e6810f394879c9812be71
Date: Tue, 30 Apr 2024 16:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714494142
