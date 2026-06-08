Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5576D3B2FD9
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 09:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780909474; cv=none; b=r0XjkOqTwJ/khaQnWUbdOYZgNujiwQGHAMfVY6+/tQYxKAr/8P/G2PSDuGxuZawIBUkxxU+ohAAinovAevaBhkNLy3kugXDKxjVbhGtp2e9lTj/3h3XF7hgVpLzZWC6OPMhBWJLasFpvTuFuq+/D16ifn3Ukeu5g59IgF4Uj+OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780909474; c=relaxed/simple;
	bh=ku6/76HuPSZzjIiKU8DMxwc+ivZxaow1iMxUrsSKfXw=;
	h=To:Subject:From:Message-Id:Date; b=EsS0lSkCX8XeUy6rz/yuwWsQMQ+ZvUDDqdagyk3gjBisgitHrW0NLvUc+Bl/AvIUBP5rMeABKQ3gxw9OHJisDVVMv2662Z/nGEyoZHejwNMzevLrTMsf+GEjIau8Oz4mpgGRnMoKZyoa5o8tUVSNpknhhL6W2CqeRwCz4/m+Nno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5aYqWYD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5aYqWYD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7921C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 09:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780909473;
	bh=ku6/76HuPSZzjIiKU8DMxwc+ivZxaow1iMxUrsSKfXw=;
	h=To:Subject:From:Date:From;
	b=A5aYqWYDNuUk5TvXYyCHVvU6fK+EP1HCOH9Evyms2k+krER7XFlWkuoKGc6UHT2MP
	 iIpDlytiOR3JXWlC0bVaxuW58q8rtOA+As17BeUrS6yYO26Gj4xZc67oIbNQRlbGFD
	 pilfz6kBCVcr8iHUM6ydLBDuDs+btpoT7pm8f2TokCjLswezzFAhf45sw17TiEpVNS
	 tIXedN1GwNneXeuJmWSjZa/0rxzBC4y/Cbp4BoWmUWD6b/Un87HfQRyBW/GkaFH7O8
	 0nkYfqEj+meJoJ1mOPXUudWmJ4B/5SPqV2RpHMjrixPgOmUqyqa7dGaSQ5+J+3rLwK
	 A+SOEYBJwCbXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7FC3CD8CA6
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 09:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178090947374.32017.18105190961235830257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4f13c7645091b3b4799ac028b8af79f07a72ada5afba9afc7cb5c43a61f981b
Date: Mon, 08 Jun 2026 09:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780909473
