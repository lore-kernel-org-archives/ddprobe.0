Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FE9487B0
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722594354; cv=none; b=iQPyFiLhUhCfl9plKWaYSAYKlhbYGfI22gVZ6I8/rcpYC2CwY3AsJS4kXUxPgJpjDlzk3thTkseLBsZKrvU/8vtN6MnNOERf6BBN9WMwmzP0uXjaTWPs4kDR5SjMHmYl2VCbh4DkpF2hwZqz7Tb9FWRCPQxuCuamlOGXSd7X4Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722594354; c=relaxed/simple;
	bh=f5kO3aFSqCdYIfgD6m2p6FyKkpas4JsKTEqfftdFeqU=;
	h=To:Subject:From:Message-Id:Date; b=LctUrcHCixtiVIgMas/BqZNoFtySzM5/S63BgZcPvSXyMup9Y2i8eNcpGv6FUKLCoDv/YPV5PJDeDREGgoM7cFVaMGciE0/micZRA7ZP6uOF+dt7BrXc5HQnbE5QdS3BUBlud86Ep3EpEPufFaT2DEXtRsqUWjxrVxCQzvV8+WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjFuI36K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjFuI36K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF33C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722594353;
	bh=f5kO3aFSqCdYIfgD6m2p6FyKkpas4JsKTEqfftdFeqU=;
	h=To:Subject:From:Date:From;
	b=cjFuI36KOeZl+6ef0GHWmSiyF7igOBBHjjPMrP9WRO02lQuKIu7exjjk2JFtMWBUY
	 mo2OGLewPjbf2Zl5uS0P+jzVcxbBIgbPCsYu5del40/lhv2qfyk99hi8Q3tYxCHdrb
	 ade7r1JNpC1xeL43NT8T8wB7Otwx59rz1jwvRP1dGtrHhWkWGKRqWsd6i6MrDADca4
	 PDmT2HHjbFFm4yPtUFAFKGNt13SIOMwGOu9aZVdIhRr4BbbZRrS2BjJ7T/BRgStFvb
	 u6x/AqshSNzM4ZptDM2+yNtrEe5EIwTl2GBCRKUddXVTPZwGbPEolUqdSvsM+356zH
	 458iRIhl/UJbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D39DC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172259435363.7510.12064435064648396562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1966e9f296f1b1fdde100d76e12cac96b54cd54c5cae3326aee4955be8fb2ea5
Date: Fri, 02 Aug 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722594353
