Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5129B2DCBE3
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788076234; cv=none; b=K73vsol/9i40dnnI9IWX9P4C2FUdnMYSmH6M4fVl5yTqsZNtJvE9tbJII70jQSWy+vLULfoU6PPdXQP1uUosYEnHXhmaqC00iLrF5wocdlp8gj/20pVcpZYG/3c8ooOm68D8R+d6tCKY0wieMRv+euGv8Le8C8bqpQ5KyCNektc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788076234; c=relaxed/simple;
	bh=mxFZADPM9BpyX2CpTncVJjKilWA3BTWdfk5TxDBClvY=;
	h=To:Subject:From:Message-Id:Date; b=YQnesQtdRCuHR/MLW5jSSNqaBPcNO3TPTY0iKKceKlL79mIKGzhSol8UQGyhg5CtmmHA3JX4bGqWWO+zljyetAaj+kDVkW+UJP1D1tVsoSPWMYrM7apyT+ysRgBYMKDzp06fEp4Y+vB0hV7HzwCXS+qnJVcJmYWZ2BgpVLHtTd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHRFXwBP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHRFXwBP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD310C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788076233;
	bh=mxFZADPM9BpyX2CpTncVJjKilWA3BTWdfk5TxDBClvY=;
	h=To:Subject:From:Date:From;
	b=NHRFXwBPjkubXEnW6qknA//dBrY2h3nsAx3EBvVRBAcwE0jJXbRtJTG9O80faSEeG
	 RJQ44CsOxi50+uGxE5Zar2sQOlmYYBj8UlHQz6nDYZcQChGccsf04zIGTusILtN/og
	 gVf9PjJ1FJdM8yANF0tohyJpflvNcx4eUAdBxjnxltgkocFLCT+R2sIZ1Bz2L7nAga
	 lRZmMQNl0/VSIf2QqW9Hc0dpNzjXQAtP/UqXdWYXVwvYR9pkM+4dg47z1APtxa3q9C
	 d9MB5MBl6T8DETq1Nd9Dlc0amj34jZzvn/0P39433PUVIVfG3mPrPixgZ/TMHeDiKF
	 6ylK5uA6fEWgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC052C61DE2
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178807623369.22749.9542344737621598054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27fa2373a85e464633467e34c8d17fa307087621f50b20726fae0dc141de36b2
Date: Sun, 30 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788076233
