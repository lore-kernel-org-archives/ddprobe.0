Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD3F32B495
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758054594; cv=none; b=Uqy0WHL5pC5znPh4FACLx/cYnLk6pQS+632OujUJQ2n0ELFKGbbHb9qFB2yfzr17/5tXpBpXJngTPLLkjyb4RZR9FSYUmfPQGGT53xrWUYaQBmUBOjyIGEyiF6TIUCq4RjOlMrOeV3lsIfS75+y3o9aTtzVDOgpxCuk5ovcQ6xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758054594; c=relaxed/simple;
	bh=YvUKPjAcoqX8ESQST3Wi/fz7oXlqcFlY/I/MZKLs+44=;
	h=To:Subject:From:Message-Id:Date; b=B4CFMxTZ63Dw55+cw/OM07mx4Z8Iq+nPAQ2uZZn+30qVJM8fUVbw24D2+w1eF9XRy7nK7vw8cRsk+UNr9qvb0DQ9R0l5Tmq1q65eyYxAB0r7VWgcPWfbkaDnKbtp/vmveICremHks0IFaeTHhGNHf8RgVPLg5Al4zx923NIKnAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Su9r4F4f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Su9r4F4f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33E0C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758054593;
	bh=YvUKPjAcoqX8ESQST3Wi/fz7oXlqcFlY/I/MZKLs+44=;
	h=To:Subject:From:Date:From;
	b=Su9r4F4f943tOlE6sIfFLEXmm/pt6IfgU9Bbjtd5CvEqfFpKx/3rBOjLpIi/D4rhB
	 lYAKPLAjVMWTHx1TQB3GmNh4nSJp/yr4zUm/pes0wL7fD7xD+AWd8l7s7YZx1vJnja
	 i15Ac656M5TOgZveZihQXKlrcZMH8dq/65P5R/ZsAiu3Q04LO285TuH+VKk7ZsWAZV
	 Ehb39anIGdzLK6fIoQy6khhgimqYsPS7hakmAehTBTEwevPNgSQ717cBTNwGgnIpjh
	 vfmjgUqOGaZ3tZHxg3c+lxXvLgY1jEB5CjizM9igNPNmTC3kYqwTiZvXc/1CdkZHDN
	 D+gUlwD3pOtTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A2CCAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175805459357.17737.6067513336512609191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6d69e22a1128d0a2d0755ec85f1ff30b157a46e95e24e63ea1516372442a94c
Date: Tue, 16 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758054593
