Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407C222688C
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 01:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763689314; cv=none; b=rPdgjG8IdLlsoL9c8z5L+aufVB+EUZ+hdJkBKucoF/sxXI+abcIcZhKVCxNuzmwBB8xvUZJc2fDGMS79jo/gBTGL06w/w/NNLfAOwqiODfKCKrsQx7KhWmVgX1SKJt41SqPbkENSo54qNGeBJ5BWeaS8BnbCeggQBsbgVXiTRRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763689314; c=relaxed/simple;
	bh=snoFz8CGLktMIYXrQNgjh9fK8FYZfkT+0ljsz1yeMzk=;
	h=To:Subject:From:Message-Id:Date; b=JwimhbNQWlLkgmRD0EPwIjm3bUGXCFn4ltoZF4KfZLyqIY6QvPfzG9A5hhNExw8tCL74dmQD6oIO4yjkvlBExY7wATz+Sv+6kO59ZTJeob/nBgS04FOoizK0ww/S1BmQVzQz2h5TMBmEOmnphs6FmDVk6qVvEVZly4VnGRqmIqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCBtdXY6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCBtdXY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA013C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 01:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763689313;
	bh=snoFz8CGLktMIYXrQNgjh9fK8FYZfkT+0ljsz1yeMzk=;
	h=To:Subject:From:Date:From;
	b=sCBtdXY6cEHsX0YqSTEWz3ta3d6KOZ7MNyqM5ggkT6n7WT0IzBetJMiXjBxKuHpL8
	 aeSQg+3sWfz9jnO2grZBIG11SsJQ6L066pvktxeYqJsntj55PD2qnX28OcnhkPTzWn
	 QHakdEqjhlJa/ak9EFOi8zCpG/BgK7z3pu3r7e+0vx4HuEuwFBM9fp2kmIO2iKA75y
	 al/ZQGoW1OKmkwUJAkyYWjsoRQF3X0qjN7NQMYA0YNO7PMWcKi0wPdSWie7ZFzEzW4
	 QguvCLRB7SBIPgP19RJ7vKvR83MBfxiu6m7Ag+UYQ1evn0xKw/mQGGlNoMbFdaruEz
	 sJmjNFB5kricA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D39CFA466
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 01:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176368931358.15773.15384233579201346151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb5f6541a29092a416e7ac2ce5a1c2b1321f4ee057e09397be2c9c1bcd0ef66e
Date: Fri, 21 Nov 2025 01:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763689313
