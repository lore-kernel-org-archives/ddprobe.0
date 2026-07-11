Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461B42D8DB5
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 18:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783793914; cv=none; b=ESTsJJqsb7GbUwuHQYzZhmt+bZp5CG4GWdw0UWkIFT0udo3krb7KizC1hobqtztLXquonXnAyrspgWFF08ehRPngEJtdobpiGbORD+J/UHc8y5jy5COugSvR5tnN6pC0PWD+tCNx5RjrnRjAEAy6FMMZu40zPwgw6I6m6uwDNVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783793914; c=relaxed/simple;
	bh=NtiTiluONlc1YkRnl6NDqTZQ2b2v4tZ/9UggGm/OPxg=;
	h=To:Subject:From:Message-Id:Date; b=SrrSbJlDKg6KR91ZSz4SWFqcgxHl8+znboXeGG4cdDkwnL7peOx8EYs53JPPTBqizNohJ2TAD3UO8CyT+Fteu95mqx/hq3jLcltVsegA6cs8t8Qfrly7j4j0QapP77yxKXVzDdLDgmV/yuLNurIbLB8WEFQkD8P2anX4XnV3Kn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bH5UCbKB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bH5UCbKB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB33C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 18:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783793913;
	bh=NtiTiluONlc1YkRnl6NDqTZQ2b2v4tZ/9UggGm/OPxg=;
	h=To:Subject:From:Date:From;
	b=bH5UCbKBFMnkwN/i1fBjIENWzBboP6bDx8FlJiClcJPH3GPnqSQKPQp3umFyUiEmX
	 ylFtfQFznhhzwQH+yjjvztS++Cwtb8g814ia1ma6Hu9x+IUKJosBqAwydQZ49L8xzN
	 5Cb9F3c7H58cZgczNTpLh8+tch+pQ1HJtvw6ZforEBhS2QQxd2Fx2l41m89TCfi0Iw
	 S9I54wWhS+iwsrMplydNATb9wt4K5BP8K2HuU+xWZeIHWNbrH1dXciPaPo/PAbn0ob
	 roye6taXDZQvrg8cWblqimz3PBP05y7abQgCe6wuUeKmGe6Xb6Unla5KnLYo9xqjok
	 4qeAhh406F6DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4FFC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 18:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178379391368.18658.3183024640387999971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c1e14afdca8b78e3e93d788317dfa45bc3ea5351cec0ebc1edf257d850a0582
Date: Sat, 11 Jul 2026 18:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783793913
