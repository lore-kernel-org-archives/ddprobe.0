Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C451E25F6
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734114954; cv=none; b=fG9KJtWXY6qXPGT+nPi7TfeavV+Cl+SY24K5K21mb08OsEr4BhnDAV9zBjDW+62J5Dpyh/EBsKWolPz7JykfuW3U2/lWWzR1Nx/KkWVYAC78NDZqu1CtBJQPSTqQlMR02INZahLIEEVB53Ha6DKMCEv3YtxLxeD8sqrhDoQp33A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734114954; c=relaxed/simple;
	bh=2Ry+w/RjxmHNrze4bdfZtUk0JrisCawjQm1qajke6cg=;
	h=To:Subject:From:Message-Id:Date; b=Uh6Gi53Sa311J2tUxGxKSvXd4XM3zwi7VqTr8oJo1LO4nV7q8ExUxpKtanGt9H55Xq9EBUODkMRc2W3IdmP5/Xg6inmoohwFHpLToxSs8mh3ZaueM3re/nqDcXKHnmQx8+tFoZbRsWnE/GLjyNJHzeUR/UlWEwlNgAF7GK781MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzOxMrGu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzOxMrGu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB055C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734114953;
	bh=2Ry+w/RjxmHNrze4bdfZtUk0JrisCawjQm1qajke6cg=;
	h=To:Subject:From:Date:From;
	b=dzOxMrGu6hXzBj19lfnbda2/M3Onvf1lx0juw9esxaGm5psEfiz9qzjjtS22fnxoD
	 66NhEIv7phZjAwP5a4dqFOwrU9GT0EsNtCwPNCJBvxGv6GVwUuUGADMm2ISsx0fkyd
	 LPVjVZjLvcl6ZOVEp5I58Vo6DF82+1EdCgsxv5hlWA+V4x8Dc5eua1uGyPnqx1TEX9
	 UE94BIvraUprPrDxnLj9utZ1T3KKfOz0W9kHygw5fTuZbpiWnQKceThFtNiYuuekUm
	 eiyUjEUXyOnr2f+J1rL1wEMhoL9g83VsN33XVJXkPPICERmNDHAA9J2E9yrZfDDIMM
	 Kq2q0s24dSIGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9321E7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173411495365.25652.17826350240872863106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c86f4af6dcc8433818c738c480e030351117b475a2c8338252d5f8d864b9284b
Date: Fri, 13 Dec 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734114953
