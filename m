Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD5EC39EF17
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777636653; cv=none; b=CISERvAgVWsa3SLEUVI4Yu4S+qTgdJBS/AAYFdqqVwlmPeJrFNrv3qYQJDPHaDFk2PKqYrttNws05FUvw1xQU5HenVO/+e/1WxSzUdODw4rH5M/6yqYSeJ3V7hX1JpQbu4GimJ/pL9lgQqNWgHwtElI6K5XUwa+r4eF8sAtn50A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777636653; c=relaxed/simple;
	bh=yijWe1r1qLuwJHh0XgHQeBf+to3pYIBa/KAA3fO9zJY=;
	h=To:Subject:From:Message-Id:Date; b=Fj4vCbs0wzr4QWWD/0PInKo0zPKKLXi4Gm4Wwh5B2QWpKHagU6x7cSd61nfPXSJ2S0mDe4n4vMRDBeOow4J8r5DPh9AgHP/J89QJZjBk8FtrcBMXoFu7G+dYgt2h9tFKv8aghmhkwdnKpBr7Tag0QHvFOwe6ynRvN1ZXiU57r4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VqIJ9lpb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqIJ9lpb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7702C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777636653;
	bh=yijWe1r1qLuwJHh0XgHQeBf+to3pYIBa/KAA3fO9zJY=;
	h=To:Subject:From:Date:From;
	b=VqIJ9lpbfeEPwl1usZ36g/x1+yi3nhSjoUO+InUZJYFxjv1gHNMDBvM7k9TAboaGU
	 awytoROxDJMdl2k8nDljKC5DJs3+l7QumoCH1qmzkULZeDyERggq7JYlVVeelX4UQF
	 JeZyVmZXAptPJ0V0zImuoErDLF60FswthNxvtY4uL8SP1FkpEtEgEfwrjAtIK3FUsz
	 DFn7h9TtM8CBAzoXStBy0eDzFqdY5lk2T0/H2+oRvu/J+Rrlsz875HvgRJnR2Ur4Gt
	 adHGZw2UFe7mavMmNPurecTEWuuncm1F/rETHncepD995nGj0OJMZ8ndc0yInKzzOK
	 NjrG/jMIKafyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9386CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177763665368.32713.2992027385833792691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0fe3f58de1a1dfbf3cf02d0f4bf880f1db21977cb4498c8a1c3379133a7a793
Date: Fri, 01 May 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777636653
