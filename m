Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB73495539
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790589634; cv=none; b=YxongcGXHz38sb45PEGyCcpOlBo3sWitoUTtmhzrGLSyFYLjSGcji2Rv/Ii3QuV/QZ94j36OdYMqRhDswCVCAyDf4eOTXItX+MpkVuO5x8V21CJg9otO8pVS1n042UqebvmEdeLWs9FvSqPI8t0oOM8VE/s7NnuHUtZMv4XHtIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790589634; c=relaxed/simple;
	bh=ZnkO+ORKZbFUtOJc6rdliHe7WJk6/PzUbse5/IusSkY=;
	h=To:Subject:From:Message-Id:Date; b=MJstL2zZVrxWEay6UgtE2BbPfjDoUi7PZH1By/HyrozTr0GQ6dGR54IHZg3DrC6Yn5v0SE6sNzN5MDwY3b2mVwHtAU21xC78n8R08xAwKbFjP8vZtOioSgrNZMkT7HBk+ToTJMZV2S7TeAYQEuLY4IAA1n/eOxlf5c+vlXtmpGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RAUqJe1c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RAUqJe1c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BF7C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790589633;
	bh=ZnkO+ORKZbFUtOJc6rdliHe7WJk6/PzUbse5/IusSkY=;
	h=To:Subject:From:Date:From;
	b=RAUqJe1cdGdl67uxTVpTfSz4k7kPSrhuVDTWemfaQjIirGLPFHWKyPDuaojSNojL/
	 lc3IHToaYPkIiB38s5FO3Ma1jvc5HDghus4GdprM62sQc5njuA3QCMwixUNTXQOMub
	 siQC2F0avu/jmEyMddQHcXmRyijZqLNy0zFSp6nk0KbSwpEHpGZ3sp3XXcUr5gSXnq
	 GKFvAjcJ0LzbnV4zFwGb1HAi5nrI9GmbyfI7aftFAX1DW5TkzWd/GxebR5mSIRGuuU
	 eCFv3IVyuYnX/hIZ8lOE7CvPNRYGEfxGXEGDkhi1hScMPopGEInW849SU35d1/l67I
	 gQcH82EbOOu0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF97C9833F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179058963370.31385.15691332941260282448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82836d14f6f7a1600e0347956ac9339002e81938e655b561854dc5212626f33c
Date: Mon, 28 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790589633
