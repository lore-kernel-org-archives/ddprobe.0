Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063F8202C29
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773121494; cv=none; b=GsVXWZeoVR4+ozLTI7mVNWTBqx/d/SLRpiO5rNszy4F4Uo3NVaqCg1eXXrPO+WXDMeekzWdkmBY34pFo8KPPvkyws8srCLmPR+xSqqWIFsDc957ym1R1hMoOdK9bXHW9ty0GHcN28dYHI8g43K8PzL1U30mqch/j/KYWMMbXI1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773121494; c=relaxed/simple;
	bh=SojD+pIYgIkaahR079A2xeNw9rNDKvG4I68w0CDgFqg=;
	h=To:Subject:From:Message-Id:Date; b=dj3Jn6udztRMkt5chTTHsXp5V58scgUnFXM+I8VR8HWb0KosMRvGKOER/p6Mfyyx6Pw+zuu+e9yGdIefG2bJLKCNkXwf3S8pj0iHrgbdc255X9FpNfO0Y8a3wIaDETQFC75czbCd1W26lyozj5epOiGqcnmAIDjqlRyOKB36ulw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I9ej/zac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9ej/zac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2399C19425
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773121493;
	bh=SojD+pIYgIkaahR079A2xeNw9rNDKvG4I68w0CDgFqg=;
	h=To:Subject:From:Date:From;
	b=I9ej/zac8RyHzZu8pLCWdmdOi7gJvX1sVnPNNJpwPguiYMXhP4IMd+t9rerSOvuZQ
	 pS2ZKCHbmlg1Qkhm2qK/HX1j/FIlV9QsSa6hsXkLkHCUKWSArt28tMWRtGaRzHacgT
	 W2BbS+FkwIevwGrh6iXEdtJAKfGogFQqrl6VrdxQ5tjU7+dgtfqxrggpLkYMWfp8jt
	 UigYG5/Gy9q2OaE+pEoc8+7H6cp3CDxLZihBWOutSxmBXDNn9yESOr+OfczjmPOyCd
	 nPoxMuD2yUIwljf0WuFQWfQchulcep52MsFL0BN1YUE8GfnFzuVfRE1gNDnjyZIeIx
	 j/Ns+Y0UPkOhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F654FCC9C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177312149357.3378.6415724195601070687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28da180ba8b92c9e98a8d67b16c9091e6a9806bd5a36725fb4335a48d5651020
Date: Tue, 10 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773121493
