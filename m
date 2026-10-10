Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF593B776E
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791629434; cv=none; b=FgnGBiiBGahNLcVujie9Z+/4j5VAqqmKM5G3iiemCh3ZobodkKZHzHI0pVus4ilDhCoP2Gz/hJ6o+lp4xzrcWxV1MBVDUpjSzYQzgYnZgAqOGBKZKQR/npiR+lmDYnkTbd/ECgUKBFiA5lrVlXES2vweQ2JFxqzbclYR8lMLOgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791629434; c=relaxed/simple;
	bh=Mio8kdvlOc6Tje6EhcbVdbRfViROuqiHzEZgsUjefHw=;
	h=To:Subject:From:Message-Id:Date; b=YGDTr0WrFeOoQ0IKLVt4rREJWJKjcyzC6WYY/QBrGC+qtmUUZRMlBYibj0YAwz1sDdjbKyTrEr9r79SuoGD/ajMt71zdiDhlmNTfxw0tUYUnjpw4zXqxKVqCD/eDr+VLxKwyP4Auh0fNgyr+8sDd2pm6brx97imyXTNsceXTAGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCHUE1Mb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCHUE1Mb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3196C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791629433;
	bh=Mio8kdvlOc6Tje6EhcbVdbRfViROuqiHzEZgsUjefHw=;
	h=To:Subject:From:Date:From;
	b=aCHUE1MbGBdgcWac7LL8NjZZKDd1I1U2zNeOSbC80USZIpVQQXBjz2LYbq/HPJVa6
	 9bDUaE/0F0dfcxxbHmf3wO43We9v68/57tgyl0oj2daKO1UwTmrxEc+Xah0SH8VJ71
	 wz55l332UIBwgfa7bZM3/B2y2dXQ8h1BwRS6Jic6X++e4uawZ2yPx+O1YmBCujOspU
	 8wP2oTP5+yX3poteLKo/qf5hJgJRvOxfzWracuC4md+7H/F4GgPluP984OvhsnRJhl
	 ToEpeTPV3tDpZMLj/IR3jdV3u8MNHqKX8K0Ry6I0+lUrLfpFNmsoOKjzidoIg5g+JT
	 srDYPn7dnaplg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDD7CA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179162943368.14815.3968130371094909973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86aa9494b111383ae1473214b246ac688b037a547284b107aefa117bd39f5825
Date: Sat, 10 Oct 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791629433
