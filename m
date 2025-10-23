Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185A51FFC7B
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761184794; cv=none; b=WxuX8yJvVj1cRnuK9zu99ttao9n/eLCYHcbZOQA0+xDy7WindPP6FUUnpP0EdMECdsBK7RWug2xfdjFFYhbo/OPj+eDeqdH+zyO912R4csfARQkEP45sw8hBnBMe009/+iteKdbq6eY1eG63LeVOfaLhGCeIQvlYVWC9csvvPkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761184794; c=relaxed/simple;
	bh=g4OU23GhMgazAU/AmDghLOtnFIa1Qb0zWrbVBuLekwA=;
	h=To:Subject:From:Message-Id:Date; b=Pguwqj9DC9P1ceNG2c8hIBZxpIUjIBO7IbaVPvIjNyhOi0cmFpvfLyLgZuKXxkizqH6rGAGhEn7KNoZD7f1Tba5XqV6CGloZmhX41eeiVHf/RRq1u56/1IYWsrWQklqQBlg+4VfrMQpYjKUVDYmJGKbt72/59qYR35P1ACjDHgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKeSLxQ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKeSLxQ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2067C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761184793;
	bh=g4OU23GhMgazAU/AmDghLOtnFIa1Qb0zWrbVBuLekwA=;
	h=To:Subject:From:Date:From;
	b=gKeSLxQ+ZWFfRtYF17IqmsGm/kYKaWcZvg7mDFyPCeHqJsR2sgPKUE0NwHwLLufSC
	 U7DgU11iB0xxscmHBXEBE7B3XbIJy/1P1qPMFou4bzxAFmNOde6/iUcKA9QuVP6DsZ
	 giP0pidz5jBlg2hhEqY/84ntmaSHg8G0BZp2AVbQYtjgQkrwM/EeHl/1t5R3p+G1sR
	 brplH7A/fhlS4Tb/V/ZIW4wWJ3GssgB+BWQoSneWY8vqXCWqXqfiRBezZssFOIvYQO
	 0tElgS0x4Ux5jv3JTfUTVFz+sUCdM+LML+IxXA5VznO7rr9S/pFhDipiYn79xzFoc2
	 e4QvyCHBD1BMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0E4CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176118479357.23296.11042491540243600556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbcd52ae51f4ab2b40465d11a80045638870969fbeb7ed38ee591839119f2b1a
Date: Thu, 23 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761184793
