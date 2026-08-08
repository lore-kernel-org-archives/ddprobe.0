Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB3D3E2767
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786192234; cv=none; b=omW8wmYca+Fy0BuWjevITSHzhN0lko/wBviJNRQsGFGQc66YGrh7Xfdg7NIRRRHDNM+zsb5SDUJs9Eysa4Y8w1EhXsklVrBpiTSp5nGpdMe6+D1wCuAqUEAI0eFRAz4aO9OXHe+R4onr17xyLn2hhZQ6kamHQXNsrynJdt88RUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786192234; c=relaxed/simple;
	bh=RjmCk3ooaILRkSFyKE9pe+yjerYHi/Iy0wAAbkjPllM=;
	h=To:Subject:From:Message-Id:Date; b=fiOF4waJQ8PGgFq0V3l1+8aNvLqH3M0XEszC7rl8lGPyKAKqLM/Is0l21GpDvo0SaWXSibtk9V176vnrToV7mJCEGEKffekf0qM1VgiDIAzYpFyuB+UVO6AC8DOdNvQW2Drvd4+R2eUS9b6Zd7b+GU11hz5YJHb6IOhVjhBkjjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSDY8Ubn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSDY8Ubn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2036C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786192233;
	bh=RjmCk3ooaILRkSFyKE9pe+yjerYHi/Iy0wAAbkjPllM=;
	h=To:Subject:From:Date:From;
	b=kSDY8Ubn/eXVtmDye8YxtKQsnaig8I8zhN66yS8z6HY/8WMC5EUD1TuMsIP6+a8UD
	 W7Lgqn/bfzo4/mXOFXzxh1LzuWXorg2WRZRXQ5fdZTHK2KehIK2IvJqwLdPgaqdSMx
	 Kai0YMyojZzBGUXG5UOHMKR69eS9xlCjMWvv+3ApYTYg+9sWQ/vBRxIrW/ib/KNN/S
	 iYjp1v5H77BA0qJv43irCQV016dHk2TCfB+sro3S7z83T2+D+sm0AaKvodw5AnwGBY
	 1JzRMTxYKjB/Yro2jpx6NJvQdwQ0X+Lbz8GAP/gY41Num/vnAohQOjlwJOi/gCeKeR
	 GHrdbAkSGsrew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA57C5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178619223370.24337.16263335098672338014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baebe628a9ef1b064655db75fa78e769da9b2dd9e1547a00a2ac51a5c0f3a172
Date: Sat, 08 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786192233
