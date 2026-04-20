Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E6D37B400
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776711454; cv=none; b=tSEUw8lcUSdNYeadXZI5OdR9F7xuVJuB3tU7WKiNhH76rrEWSJyp8/e06/nTQxnMQJpkx2uwG8L4W3c+2Kt/8PSC8OwCoXodeD0yyFyVj/7C/5FgzAqP2W2FEeNqsQ+swrahZ4InHXyBxGrZlfRT+ZO/Yl2ORFWFpTWk6C3RcD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776711454; c=relaxed/simple;
	bh=kVLvoCsGd8s1tQlmmifC7egdKYUWNLU2QdrCgiIj+ew=;
	h=To:Subject:From:Message-Id:Date; b=CKbP3qtFLN0AUtdFjT5o/FC1O6BeyWUh8VHFC1E1qR0V/eMdXr3imsMY/e9wxwqRCCN5YV1rUsEvRo2W2baCY6/GljRcOptfzKeOMSvZ0hQ7GYf+roJr6FouK4hYRF3SaKjThSQnS/EKdFLc0azVm/tDJvgWmYlYrqR1YQUGo5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sj65HkHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sj65HkHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF01BC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776711453;
	bh=kVLvoCsGd8s1tQlmmifC7egdKYUWNLU2QdrCgiIj+ew=;
	h=To:Subject:From:Date:From;
	b=Sj65HkHZscpSrRl7RsCTHXlurrBupqdalSfyjvJzfz7b2dvbAK7DBmr0QfarI7yIc
	 5hj/FGvRFo/yfYNDUoVKfTpJ/1g1OWmJvQtK7XK4GzMCOexzuAnappZXSAhYt4LYV8
	 7lnfqQZuZ1grwqIBlxk5KzVvoMRzvW7y2R9m5BeklbbWlhCZp3aMfKPg82nKAMGzrq
	 pRRv6GByDn/Gg6u+gd10jmpSMhI0AnTb2ZZkgcerrt9Z0KWlUSikmWNbnQddOvCtT/
	 7GK4rzZteykdypIYOwQ+vJ5f3syvj1tYuWtPUM+Chl5+mDEqjDUic5v1mUfYqBXM7W
	 VKoxsd1VYYq1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8E9F5A8AB
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177671145368.17548.5752753124421510178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0f25e90f6a8e7f1406de8e1de29cf6e5f930e6e1bc6c12d41e4c3f95e3fe04e
Date: Mon, 20 Apr 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776711453
