Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBD4557861
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705688897; cv=none; b=kg1qWlc6APLv9rtqaSffs970BLzTL55uRg4EYO2NkE60e8vX8H1hdmihMPg3O36glRcJZjl9FmG58lV8vCfpeYP9MQYCXc82pYrom447pgXeVn9Nj2utYa1RfIdZfeE4/LOqf2up2u84dRrVoaMXll/pJQOYC8qsyboJYO5nFec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705688897; c=relaxed/simple;
	bh=818FSWYQcaOhwscQ1P5+5x3DPLhJBCM/+nWxZIQFlxY=;
	h=To:Subject:From:Message-Id:Date; b=Nu7mDMyQQcN9JcQomL7RkAqdBPcMM6U820mTpkELLlxlRhG9CdQDnVWJaoOErpx5L5YfqQamdV9JV7dyDLsar88NpYGH3kzkfgVCvm3skKyy+44/g09y5f90Zeb3o8vSmo42GZHJcLtd9Ol14HgkcUhP3hwQNPifIWngSSKodJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/cKtCem; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/cKtCem"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72395C433F1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705688896;
	bh=818FSWYQcaOhwscQ1P5+5x3DPLhJBCM/+nWxZIQFlxY=;
	h=To:Subject:From:Date:From;
	b=s/cKtCemgFlMClu54pFNSj7l4yLolHuiYA/CdUVBi4ivDbhHh3l2WWFCe7rMj8aOh
	 lSPpDEeyjHVvojX7GL3S/FAAcji2f09XPPKtW5cs6+Fma9u5ZCKT+kbVGR3D5I3OO0
	 GZ+LkuGZUFuc1yag0kXxGlA1WeVp75rcxdlS1KQe3sIGgXmq4JMCUK3L10zPB52hNC
	 gQuynRceYl9Z+qfOZnvqd+6QU6tcNcfD+Z8dTTn/M/rRKt8T1PTBQHl2fMIIRc0kqv
	 WMleMMhikpcP9LJyeWBy9mPpXhth9FwNsL8412bolmFqQZBkKcXmgsXRL0A9xe/aid
	 DLQ3jXpFwoZwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AFCCC4725D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170568889636.7718.5894125444144056817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb52aae28cc634d47d3dd929c82705e9f2dfec5e270fe5b8912f2c6714d504de
Date: Fri, 19 Jan 2024 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705688896
