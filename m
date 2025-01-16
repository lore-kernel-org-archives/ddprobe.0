Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD2BF18A6A8
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 06:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737009954; cv=none; b=qS6RtxJAXMyy2her/YJ8+yM259gw8TFkO8XS4GqmmGp7ok1MqQPw95FZYryRPnnLbDs8ObKZnno/DMudNaOskYkSp5nzMZ8xS0VTnZXOdMs8rHPWBYJdgYL2Fu8fuIXetWDpCrJ9Gevyde/cAX3xB+BjXTNDnECuSoxSkFg2wV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737009954; c=relaxed/simple;
	bh=9TZuJaqm/Aw7xh0LC84zeb8p9qh2yLsgNGIMpnL1N30=;
	h=To:Subject:From:Message-Id:Date; b=idW5barKom4jIWlVXGFLRDHG5uYAzuvrCYDCgK7ayF4q81Lf6u5Lpy9HahjGyyzHZ3MJ/pW1hE0IDbtJdlRRZQfIx5hm2xvqWWSsUv6GgJZtbWk/xTZcOGYK+mSsdnJ922+i2Mk7UZY2JvAVVBuPDIoAOvwDMjb0GFBZAQsMeN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLTeH+o/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLTeH+o/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DF8C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737009953;
	bh=9TZuJaqm/Aw7xh0LC84zeb8p9qh2yLsgNGIMpnL1N30=;
	h=To:Subject:From:Date:From;
	b=QLTeH+o/94bbKlf1ukleR62gYiEMPdn/3IAaY4/KzRziIwbDfUwSIparEUhRQYtLI
	 AC93RC2SfqZx5kzueUumj3vkTGMR7G7abd2LMK/13GXAeknP2xxDuEB97nasnXc067
	 ikv+VG9Mi/QMd10EWP8aWYf0fbT8eL2qtl0rrCnwMmVOalZQpjAlHjCUh3aDK7a63+
	 0guUYjKh9jr00V6530cegBncaIVKlvsynP5JeTgndMKfVQmw+7eHeRLzcKaCZb29KM
	 gC0R9HWAXh7RNOKQNujlCj2T0QInnpM8Xgcf6hFGIzyfLASGhUYBuHowmQYw0ukine
	 pRpaukB2LcfDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B39E77188
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173700995358.13101.3902909308424875984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cb334bce8f7f9ffa7d9b8ab7822dad7e08f0990d9530063735ec8c34e291e83
Date: Thu, 16 Jan 2025 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737009953
