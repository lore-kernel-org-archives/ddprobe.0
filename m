Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78B52BE10E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744637393; cv=none; b=JgStsBaPRow2cJFo3ObmxqW/yoHPaG+LOVugBBp2sBmn/QU/3ry9Tw6JzjfO5jN+E3VUHQoHG30LDEUIQBB9xn/StirZ0tveGzajJVdR7BGavPWSaMXm1BMZy7AjSTKCoP5rfw/zJeWf83hFoo4IiXoch5k4mMHGYjEkFORDAKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744637393; c=relaxed/simple;
	bh=DdtSl8Wt7Ad7Fg0+72tGTSwENrft4fdFkkKP1SQoXR4=;
	h=To:Subject:From:Message-Id:Date; b=uKlviyXioFz242Lnen6/x1cGSTGRZzu6mxbRHzQGSaMUAVA4Bz2VLknvN0GYek1azmVNTECYF4aFy0itWYTgCxMSFr7pdsCzQZR77wP0o4XWyAKuBu96Ud6fA7yohdR0D3SrNRMid7KTOk8cC3DIaiB6AONLhL0hargkdeMVZZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pE+ypmFl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pE+ypmFl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73D0C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744637393;
	bh=DdtSl8Wt7Ad7Fg0+72tGTSwENrft4fdFkkKP1SQoXR4=;
	h=To:Subject:From:Date:From;
	b=pE+ypmFlPrp79gmMcdzApDINLnsuq3ofxzCFa++XoIUirAlS9gLED715SXLnXg0bA
	 ygolnfbjxwbyIrFoKHM3AmC9dTDV4Odn++hAgXCMFDDOARYXoYg/MPfdIKOPpAz3ny
	 eT9eRRnZtcwlC16EqJtDHlFXjEsnEDaBXgVov+CwyaoEyWdBc9mEzUm5fok/EvCRUX
	 JiyekciMca0UECk2rzbTEWpvArgVIbKKt2xFOTg+UD+P0oF9OM0Z84IMy/E1KtM8tI
	 VTCi/Ob0rjS+dzw6k7BJvcrqD+Jy/KSCXbnAIUryRw8GBaord0DdztMNMutUKTWvq1
	 h1p19HdUr6WUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9680BC369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174463739360.3678.11400868321456605871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e604bb924a786532640b6edd0b5d34b4133b7f22640405495563fd99704dc56e
Date: Mon, 14 Apr 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744637393
