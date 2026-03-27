Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE8B396D0F
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774614294; cv=none; b=H/zDJ7CH1ozVPs4+siExa3yTkm/0IbjFGizTme/ACqXqU9B/sB2McZLIDWwabwD/LOY+a7J0J37Mnez1dBh+Ok3AzMnLAfUTsknzWsQ+edPlppv1J/0CGIs4dghQMN9UsrBzs0M/ktSzTwpcS9d2bYeS6d7if9V+zr3dN4oSFdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774614294; c=relaxed/simple;
	bh=wRGDR+zyQ+HV+hFdaLDHFMYPCdqxehyGMf89asc3/8E=;
	h=To:Subject:From:Message-Id:Date; b=aMRnhP0BFlYyWGgcJ2Go9uNJDLVQ2DuPeWlRrcqyBIt0h1nH6CQalcyuCLFdnPk9fF0a+0EcqEOTYnNJAcdD/V+IvqiKOJiIGIsm0oKwPP/WvVqbXflxHkrysfO1xfQ2H8CwHD7sC3pmmJsMkNblZFnK6v58fM8frC8PKLsAiZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNIUbPMW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNIUbPMW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F42C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774614293;
	bh=wRGDR+zyQ+HV+hFdaLDHFMYPCdqxehyGMf89asc3/8E=;
	h=To:Subject:From:Date:From;
	b=rNIUbPMW9QLpW1vsoLBKrx8RjlK867KCh2KbAM/9d8IFN/XqOrjyUArVl2fGdv5lv
	 9XaEs07yQFCZ0frk074LDN2xX2NNnycLYOnFjPltayn2rPz1p3tKfKi/JchKWHSKXY
	 GcHUL1WbtcIUVZQKf+lzN57MKZqezWNR4CquCR8D+OtPkPcRX8P2gpQrdU4S5St1IH
	 pSg535GvzqYqhhudSY1eSemYNSjOShjtEwIU5EMDIj2tFQ0QvqZXWMcPM5J60BlN6u
	 +MzdGs9OIhYwlNHgoo/vOqS2k99kg9Zn7IjnIOpI4Sm3YwrG7J9ggo07shNeDlt813
	 EkMqQtQkXwSnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952CA10ED666
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177461429359.14329.14807284198637234724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beb13af06803f96584d3b26338eeeec8b11991cd7055d3fbe1dacb6adbd104a1
Date: Fri, 27 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774614293
