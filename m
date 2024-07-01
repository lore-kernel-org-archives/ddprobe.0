Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634FF38DD9
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 23:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719878123; cv=none; b=LcPOMTE139QobinI86NiMwJQpNZulfcyNHN/hd1+bUwJPA1FOe02bx2CG/0et7bJ9Ho5aXvTu82ecT/TMQKY+/Kbumi+YKz8y1NWT5zU7tbc2TPScldXAutTjo4OS8Ljnr2t6FR8Erhat0/smzyn/BbdSuikiWLDZ/rfvsT7yqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719878123; c=relaxed/simple;
	bh=ZXig2aHLth4G4lw/DwH0WWBQ4D4ShFFkkwS6SufRfXg=;
	h=To:Subject:From:Message-Id:Date; b=g7Z7zv6Iz2KyCNCl+pYQ79V1Sa6/kmx0KcW1j2SpX/vrVa9bwsYmVwEHJqizcu8YqBoYN4mxFsxbPzttqNqHOE6dYExMOG5HgdW6PdxmnWlzNJdlkO6nQ0urFVy7XH0bBQv8nkK5TvZez0RuHSTRnclqkX9PmS4/Hx2gub2srUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t0+Aodsa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0+Aodsa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE83C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 23:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719878122;
	bh=ZXig2aHLth4G4lw/DwH0WWBQ4D4ShFFkkwS6SufRfXg=;
	h=To:Subject:From:Date:From;
	b=t0+AodsakcuOelE+7mrVppfRAF7eFRnyV/vEhsdF1fiI7S5UHhxOrfSeUl/xn5E4M
	 Np9FKtOdIzkpWPa2FpgWsUPXxl4uSTMZ7pi4jPK9eoZD1hlagWosLfyqZpAspYv9Th
	 pmMm1XJTRTYC1O7yLWUbzWWKCi8p+fea4mgjHYvbgFftYqpcUFW4XBSz/vj4IydnYA
	 JKV4Ogh9yV9sMeWpMulZz4Gw5SEDyMNWtXoKd58hpHWtqGJQJwkg+foUsnFyaQdfxD
	 E7CRn1508gUZ68iQRvwJUHeQNa3cdUlM5epe3pdDQbk1gMmyGEnYWuA/Drm+QvI4h/
	 rj5GAx94lpLkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD47FC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 23:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171987812276.32004.695824514021293777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cad6c5016adba80ddddbb3c57e77ede7cbde36c8fe0e12a6ddb56ed09b54cf2a
Date: Mon, 01 Jul 2024 23:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719878122
