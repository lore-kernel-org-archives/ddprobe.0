Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1608E1DE4FB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 23:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765494774; cv=none; b=X2g5/2esoPyOYN/iwwSC6hmk1drpT21r46AsWotUBvgqrGQoqrvobVbQfEmHANd5TI9BEbAY8Qk5FyX1L24WMH25UK7Xq9oj8h2PUQhUy+tf17+YUquWPcxwBlTin2ru3j7AJI1aDYKcUWKWuiBg6h7yPKQhfz5n/dP3lrJZet0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765494774; c=relaxed/simple;
	bh=hk5E6FzgFXEs919MHxKM9HGY6srisRvKR6D1KIgMkFk=;
	h=To:Subject:From:Message-Id:Date; b=ChuO4crhnolQhcrSWa6NQZcYgpGkxqyAdV0XsMAh9p6i6agpYhmBsVSgPxKTt+dAvneenmPatMCqEHTqhJhC3MNpd1D1VyIURtfFOvgKW6m+f5MuZUt0cgasY2rW80QdOYCSIfcdxtfFoNrUI+ZjlYZAdlBvxOs+/dNoMHXhqWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjvrbXJv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjvrbXJv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD910C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 23:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765494773;
	bh=hk5E6FzgFXEs919MHxKM9HGY6srisRvKR6D1KIgMkFk=;
	h=To:Subject:From:Date:From;
	b=IjvrbXJv678tWrzj+Mu27IV02/mxWOcnWexmUgydt7vMnzDcI2YcSa3p9dTj66lO1
	 jxPp+c8VNfeJQrDoSAwB0V8CJOSmDH82Q+rO3FeOR+APA5ZFCDvFvKLyNKr3TlToA1
	 pezJx8wXyJyYouzmY6Qdx102lfQfWJ8mV61ALXG95Ivw5LlJvCTLCQ/0+fJY3QBwTG
	 nldd/bm3CrdrhhiWewouETtIe1M8ZcUA30Ylon+VWdkoTII+glMxcPBnWKAkj6eJSg
	 FMN3MQxjF6kSK/CO9u+TH2xTfpiGH0K0TMFMyWJJDdKDX2LlARO56LNPRpY4oNmy4Y
	 Gvi2q9NUlJCIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9490FD4335F
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 23:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176549477359.18249.13093992584480396318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99e34dff240ae7db2cc45adcc08fa52ea57e5458f221d393989c25b3a8191a90
Date: Thu, 11 Dec 2025 23:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765494773
