Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC163101B7
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 14:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765807374; cv=none; b=CLZRZVaf0tlfTCGOt2n9c0mOS2AhlOBMyEwF3+SMvuN9hZAgm8d8Ti7SPiPVM/TTwlJpIY7GmFcK5YMv9sqV2ukSyahaXCLJl2Y7vPbNFHVaOjKcSk8N80kaA5lat/+WVPBOGRznOtpLiYeNnA0DxsAPgoQ2IOQoabrUx3iXoNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765807374; c=relaxed/simple;
	bh=AXWvsnPSasPX+qr/5PXkzBC08ZMMgqOBB5JZIEW5Uq4=;
	h=To:Subject:From:Message-Id:Date; b=oXnCt+FHUvJnYnwjG5mcQjLZHMp21hztD+0AG84UoCfkU9EfGedZ4y7te8FDn8k3huKrEOcFO2AgXLz3lyYGI21F5UlCvT+s4QQPkQ+88ivxg74wGO2e8GpzqugmqDvZK3Dd3qEvaHhn919Kj16+NyU7yQJ6fCoepTJVETm3De4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lTXg+HvN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTXg+HvN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF191C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 14:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765807373;
	bh=AXWvsnPSasPX+qr/5PXkzBC08ZMMgqOBB5JZIEW5Uq4=;
	h=To:Subject:From:Date:From;
	b=lTXg+HvN1+agg7cIE/ICZQze1S4RQmp3tcCdrjhdURNojZWUDYNeBlxXmCSWR+HK0
	 IogcTeyznekmu6uSHHN0iEVgAZSNbg21XFGdLAXtea/w0OIlagj5F25KwKDhhEafeH
	 KNcAUCQ/1ERsfjljuuE4Aqi9P+EJ3rDCSdYm1fVuZtv1RVWGcTBAvy3zIs6p5j2s10
	 TY/79UolYz1utmj8N+lTTd6Pp099zuoXKKBkEy/j4txv/1hAMuIdptdhCCrEu+IY3p
	 mQw5F5JDPDMV6g95dnqFTPYY+6ZWYD1sdHA8MOhJStGSRJki2bE4nYswQUepA6Owz4
	 2rAk+cCT42pCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D921D5B16C
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 14:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176580737363.3776.12247818658176643448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 645246e8cf25a59347898bd5229bc2d30eb0e9b5328730345961a2f9bf5c1334
Date: Mon, 15 Dec 2025 14:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765807373
