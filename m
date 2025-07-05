Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273BC7E0E8
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751720994; cv=none; b=ecA2jX5eD1M3CFHYmbfVOUuFtDiTrN3xlXBkW9aGymq6yadiKwCQHUCuAVTF0k0MQ7CFEln87L5h8Wfxd85wDePXQFoKXnYHQ6JzmDxQSngmonPDsqtSHLU3HclHYoZnr+iD43yVGeA8O4I3lZpKmRZLre2xZKKDEP2oNkd0G4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751720994; c=relaxed/simple;
	bh=kc0g85En1SSXzPwJjkre/QYMmv9aTa6xL7yljIfcgxc=;
	h=To:Subject:From:Message-Id:Date; b=I079cGIpziImwiSpgb1hGmJ/r46UOwLYN1vNGiERIegbSqydd+mMiZOCbTgtBJv8uZPRQg3ZVoDP9tmyQ2CtxZwp/fYBVGVb2hw5JcgWTTmnRUjjsbsDVrmOOeLKFKumPo3a72PXHANinYMZatl7bLNvqgTseaB0jQDaLNkI3VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPaRLy+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPaRLy+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B1BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751720993;
	bh=kc0g85En1SSXzPwJjkre/QYMmv9aTa6xL7yljIfcgxc=;
	h=To:Subject:From:Date:From;
	b=ZPaRLy+3QcpJLkI/QMxzOiN8QCcrfy7edGvdVO7uNYz4TqZJemafLlodtknNxS9ae
	 3ajJdST2PMUTg3RMDnwAG74pbJPFSxqw/v891tJfwSsPXAKAPz+mCuqjyKlO7LODpz
	 UCHsdrx06vOSwJ5bpVgBxvTbbDDMXvSFr8C8DBFLHdjnXMkMoQgii1w1RazFULTqLG
	 LapCjVLmD7/Yeg99h5pMmtI50JHUwaFz/D8/kuy4IAtUxw+0TuwlpWfOcgWoIG90Mm
	 7PO8NlEef1RP0umO5nDpszC/373T/U4sMD/FRHNd7b7Uow3HypGAT1u31gjC6kfa32
	 RgPKaqz7qOcug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93381C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175172099357.23820.10890098424779513506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb8140216ca63dddf1f51c900ef3bdb709d1ab74fdfd6972457da4fb22069d96
Date: Sat, 05 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751720993
