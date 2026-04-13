Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1D92E2840
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 04:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776053854; cv=none; b=kLSHh6RBGLCRWFEKZpmFn9QOuAwHand/4/SI6+8YZGghcIK5Yl9YFTFUTBGXwnxzYlyX3TQaNOlmqDFETlRMKReMO+Wz6OIyP3WOkw5nnA+TtSCwwrDdNn95W/ez2bpzN+7mLawuSXK4ss5/nzz+vdXSSDl6P6yKRR7/XekogLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776053854; c=relaxed/simple;
	bh=asMgKGFJuRHZLMrFl6mi84QEC8ajS0dRKwKrZabBlbU=;
	h=To:Subject:From:Message-Id:Date; b=XqYXcrq198nlUBRJrS6me22V9Zu8Z2Bd9QXxp2BwYZCwF4KOXDYLlDtdix02NBLNaeUe7rKtUbq8psLUxFEZftn61Jqf2IGyNhqiZ8XxaSiew1G2Bd092YR5o0CFx/GU03UMrqUpcMeyf97IcfAJevoPoXHq/rLRRviI/GZPh2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHqmLh/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHqmLh/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE24C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776053853;
	bh=asMgKGFJuRHZLMrFl6mi84QEC8ajS0dRKwKrZabBlbU=;
	h=To:Subject:From:Date:From;
	b=RHqmLh/b7EnaxwWJttxdHCZ6M+1NjtcSFGad1ENbWYa1cCr3C9igVqmaildG+YROT
	 wfeAThTdej110zlArYLu7sH7hasooNMinPzdQTnVFkveSy4EqGvdHSDMUXeQ6VAQwO
	 G6e2HZf4Vmop4MliFYyvdRLRYcFiU9oKRztCcvbZuxw9ELKYt6dwmCjxk9pK2RZiO4
	 fGnhWPXbC4kqUglrsK5ST6w1qQk7D+kG++DwBCt+3kLLHdgzwQI1OWpBSQLgyd1n30
	 OmSFh7gqXiRAm+P+EWuwrZmSTodmZH7WvtaNeupblDXwcAzDHp6aKChEsaUcluiOhG
	 eCWUOvzWtMLRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D61E93817
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177605385368.4716.874287747550701968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2287a10621c4dd3ba7311a29486914f6cca264805c40fdd88596ad3670dd2a57
Date: Mon, 13 Apr 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776053853
