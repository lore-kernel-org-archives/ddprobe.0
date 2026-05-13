Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CE441B340
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 12:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778675434; cv=none; b=O7am8fCm8Cx2VlRInvJktH72JoxDGzx6mZXei9AzvHca77RRaeqM24p5u2hoZsuR27oLxLk1YUwdcURSc6FqHz9vvugbNnfKJ1yzNk2e7rozE6x8aTnfqsjluHni1+qxxm+MAwXWaYFJDmWi+b0KE4t5e13SFv7yPRcStP0RSe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778675434; c=relaxed/simple;
	bh=pMI7KMH2R3vcL089SRZ+6658MX4ZswpVXzYjNgnqMpA=;
	h=To:Subject:From:Message-Id:Date; b=MFqKPozf8NsqORquKGYnqfo9Md2GKgmZ20QT3VDVaEhwm7Sa4rA/BN5yce6rpT2z4mfxnejtSV9Hbf0aPv8sDdHvXBfztvwOifexpq3wqBVJz0pdYFRf8zcXgmJmDqOtM3cUTSkP22wsbSuYtw1vsZUWNiyS5W/TqlGhS87F6HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UAOV+vMx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAOV+vMx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B934FC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778675433;
	bh=pMI7KMH2R3vcL089SRZ+6658MX4ZswpVXzYjNgnqMpA=;
	h=To:Subject:From:Date:From;
	b=UAOV+vMxUo3F5xdMiFqIkdXPUByfq/R7Byiv/mQq0jCoH90k07JFQVMJ5zb3k6GR/
	 iXUBMQ2atv4Xbd7fWfy+ZwZeqJUxxTRseVJmlsQ182gUP52nqU+pDbo6DMWCPFBh6u
	 TSRobtO1qzjrJva1RujjLnWb/9WHbROtxcjImhnNKJPRBV2DwyzVk7UjS/jtxHUZ0A
	 0ekZ5vm78IlyHBR6CzbKeMXZ2Jx8gZ+l5g0fOoy3oWpZtQWkN5cwky7EveQzvtPAkY
	 JwUxGetrBLcj2JkF7AI5BQiCJc8RRXuz+lENVgPJT4Q8PkkG/FHhQJjFlBBl6yZgPV
	 qBjS58L1F/rpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4CACD4851
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177867543368.22493.15078216280500236250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9d403979eac8397fb1d7bad4f5dd020737a18e7c6a4f852614be531eb16e007
Date: Wed, 13 May 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778675433
