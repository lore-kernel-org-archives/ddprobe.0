Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A3622F386
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753767594; cv=none; b=m6hkSOjvlww0gtbtk45ZzCBJp2InhqwE0TnQ4n2vwgIxrfB7ItTchvzokT/vdTrCDV4+2SXx+qgL+SUEEBvoIJ49VFKG87qilnSu4BCxC1KikoO/LyP3yRp4QTt1XzfOWUU7vbzcPKu+CnpiDWmVxN0afqD5EBlBlRkWhsOV/Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753767594; c=relaxed/simple;
	bh=l00b5m5PhI9xVvRt2nZpUnq7UNgs04Qr3HQ90GShU34=;
	h=To:Subject:From:Message-Id:Date; b=ax03l9+t16RAp/10YAmB1bLt2De913fPZsm3b2t95wtwvWx6fe9Wfplna+iZeGWheSR1YT+0sK9dmuFx8RLe36DbOyF6mVpMRRpOf91JZSnVQoJtqrstTRvAfDuMkh7diSpjiu60hieuzEs6eG0GQzuLHjF1d4p5d/otWH5URxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZG+ILJii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZG+ILJii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A34C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753767593;
	bh=l00b5m5PhI9xVvRt2nZpUnq7UNgs04Qr3HQ90GShU34=;
	h=To:Subject:From:Date:From;
	b=ZG+ILJii+Y5q+Tre7KXB04gnzfJ1703f0scuh93BRI47qVfmfFyCt8jI5zKFvGemR
	 llmPmilk7h/Ko4idf6x7eRPMBC4pEMJZECRLIERTz6HnRCevHaR2x/cqZRvaMfORPM
	 Q89wNtsI3cdbgfpEW7jE75ZFg00Lv4djHYk52GL+pWFsSiYMZwQlkSoJYK8TBx1X7x
	 25r/rf+BdIvtHbcZvUGqqi9lM9Bjm44nKuhwks//fEL86xu1uY8lvBF6EF460tRUG1
	 W988YzbOY4T6Nqz+jUCtKo1MBdd4MsPGktdh4yolWrfrHwU3/FCdVE0SXyMgcIyMTT
	 WM0XwJTOLjxVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910CDC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175376759357.27449.1482258580824678962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cc5603550ce40c2c76d98d77ade858555fd627571d7bd38fb1abe2a7e430717
Date: Tue, 29 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753767593
