Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C0421A5B89
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 15:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744559995; cv=none; b=Lpt1ppLO9P0AM/MV5iTB0TNAILHQG3yNT5aIBKnYjguntXci3vAyBoM319pxT8xe49+9X0HFnMnMnSZXBRvTACktcA2n5oP2x3YpsASNBTjrF8BvAJfxCFPBg/d709gxaEbaeg2nadd24AVtv/b1Pyi1z7VyVFNCAWw09vd8Q0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744559995; c=relaxed/simple;
	bh=QutO/9gvM9NJ/MALRspiLD9amIZWjyxzvTZeILi3rVo=;
	h=To:Subject:From:Message-Id:Date; b=FDYK84EWYxHP9sZsCLTbBJWcCNEqVzhnWISDZcGjESS91AA3pL61tnYxaECK7zQWzOQQY6NFw0NNX7t+8tiXs3EDG2kL5rGyiweDjssHJ2G5u2iUWoQpNUy69fpCQAuIfZyCQxiCY0EIfHEJd/hi9y0efUZT+lkHyoJGhJLxTfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JbrokPnY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JbrokPnY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C93C2C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744559993;
	bh=QutO/9gvM9NJ/MALRspiLD9amIZWjyxzvTZeILi3rVo=;
	h=To:Subject:From:Date:From;
	b=JbrokPnYtg/MJXyK+Z19FRUV9rTR3jZCYRIPRypJ/RVZtzr3xMBUTnunlesdG6UXM
	 Nao6V8dXEboWdA5sGH8eewhKzneb4jkiz4GV1aQuXKhzZ0oNTTqlp5Ie0v6v9DvZre
	 4EGIWrqsenQEa0FqYF497uUvAJFiyZsJDuwEpcv20P3KkvNYEU0p7v1B1hwkQpkDUT
	 tzrQ0BgQFHyXL/XjhP3/pZ1edxkbYbcEWMMo5OH5ygKEHR/cxObzf8ELJ5z9p9l8mP
	 1LvzLh2+IcQh3liCyUn16/sMChM7DjVSX6FA2vux008nsO6Pwzuo42cVoHe8spXWKg
	 Q/pnY4aM3JeOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9FAC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174455999365.25689.4841107767798122832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e521433683c145f31264ede9dda51c7e78e396a90f061831e5b35647af1e682
Date: Sun, 13 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744559993
