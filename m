Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E4345BFC
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707765497; cv=none; b=ROZXklwLZvLzqc2Rau0YNe/0uYFQuh3mMGAiPpIKp12kg9Y2uz6chRNU5YlmQJr8jXgIJ9aPzEW23Uo4V1KH56Iv4/knh4JF0AJ54xz4c8/ldB+xJ7SQBOHgVtSkgD+MAh4dU0iVqB59VWy7h38Ph2bxuGiChqkkXwgsrNTTcLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707765497; c=relaxed/simple;
	bh=q++gwqCf+ooFkrUOe/jYDBZnfIouUyJj1ZDmwVdeHjs=;
	h=To:Subject:From:Message-Id:Date; b=lhm1rM22wZb+O1t3H/W3MHVlJIGUrYeyOrTDb3Kw+xDlITotkUN/Ey7HGMFMofVYF9HlJg3c4k9JpRDF2M8eZDQqb4E3PSTMSQMi7PIu0gwtd3Z1O4TzNQfcysq2QoFaFsFKI1BgDsRgN9i3+uZBOOOF5F6HhLJLQNa4VdYc+og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yg4/Hpby; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yg4/Hpby"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A4A0C43390
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707765496;
	bh=q++gwqCf+ooFkrUOe/jYDBZnfIouUyJj1ZDmwVdeHjs=;
	h=To:Subject:From:Date:From;
	b=Yg4/Hpby706it6NBinDV7Ur1KdqdON2+uoaprc2HQSGPcti0EFCAw0pLqSiGN9UYZ
	 26m6mN5oKU6Fx6t/Qgm4TY0Ejw7oxpeeezwpVGmcr8avDEFgSowIY1SRbjus3XbDz3
	 tOkH7x8TrVtrxOVu/YZqawSfKn7fh6NC099n1YDS+Et6aCJxucV7aCrTkAj6wl8gCm
	 yYRN1QVWzpKPI+q+C3IeIMsBtu6ia8riEJVI7oROVxRTLzX0UzkcQ95xuU9N0xIFCZ
	 +kCVYOxeUwlSDU8e+BtfXhL5qIecopH+iRraz4uVQ3D1cES0YigYR24yFTvd6OaIin
	 9nl/OoCqyAI/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B238C48297
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170776549642.21001.5320634940324712812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e2c9a6ee15ae31d525dab046a2099ed22467cca09e0be31dc755b41cce5ea9c
Date: Mon, 12 Feb 2024 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707765496
