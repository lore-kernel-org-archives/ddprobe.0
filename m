Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACAB1DE4EC
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747307395; cv=none; b=TwsAx23Uiu6Rl0l5KKW2wY/FcHeSkEI7c2vp8arTUflFtJc90sAYzgjGLISILNZa3neucdl3G6Cx0Nd5SKztpf8LPRjTES+U3RiJ2qq7X9L+q1mcRdE8LonxOr/mFihkpaDjdzSXkzoLHIStgWcXRhQoEQwYuI6tl4TCuaUHKls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747307395; c=relaxed/simple;
	bh=BMKAr5RgthUSjm0x28Gex3WJCkYP5r7pA8HUfS3wSZ4=;
	h=To:Subject:From:Message-Id:Date; b=fqpbM1kKURrfbFVsy+GiElGPmtT9wun7PZGl52fKrQNSdJJ7zm6KFB5Br6QxFI8ayYCOL6WlfzOEk9omwM9FB4vCR/PA5iJ0feDYMfByTpJ7eGXnYC0bai51lWoV73lnhCd6OmP6qO9+ZB/GD7qe4rdKQKZfyhLlWt3MmoxPSG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsIK52EJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsIK52EJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B5EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747307393;
	bh=BMKAr5RgthUSjm0x28Gex3WJCkYP5r7pA8HUfS3wSZ4=;
	h=To:Subject:From:Date:From;
	b=nsIK52EJurlCYiXU0h6ZreKK3lMzkzPn4xIEiZiihQehaqMN3rBAQWPYG4+F+C6sH
	 EzBt5RKbGZglgW7qoOHqnrTxEKKe/MGGY1adkuH2l9yx8sU1fSoS9NWwflEpb/uVC1
	 rOZqfDfxzHHzNEmFJ/icDa/6c3pNCb/c20WhJSQMlKZIUQR8gMHKFv18HGQylbY072
	 pZGtBI9ugSE51FRLMAs0IrQUrGOE3cggm4GgPWSx35561c477Aaiwq0N9UrIICDh9J
	 YTrnLxctYRqZudNmwet6QQU20NK1m5uBNULZaWQth+qCWMuCtnIaqaZBu8Df9YFkBZ
	 yZTp++BLL9j5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912C1C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174730739358.978.3994190027761716789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6df07608dd28da7385ae674a4b528589f5831f2205d363e2ae2ffa48c9b4fd75
Date: Thu, 15 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747307393
