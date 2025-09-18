Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269D43016E7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758187794; cv=none; b=pb7t6UGc/KU4bpY7nVo1krFtk4zOXwNzuOYf0eDTMJMeyLTqaliqBcPSiqt2L+ObZJYfyjB0rrYA+q/Jm+u6T3iCDtvYO6R8WZDgdDib/7NY7BDjIxtUKLyWFpM6h3saoCqn2sPxfAYPfiDUCNLEsYWTtP2PwUW9nnyokcUeak8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758187794; c=relaxed/simple;
	bh=0LJ4RXE0eoPkOy++B4QQMSpzMedDgutpTlt2EqZnBeg=;
	h=To:Subject:From:Message-Id:Date; b=hRWdGm9GR5upmQbbY3eg4T1UusdkLb1mRuZhAfE1dnuxg9hqhY+3bc1k2C9g0mkIEzkkeQhETCLqOKN+4a5qTdSlnbjviVgm3KU+nefdEQtU1OkxgjKTqGn1JTAo91YL8HCiwl9FDwS2xK0AqbdRUTF01Vi9vssygernfS7G31Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=damZJnVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="damZJnVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A863BC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758187793;
	bh=0LJ4RXE0eoPkOy++B4QQMSpzMedDgutpTlt2EqZnBeg=;
	h=To:Subject:From:Date:From;
	b=damZJnVGOabPGJhE7RKby7wws/zDIzm9SLDm1iUG73+V8aVSU+VBrEr4tKg9TnnSb
	 vSdUtpaVjPwJn1KC6505X3Cp2oPSPvR9VuFtRTxJb5zLQq/+QVPC3qwf8hntEAFbRM
	 r4uZCaVoMzWzjRPMZairPyzHb2sIxeUB+1Y35/1wY6xU87L0kpB/NdnWhms5Xg3fpT
	 PGC6H+modpJWwdxaR2iIA+HnNjnzFKSr3TvUhLfYHsu4I3CU+RrJA1/Y2znh+SXw87
	 NFhBRYJZHCt80zbSV3TAN7VWgRiLhjts8KVUtTfAI8fLapJnY4m1MiY13ylaDnipde
	 f90qaVwmNQNEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90133CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175818779358.7883.449511221190068199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20d9e380e2d4b2d335050f2fa2aecf09ebbd648634f0a63bb79ef9d494f503cc
Date: Thu, 18 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758187793
