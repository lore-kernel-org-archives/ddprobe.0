Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BFA220F49
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756110594; cv=none; b=uNWr1Gx+CQJoA5elCyvliRtg+pUERcmJAPmfpP6vgpnDgAjQ3xcG4tshVhuI/7zwZXgslXpQBZ2dLPlQahk57+3g5r6ssMIJA06YTuwYqf1DTVkcqLk8cEErVCUGtIW+9pt2H3srLj1r9uZrWu5zrAxVLnbGpC4zHJemmxUkr8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756110594; c=relaxed/simple;
	bh=i94X/GDvdHtdhkBgBAVzish6pHJblGm3yKz0GMoxRrU=;
	h=To:Subject:From:Message-Id:Date; b=XGUsQ3HZ60p3k21tcla29jmXrWquKs/7boFCJ9PYYhZGIVFIpUrluWMB8RhGg/xiPq7WmaRfO1Mmt3rAZxzuTW3o7mEQiOn0ONvx54raUH/a5xFugWON8SzW4/FNx6vvJHJRZUyWXmrqf3zpisLj1tk/lUxs1GXMZaehC8+eYe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLbwJBt1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLbwJBt1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B60C116C6
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756110593;
	bh=i94X/GDvdHtdhkBgBAVzish6pHJblGm3yKz0GMoxRrU=;
	h=To:Subject:From:Date:From;
	b=dLbwJBt1rMCabPa7cUbOZcpWKQJnziIMHy2Sf61bSYlgThIKoH8gGQgIl1qOBnjNz
	 tK5+ipnlq58A8wS0pHDPZuu2kvu+BAzsRaqzfEhYBMyk2Mhw02xDc9+B0qPi/5+0Pv
	 Y8CqGFsgLzNPqsmJYJb7H4HXlkqQjcV7z3x51zhQjIROVJlI+Sh0EFQsTXFJ9IIpBX
	 JzRNR++YGjvp4KUu+zZkpjgEJliuydHaJUpSIzHGhZjFAjzjCoJcmg8dcTDS6nv2fv
	 UoQztBhxu/lDzpcXQTy5pkoyc2S34kisPLBwdy+nw2VaLsmQ0V+h8mqqs6cFAnCCBg
	 ZrQtkC8IHxD6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F658CA0FE9
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175611059358.21191.17083157928675768466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 243182307c563dd3d88c24aff3c6ced6143c2924c49f73c2349c7860026942be
Date: Mon, 25 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756110593
