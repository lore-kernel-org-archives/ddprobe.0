Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6211A4B4873
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790596834; cv=none; b=BnIE27aKWGsB9J9B9fX5Dj0Qfeva6ujH9YApAd459M9DE0MPnCXOduu0A/waBXNYtfOC4YQUAzeZmLz8vOxqrWO13FHlheKpDqgXHF4ncJ6qG5/RjI9kXZEB/UXVmvFIlceNstlg/OiVw5KyrITzF2OfIxSzJZi20nCK632pl8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790596834; c=relaxed/simple;
	bh=DshWAAdwBTV/tJtr7hZlqVmS4UtXpiuInvHewHFu1SE=;
	h=To:Subject:From:Message-Id:Date; b=lo/M7C/yHb9T9MbaICyh58V7vqE+CWIlWIvP3O702hqA6kTUyTeIfkOYxIGBubPHEyE9wJRzqy/axDp8M7kw5MrVWneV3IgxbfpIlUTnGU+x1WEv6K0RKfSK9pKB8+iJFTJuR5Xdnic6VnvabD2mr2prmPkoznuVx5GVjMjRsOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2MPNQzG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2MPNQzG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE24C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790596833;
	bh=DshWAAdwBTV/tJtr7hZlqVmS4UtXpiuInvHewHFu1SE=;
	h=To:Subject:From:Date:From;
	b=E2MPNQzGUk3sI5hOcED3Jd/Zcj7wm85sT3VE++2eFZnJUf7RUFWavtNUbdoPlU+Ou
	 hUW6djjOaXCrtAC9hU+PuRRQU0z1DcYC6nRDO9F0iGfrRosbR0pg6VJ2t86YzcBf6a
	 sCsv4u8t8Rsw53Afsz4oBdhOsvhUTZg84uZnQ5iunYGScrfiNk+/vByCx6GLscgkZy
	 qHxzGMq5eIsCW8Nwa6KiIi6TYS+BBjic0hckof3Ie3Yv4kpZeWuahow9+2i8ouw/Ke
	 aSAOqWljt1uEMPh2u0xs3i4D4It2iChNcK5mRDhxbBYRedfJbtd5IbYwpzXGz2L7Yp
	 qZKE7DDHNEWXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC322C9833F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179059683369.21499.2683442024226050799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 883ee1b636fb60374f07143cacf890df8ffdbe270d50d430aca9fcb89adc81c9
Date: Mon, 28 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790596833
