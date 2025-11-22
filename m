Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1528B524F
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 12:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763814714; cv=none; b=oj/88zuoR7FLsDRuRQ3wywXF3q2KdO0nT5CpEuJKO4pyav8omZst+c5tgXJ57wrT40fwbWNRMPrkJ2OKT3JBnAfc1vwSYiiGCMUxBRIxd4VH16Nwkhyb0V/2/SPBC/dRO9s6uaDPLNIxFesEgNzwEzXOz3PjSZqhwdFnz+kvVvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763814714; c=relaxed/simple;
	bh=aHX3GgvQPgwOwz426xkA0oSmFnjRXTxvgZxw+Y9OpUk=;
	h=To:Subject:From:Message-Id:Date; b=aYAEUqk3u0pI2gMUyyNjvxBOJ1owjzS7LxAomuBEP59OVWQ/Is56czVW7gztLG3PSc0RhhaoLJkHJSrBDOOztEqsbyq/nLTtdQjqyjIGjRP8f35+8XHu904+ofrJrYz4qfL+Is967VLEP9fAx6FbO5M2BuSfiKy3uCNY13xewAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1QBsIPb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1QBsIPb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2172C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 12:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763814713;
	bh=aHX3GgvQPgwOwz426xkA0oSmFnjRXTxvgZxw+Y9OpUk=;
	h=To:Subject:From:Date:From;
	b=c1QBsIPb83Vbv3ypnCvxuzAH2Khz4CR4HHah+ytqSOLRCjRjr7Tjih3MSXshWhLEv
	 s/Oi1ao75EEHpuN+WUJ3W5LWTrWhLDoQyvQDzG/8nTij9nuGEgJc/2ywzPIwv1sdzJ
	 hU3g8UHP1vQOSa24jJZ8zFiyuhX2miURTPn+p7coor3FyPxF+IyaeNTsA5dEqGzmOi
	 9x/MpGoNrkR5ZQXdOLo/C+6H3zOgxKiot7WZdD+HZS6HurBiTmr3rBTPP70sgD+BZm
	 kCWIV5TPiExxv/BLm7kNbXjWxfi1JyoprGcNbOA7Xsq1qOfdujwZN/O/lqAvrv5SAa
	 ecFWvGEHO3wrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A59CFC531
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 12:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176381471358.4140.12596773353163083772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7365784851cac3e2bed48d71a99a0e2734e02897c41a5128f47282e46ad88af9
Date: Sat, 22 Nov 2025 12:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763814713
