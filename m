Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422EF33030F
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778987434; cv=none; b=UCrVOfieKODaErXuGEEzQ16HN/VfOJV57UhERt9unAFUVxwCSZkn2DEefweMRKJMJgQIXtt7PPR0J73+LtNwWWp/zTLn0PWHQ3RDRUe+g2RUp7D9p8QdZUWi6RsyeCw7Wl6svHfROkhB/7tDYEV2T9sC07q0jE1gIAO/njNSy6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778987434; c=relaxed/simple;
	bh=nSdOJQh8DKb2O9qQ0VY54qgCn0eF5sczl2BO0tWDAhQ=;
	h=To:Subject:From:Message-Id:Date; b=CeewuNcasIvS+odomMdD5akxmoqGxnCgO7iIyJp72U+4INMRpNHS5mHp2tIITlQFgJfmMQLtmiAdhyq1tMAA1zJferrXzGb4MGtfaWlnXu0LYT9HZhgeTnxz3h1qXOgRBFkmt0YTfB6ntWy7b0Vih1tyij8wN7Y957YDGYZU+f0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frCWqE6C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frCWqE6C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7DE9C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778987433;
	bh=nSdOJQh8DKb2O9qQ0VY54qgCn0eF5sczl2BO0tWDAhQ=;
	h=To:Subject:From:Date:From;
	b=frCWqE6CGxlTt71LydXu8TSd811FZFsxMFT0PS2AvtVoFkSh+qqht1HueMlHuh3xH
	 5+94AIZOqAY8OKx1xbcKxRRD0bxO0XPormcbhSQ53ScFOPq5YeNf9TTSVjhiF2IzBw
	 FDCWiDOh8iRkZrR9RE4GKTgtv4vVxBrReKuRN3LHB+bv4p9WWMK8eG2S9ekfjPDvBZ
	 tT2mCueIezzOVnuAIzt2YHThXbkNe6ky/E9n0KySwyI5JkalzUjlqzmV2Oe7nLWh6a
	 WhVEWbPAKJ1eft6IBXRr/xsACgAzqra2d5F73Dery9Xq5ZijtlKHkZZ6v6oU0i8ZLN
	 5oTNZrv0CrR8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F6CCD4851
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177898743370.1834.5780048250216262843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35b53e61ee31fe8c2b2d4ce29b32e9ba9672fdd8213ab2e81144ef7b22126f73
Date: Sun, 17 May 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778987433
