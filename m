Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE7B23909F
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 17:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778952634; cv=none; b=UdNJmyMJsnqwHBsunr+4qFu1FbfvEbc2fOGwO3PMPchyWPeMV4+2Et1w/XUZjq42aZdyCa5cFUuBBdPOtStwelh8PzuMgMRoK4b32Cw9VdnutpzreVMGVgnrrKam5MjUX6MSMJl/ArtzkdRsZLbmI1B/f2NrSTloDlj7LeU2rcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778952634; c=relaxed/simple;
	bh=1LJsUt0qrY0TfjGhZ3MY2jSPRfCPJ9//iYKjzh6ARY4=;
	h=To:Subject:From:Message-Id:Date; b=V8RNLqyRb3aXh8ZLTbk2Xym4RL6rP60eH7qV0kSxjtRdNrGjV6zqZUlpWNaMDOqrq0iJbSmfde8ewPpCa01HaaJ4RDmY0voI/nOSG5bCVlKSPhFrfixq+chVM9NOKorepvWAWlx1ZVWusnnB6ZDfiRCppiCIiMTgd4XNEjhbtcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K9+zOAE6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K9+zOAE6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFBE5C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778952633;
	bh=1LJsUt0qrY0TfjGhZ3MY2jSPRfCPJ9//iYKjzh6ARY4=;
	h=To:Subject:From:Date:From;
	b=K9+zOAE6Ip3rjOX6VCCIvLxVmRgDP4dcV8kMFxqOo+LsUc/Vg6q/TnGLxkAmjCBoR
	 qO7O6iBs8lYbDqi542kb/n24QEhZzEUzIrkXWvs9JUq0sBAgg9qDpZ4ifvnN35Kqh1
	 9UBNmWdeZUuuwe2CQkRqbgRjqYcRCzXXLywJqWZdNHdEQBInN5WkpRCgM2XoGtxj4A
	 7c8r6sxFqz9ig5kITnJsraasgpSXkiZnTea/1I6MoC7OkicP5sc2JBi2rRVMSfUlbA
	 gpEdGoVfZXVgXGXBDMGQEYlNQhUl8G1YIxyi3Pgh0q/NKovfB8jnrtGZaCzA4IX6l0
	 t6sgmo02/GXUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD951CD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177895263368.4819.8943196556164797114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 682c5699996522dcfaa11e801aea9da85f4bdb8a44ae45ff83c15ffe680ffe11
Date: Sat, 16 May 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778952633
