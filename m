Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC6A325772
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705657697; cv=none; b=V00MwtyPsWX8f9gkGpMCqhwFc0RGg07P0v/PmyD1pZ3oHwFpg9B+chtz7gnn09ibYkyHoRwjUHDPtWX2vXF50k39KRh7Ij4YA5T0JqIosGw0JEIc4STTJIENgBUQYLPHmhfKGlx3F8lt/7n0EfmECc2NBEaOboJz6fg8Bk3BrNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705657697; c=relaxed/simple;
	bh=3nHaM4LYXdF8nqymW9Jj0nSguxgQVfAexOqKW5bV2+A=;
	h=To:Subject:From:Message-Id:Date; b=sObeTbaSU6BWkWyzzQ8NhUGcsbdqocCPFGH6sBJG6+AbFIa79uDS5Ot/jayVgm3Og356GVQnNzIQ+PGmZX1FLZgnWoDgBvHSmMvdnEQBFCLTps/NcniTMTkdV/7pBTSFiuRnhlhAh9B+8xxlIOWUfKLHvcC0Hr07W58cfTKTiaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQTf8MGL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQTf8MGL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ABA0C433C7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705657696;
	bh=3nHaM4LYXdF8nqymW9Jj0nSguxgQVfAexOqKW5bV2+A=;
	h=To:Subject:From:Date:From;
	b=qQTf8MGL3wPRDJhe0AM7ujMVBI7SHRkJUs9/wBQSZT9mN8AQyIhY+ggOsfLaKkdvG
	 qzgUgmdUUZXb42QhCzNiYBoT/89ayaRH7yzgNW5d6Sn1ASgIKZxAjjXYZUsHLFwYAx
	 Pll/2OfvgeqsEconf3K5G1ZV0IQgoNbreD5/AhU5h8fePrrhucYMu4Q9SasUXk/Ae/
	 4WseHGjB9Y2ElmKda55fjs0cyQdnJniu20BScBybKrvGe5C9DSbSQtH6Llz8MiwppU
	 VR6vSiZtyIYlaV4GVUb1miEyzJee2EyltlpqIiMMThAgfnI0c2GYe6Dw+MNik9I6xH
	 vENQPz3iZqlMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64295C47DB7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170565769640.9298.3667848584838402681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9056c9c4d8dd81c6768253b65328f4f26e607dece243fbd2f048ed37d84b0622
Date: Fri, 19 Jan 2024 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705657696
