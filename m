Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C4526ED59
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 20:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783888714; cv=none; b=uBXUNsj0aXZakl5yBQ70/4sA7MDOhQqdjAYZELgLETjy7rqr0JJ/wJJ9IzA2U1+c0sRE2iSUkd6Qe5ZlSVFBkL4IKmZs0Ptd9ogJGkPk/mf9KeZk9O9gja+FwmtfX7pabK5mMy+IxavJJsMIYh7Spp4kH8ic6YNUlqGgUDC/iqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783888714; c=relaxed/simple;
	bh=ol0SA+uIzXuY4geYrsG4wbbam04EKVoW6Sgl/J81fiQ=;
	h=To:Subject:From:Message-Id:Date; b=OXlwDfrBTeX1+CWVaLge/0ZrDQhpaWGo4bhd15qtCRPkJJZiSzebAm0+ykYgy/7XjqvKnYHvm8SUSTlvheppClVIaCsIK9rYva5dK4ZVlcDdJktb7Rvqjs+hnv+paCYfXnI1hi1UaqGrMklzoLjIxDcenfpYuUa0xd3z66ErFWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBBYhuc5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBBYhuc5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A91C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 20:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783888713;
	bh=ol0SA+uIzXuY4geYrsG4wbbam04EKVoW6Sgl/J81fiQ=;
	h=To:Subject:From:Date:From;
	b=JBBYhuc5+xH5ikDWgrY0C5AdTeoGEC6aWXLMxPuM362eruDgWfWnNSH1XuPYRJiu7
	 /F7FDQSOzgSr8ZvN/0Y1Ly7BBRWt1Fs2SrSY0VjtKkv4kH3txrUWoMzoq8oaMUV/ap
	 t9jXux9YuK8NhHPX0y0ZqDAktmT5sVWCyee0EdyyBiDV71SH8mItAmZi78JGJcMW+n
	 liNGnvU2/pCF0luc9UbstgXcviviaXcmw+p21b4kyAsRe1sJGkAXWx1LcHGK6YwNDf
	 vqIWSUclA0XXFRjWxmR4KOPGhsD4kmzCsj6og/IHEz8sf2jvcx1JJpnrbM0ALSPp3E
	 ObTTIhGZRB3Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4B5C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 20:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178388871368.29376.10422239101821335610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dafc89b0f732d23330eb1e82b69df6da0216cef6b6fb5c38c13e44c1c3f7f98
Date: Sun, 12 Jul 2026 20:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783888713
