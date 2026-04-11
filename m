Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC001C84BB
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775896654; cv=none; b=G8DONyIn0lmgAlRE9toNcnFmh/TYK0dVcPnLZYL3w1nkf5LrjFvQrrGOF60ERnWn3wIIXqp6gczoEr7+TSMDeEb5ZmZGpnjg6+HJ8yzoMtOMopvb1OOMU9Vg34NwTVGONGWRr8IHXcBo276SQRl3VP1MkrxcF5VAHJWAVYslUbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775896654; c=relaxed/simple;
	bh=BcCM1pR5jNIA7kyXYSktDM7s9MocH+EDtQRO8Wz/ZPw=;
	h=To:Subject:From:Message-Id:Date; b=lPxUFyyFsUJtEWGqt68ar9nTXj6Q6dAUsuos9QGYV3MRZD8EFmYPgNTSFThgG7lflhbpRfSQqz+OEJNNJ+vIi0xzPf1a2LnuXVjLyVXU+pBor6Si6VO9UqwlYKvvzhg/kPbYsEE5sPVCtsbD3AyFWBo3BWmivBvIRtgzVWY9760=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fe3H6/1j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fe3H6/1j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9BE7C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775896653;
	bh=BcCM1pR5jNIA7kyXYSktDM7s9MocH+EDtQRO8Wz/ZPw=;
	h=To:Subject:From:Date:From;
	b=fe3H6/1jIhpUXKo3jRE/pNwmZP9ej6oysnl/xi3VQ/s1ZgNLbZUvdHA1zFhE9zCVm
	 W9Ayws12gB4HlHGjg/EkJio12VbcRfpTfT6udIqCtR4g+16GXeNYQe0IvoqeJNH9GX
	 zIf37qDFsnntnAGlBKAVswcSyJKaZrduQgTmShKj9y3xEHuQaOsm1KQeBUPci39P1m
	 QL9TUFT6DyglZUiItI0aHsCi2d8/C4LcH5i/ifL8cEVHtA+wQ7IG73rxRxxLJkpjQM
	 ZYUNgFL2aFwqS1zUDl2TpJG6sbBnyIFbBplgt7RqUjQBF0mXJ5eOTbVGvXR/CWRqsa
	 /R3N5VTbT14pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9988F36BA5
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177589665368.2893.4161453425636604471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b080f73fda347f536e9ff0467076bfc9f15629beb4b186a96bb27528a501ea65
Date: Sat, 11 Apr 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775896653
