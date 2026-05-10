Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D52B196C7C
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 22:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778452234; cv=none; b=XFi82jlCcuMXNKfjTSM4wfwo/jkQ/XcoGWTziB2Sg8Za+LBRZkoCyBo1GtfKJrNHQG4CrZ+iRHE2LzJKkjCS4DVQmH040HPVONh3aLWr3U9eM+pTZaTt6fRA8+4yL1Tfuv8DUfB9eUv3p7WuSv1I60RYg4Ri3/1pX3cUl4WfFhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778452234; c=relaxed/simple;
	bh=e7yoXpVIMmCOUmb5TsO5VSprWVEloRlJ00/7I7TQX44=;
	h=To:Subject:From:Message-Id:Date; b=DxbLrgeeKQrAspydHRQmpxvUPL+JvIqF0HTz+WszubwcjagzF05FaI/9Z5cFOfbxMSkvp2AcA3pMrymJl3wDWgEjbNqlxlFe1T1fFkQ2lhlSm2fRxCQ7s3iYqxvYSg/uGUYHpPd0v4+0GWTqZ9R9tvpAU2fvwlWb+7xg8+byWeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=czFj656B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="czFj656B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4242C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778452233;
	bh=e7yoXpVIMmCOUmb5TsO5VSprWVEloRlJ00/7I7TQX44=;
	h=To:Subject:From:Date:From;
	b=czFj656B1CNsQOsQKZS8jvKPeT4I6c8Gf7G4I/0B2AAbynmk3psfh6EqLzJZTOyUW
	 /dJ9Vw0LXD4VeJoYPIREFqJLz9P19mKO/v7zQbdrcnN1h/sDhjXnh2E7uax5+lNx7W
	 Vf8XgYVXPhnLxIZ4ZCQIY4jmSP1cmJXVCWONCI7hmxPOKWo7TPVd/kAk2rht9qzpHO
	 wcws+20lJ3tUqEcY96QLaKmRRmwh6fkQ0FGgTFysqCYAGXxzLH7/0qlsx0nMGnOpow
	 VQfElQQYONGh0QAq+4EdZUEwrBssB5NfS5zw/IJbCUzx/IvEETKUz0YKHz18DkQMma
	 YGs+2yTc53VHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DF7CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177845223369.11359.18437583575843952495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d6a2faed265e7cc1502ae04c4f84088c794f3128edc7046643d4463659e7c37
Date: Sun, 10 May 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778452233
