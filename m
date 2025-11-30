Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9DD023D2B2
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 08:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764490973; cv=none; b=FFL3RLDx3xF3bdn2yu3sLMMO1x/rEiu34yYcywnXFKvpwJrutbJ0YOn6ev+S+FAm/sEd/XaB8WKpxx9TaZF9bX+W9Wf371SSUJ2IMurMBQlI9cMHJGZSc2oXnetQWcHnMzjkrFHiLMT89fIjBCRtJvOjRFwl6F28POv0eaEdPPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764490973; c=relaxed/simple;
	bh=lrwtYvJtcv2DzwTXoYIdi35xpAWUrT2OjxASzRINbrM=;
	h=To:Subject:From:Message-Id:Date; b=bX+PsZQ1Xd2GTIPd5JFD6EZZdmTwWfMBdnD14CHRYB/FMdby1J59EKRxJGIFRiIL8UWwHMtj55LCeF0aUOqic0+tLysqwK/uoYBTV4I2dVe4Qfh0EpSTmKd3ZlZwVfaahHbiBFg+o7f/cCMek5u1JtsdmtArPE4abt5ItR4RteE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jT5chCBF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jT5chCBF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FE4C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 08:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764490973;
	bh=lrwtYvJtcv2DzwTXoYIdi35xpAWUrT2OjxASzRINbrM=;
	h=To:Subject:From:Date:From;
	b=jT5chCBFQS1QWSn+yrfinC2e9Mw0JL0+nIZHVZ0rzIy6VVLEVyVzlerpiZebfjeVT
	 lQvZEeQcBq+Ke/TSnlgFEWkfXXkSrsWiN4wvMtGgE/reN/+sz8M7ie9dTzOK89tS+C
	 9ywGc6d4gt21NvdHuXkltrHa8yk5cDmeTAyAZ7Fy1isQOvC041Z1Esy0pFzJguVZsX
	 74Us3hrwCePNJpjZBR1IHKsF1ouV6xWBhcuahQkVJidERm32IFuHwZIQX+n0aN+c0I
	 kcPI0miZtqtbv596HiHr+cUp/juVG+QdiwiWJeflrLGUTuZUnDx4XDH28TFkHcdFAH
	 rtRdA+PB2zOog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9270BCFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 08:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176449097359.1957.13393848826562124010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b02cf692ec119de739348311528307eefcefb3dfa64d10ab50ddf1f2dd6b1c6
Date: Sun, 30 Nov 2025 08:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764490973
