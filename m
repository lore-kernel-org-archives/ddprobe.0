Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D78428151C
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770488034; cv=none; b=CfmlFWxQgFnjnDT742ZQxMwpX8klcgBhUXwelvEOW7QUmb/2HFOfQsosqHFun7AXxBzGZkevKfgYzh2l4w3p309dskr+8ITBrvgZNPBuRtwCbj6gHJRZNjMhmgruGTWyqwQUuw/4hltIXzYIuDcLIoBvMn8ai9W483TcqiH1jeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770488034; c=relaxed/simple;
	bh=NtNwZf4Z+FKfjX4L2mNaHYXvR4/QLuh/OnlYVvnmJs4=;
	h=To:Subject:From:Message-Id:Date; b=CyjAAR040q+Fn2xq0n1L+OyFQZikubuuAM5ek3rhPGttoiDV6CmrT+NHLASKG7znvwwbzX3AROuHXeHW/aiGbD6tVQyFl2eT9GYtiLuXCBmH34u6pVdrErcKv3SlI5GH7jNrVwkzRSGl54Er1InwPLZ6PH0oZ8+0qzjRVkQKYaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMwug2cm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMwug2cm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FBCC16AAE
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770488033;
	bh=NtNwZf4Z+FKfjX4L2mNaHYXvR4/QLuh/OnlYVvnmJs4=;
	h=To:Subject:From:Date:From;
	b=gMwug2cm/JvtjS5j2ap1RKnDdCXvDd2MdicH09QfWSGoDWtMWQToR1AaBTfA0aHrh
	 wVhCakkjMjkPd7MfMhwbYRhn+oSrbjlqfVhjlrWdVfwJAlrgMP12vyAgfc5dV8nZ/F
	 1JBmgU+4Z/6PHUwNHawgrMGIbzKA34VViMR+dGrea98TeMwaCaLEL8ZX+/kVb1cHiZ
	 dV1jYorM85bCVTvK1PR0TLM0bKKLpcfsapBQ4V47VTvhK0Hc/hFxDk8zwzB7q5Do35
	 onZdYiqMHw1sBkL04UYdLg4+cfIoz6I6/ABd1J6Wv1KGYml6tN0ondnYUULOY+jZNZ
	 UraeY+Ncq4Yww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940FCEE0AEE
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177048803359.11058.17812783131561239946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ef2b966d919d067415e7f87fc6868997b2363b0c83a0a9e2c8a70582057f7c
Date: Sat, 07 Feb 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770488033
