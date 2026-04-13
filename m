Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4BA3B6BF4
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 10:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776076054; cv=none; b=GtEDlrT/j139LZZCsFbOTPG6DEVUin66L5xyc657r7tMBRxOisKh/rETVv/K7EQqb4J1vF7sBXxp+eYnL4NFzIYx17aT3Ofv9qpTtK9ODudVupu/AmZVbegScAennfKxhv45uFAX9DV4191MbOA/VzbAiU3WEGlv3BfeuXdxfw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776076054; c=relaxed/simple;
	bh=SY62MhS/nhSODopM0zuYHbnrEzypWSYykHfIa9t0iM0=;
	h=To:Subject:From:Message-Id:Date; b=FgBFthjjPLKAY0uUZ9s4LEYK4IUj22BbcABtFeKJvEfFRV5XEqMHDpYAXFKrH7gddijzh+nXzPNjIbkeQhKepCti7tDBtAYHpU7IYG6/ODxh9ed296p4PN1/u2/05IDoJM+pTvefHjX7hrqSEv2hFtl3UfgNM2gtpEdylakvLk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=obkHp5yY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="obkHp5yY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB75FC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776076053;
	bh=SY62MhS/nhSODopM0zuYHbnrEzypWSYykHfIa9t0iM0=;
	h=To:Subject:From:Date:From;
	b=obkHp5yYBWe5yQPu94KtcQ3SKchXsNDvtJe+1fLXBZPWBCsOzorr0CT9Cqu29QUYk
	 i8s8bqauUpZnoPQTm20krA4afbOoKlt4CCrPmWXVdc5MHH5O6wY8U5e6vOFuZnE58o
	 6DF7h/64rQdWQuhFqY1rqV+ucEx71ytoaFMla/bmwWYPS8ScxgzkacHwTluSS/dowI
	 yXkvRqBW6XZYFLmB2u0fXOcycPsNSU7UWS4Qw4T0ZIJOcD604yJV69IGjXKn/5E+8l
	 iZ9sBcfR0U2OpVUYf3qK1IZVH+Z7GXIsbhxkFly4NLdFLhmI8j0SDsOSHTRg2l5BiT
	 AaZZhY1lcUqnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E85EBFD26
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177607605368.16529.6049989019563838182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b1a660faf5458a4e53607d3cb59ce787c4d176831bfcc6e22027572a53dbbab
Date: Mon, 13 Apr 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776076053
