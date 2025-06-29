Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B24204C0C
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751197795; cv=none; b=Ea1nRI4rwdKSm3UBPKvoke4qV1/as7T8MrQp0jHlcyRAYpCxzeaNYtQ6Pr+XBZX3v1ejdNoy0z88JIHp8sFjFc5II9OEbdj7j9zQP0tYZYXuRB4n5+3SHarVtFa5HkuLme0VbgY1V8TEVmcplXAZqR2O6lpeF0p2JT6evfnIRfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751197795; c=relaxed/simple;
	bh=VnKhbLIw7t61B0pCcM/FLY1QvCSlbk4HTEFkAJyAp18=;
	h=To:Subject:From:Message-Id:Date; b=DIDnXIE2wtIotChPgmDCclmzK1AX/AUxJPxDnTLIPZoIWhoZBtcHK9/kwf4LGHJvb1CAe9w1n46/C5xS1sH1ZXsy7B5WKm8eMPuqN2vJRDloe3GoeCfCuT5WArdL10/dMRuBxKPXjE/G2a0AhGEQL9q/LXaeJrAzS1+KRvysNfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vb+B8rGl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vb+B8rGl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E9CC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751197793;
	bh=VnKhbLIw7t61B0pCcM/FLY1QvCSlbk4HTEFkAJyAp18=;
	h=To:Subject:From:Date:From;
	b=Vb+B8rGlbbmjpBspC9RzCwVgkybOEmTPGHyjwdBxTY2gmh4YbJhN9ohAEm0cO8B3w
	 qFtG7/sjItLl5xEuBHkzdxPWF6hppNuMl9tdW/Wei6mDvsg68Vd1LJJq700NKEaIs2
	 zdE3OynbKh6Droek5co7b+x7FUpo1X0LhJWsZY1mYSQZObQ0d26APB5XcYBEeWeOz6
	 HFUyKJCB2Ur/CpFdpMgNAYuAvxhHsQ4Xum9LpaZ2a3/0KXqAOjFt4ud78QkVCHlV5e
	 DfTI+y23CIPE05zodnpbmSwB1VCPV46bBoOwQ4FXqk/hnMHOUSVfxJ1rNF0i757BPO
	 Mjwwl/pfjMXhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DE7C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175119779357.9704.6638909489694671256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51900ddbb6c2e997c8412dd6fc3ebbb5edf8e6a87824c72900832e8908f18ea2
Date: Sun, 29 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751197793
