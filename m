Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368731802B
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749982194; cv=none; b=goMi5quyU9UUgTFq1UZnZos7kT/KJiCdWptAGM5bQ6i8ktics6AXlPM6bXpiIUL1sf4DtbN5qXWMxUM3JTsyvD6hgAJV4AsZpUX/wqOW3ndT57V8LQpjLD1X/awagWiomV9GnIdIaRZWO2icamtZOiPNIZkOvDGEIVr7zEbve7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749982194; c=relaxed/simple;
	bh=W49vUNfQ6E9wZ4qM6xC52YrRSRaMwq2pOFT+XAxyntk=;
	h=To:Subject:From:Message-Id:Date; b=FnDZCyCGhHbObX+lnp0hesazCnfby/Fxegm71goeQz7LfIEUc/ITtC7O6+ZYd3mR8IeSVL7yXHFO3ssWNrI5qpq1N2klYckD3CFFywHwd6JDsce9EZWkMvP6q8rffV6cCuSnmVvpC5LnZZ36OLRc6aUJD2xKE3d/GfDKLFLTjiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDNYkhEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDNYkhEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1251C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749982193;
	bh=W49vUNfQ6E9wZ4qM6xC52YrRSRaMwq2pOFT+XAxyntk=;
	h=To:Subject:From:Date:From;
	b=nDNYkhEVquHo5rTSb4wM9jqK9nV3MKzF8wuFJHChbV1a2c2RITV+2Qu9sb6lhHn+l
	 xlGWjfV5711Jwq71IO34OzC9rLAjMZtN0IUsgVKpWWETy7x1Td3XoaeRSKtCoIuu3j
	 XBivFWBDGwLYCqOWbG20klFw3d3fbjXDc2/ulhNwjwz/sxkXzn9Aikv/4zdNCRpnI9
	 efZEMvSJio8aAUttijkd53Tdh5u4AAwQM6PXTRESFi0zW0EHgWB15yUg9jrJfNoJnJ
	 pSfbTGO9B8dLMu7f8Wrn+v/6+deIuyLq1RieEKO6e3acZhMk7z1Gl4zZN3N/OpRpA4
	 imq+X/7YFa2ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99522C71150
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174998219362.18868.14325467684799359120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8a4df6a44e6a12472f91668a11958bd9453d5cb3add1a36df7d1f75df671b98
Date: Sun, 15 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749982193
