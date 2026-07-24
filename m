Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5851C2EEE8C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784926234; cv=none; b=VJcv9g7J4/s/wM68661iV2vhswhvYQqy6nX4tHXz5WQH4C2+mhVVcezD8kyh+3Rt6GBDHBGl5KtrpskknO1Wxagvvdgpjzi6dGZZPBG+KpjC/uQ57/yaC0mWNO2QfF7+op78Ov0LKE4yy7XcH4lCDWBxAOuIrMxEdXmzw+7Rbqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784926234; c=relaxed/simple;
	bh=7Cf+0IvpD2Jvx+OA3cWqWF1afd7oVDZLCWtza47Kv+s=;
	h=To:Subject:From:Message-Id:Date; b=TXe28GfP2HwLSqvJsKGg7PgtuW+TwtreNOLD/7NQw2EZw34+sx0z4eHYCKSL5psmSTCTY0FMJM+WXO3m1giaAd2ga5BdhBvpewAQsXTi/FxRUiab7M1MWXqP3lEqGoOuYwgiBpTR1LfZgr+R5kKnB/qTj7bF2a68U3/yfyKTwHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B69EE6ON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B69EE6ON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07A0C2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784926233;
	bh=7Cf+0IvpD2Jvx+OA3cWqWF1afd7oVDZLCWtza47Kv+s=;
	h=To:Subject:From:Date:From;
	b=B69EE6ONkBg+etjnVVy/P0Rk31MrTAi6GICro3ues3KfOrks8c8yn1BS8Yvm4dkl9
	 mOqIEG3tQPynFLZF/xSQLvDv2oqkvwEjEmRZW5deMU3t6NtFWwQAE88T8UGl4Uw2Xm
	 FPKcjaAS5oh7D7hQWNAZYCeau+mciJPrdqnyTS9cCh5l2mqOG+yjAcNSvgUTU6ZT83
	 ORCq2U8/ggWpPZ+TGVKrV/hTQ3qemj9AbpE0cWUxW7bG7JuqB44YvM4AItIBeO8Upq
	 eoYLv2SkudEidWx402TXAziON/W3PncSHCyF0V9JDNedgbVBRhC+a2qERphjtzKi/B
	 d0FyUB62Z5utw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A872DC531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178492623368.5217.12283139297690909571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f968d261100bd74c365ddded8555226bb7d773b145a505cbb34f63907eb130a
Date: Fri, 24 Jul 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784926233
