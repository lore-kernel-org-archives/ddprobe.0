Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F7D3C5DB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789626634; cv=none; b=I9rHiToGx0WdXVAgFQkOE0uFSs+nLJmKkkYwT8Dqmm64jkScbB+eR5ZDfn4rSMGENVKXSPe02rMMda01LJx5xxh9QEsmmwQxwpfrUNQPpnNnqY9lKOUH64qSoYWlRgzr+5IZqreevbp784hY6zgGozcW3KEiM7zwcvMquEKvrnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789626634; c=relaxed/simple;
	bh=UIQ+ykuzWLgjQLC0vEvTr5BKG3we7Fz0HK4w+9DHxiM=;
	h=To:Subject:From:Message-Id:Date; b=GIf7qkKsAtBMe7H3x1hGsJC7UcOvsHppGg6/DaxFO25RsJRIq/0BZDz2CLulhgeiy2Ri8Kac5pDizf1Omw2NhzmIAA9QvTMkDzMAe4VBKUCFyEF+LV5kbi9O+CNA8BhqgN0Bhfgd2GEqxbLinvRE5vMMEoR6AOPZBpDdYyRjtFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YUPdeneR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YUPdeneR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EF7C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789626633;
	bh=UIQ+ykuzWLgjQLC0vEvTr5BKG3we7Fz0HK4w+9DHxiM=;
	h=To:Subject:From:Date:From;
	b=YUPdeneRddZVQThV++68aA8YgzRyb+SshEM6tZ8A5lDka9rUDbATcUQZLlHOy40Ar
	 eGTlRbGJaDGLZHQQRG+N2JNhGqCoMbw2VPztpXuoCnaiKt6qMwjCZI7LEdiRRpgXmv
	 oNIhrWd6tbyVexq0AGkR71i+j6OutG4KeMrkOp9xTJStXb6OGU47Oz/RHtmTuKelRS
	 PNaJfAT7BNEqXJdH9skzJQWNyydo99aJ0uQwdsTViy9qWpkMLBvBp2NmwEc95pG5ff
	 KXYOdzpNU2NBs7mhSLsP2XRMm5BrPQDlSCpz5OU7x4cfY/b0sPjTxmCvMT/BFp8YGf
	 muAQXUpnjJzzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B201FC982CD
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178962663372.17484.9625406006445187563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 924a2ae6f84474b23d4b2ff5a2c52727fe23adad45bcf8f08123873abeeeb43d
Date: Thu, 17 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789626633
