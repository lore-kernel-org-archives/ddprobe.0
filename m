Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2CB46A604
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 21:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788469834; cv=none; b=szESnJJ5pOAkvAVoEf4pv/L5nimhi6hPVscCdYWTvoK6roCF7j480lAnY3QarU7E1gNGHWWny+DIOY3YV6HveorEaIclWeKC+uvF61H+QFYWulkBEB5YjkoUbC+2ROI/aGskCpf9+7dH1gDTvrlZ4iz5M/B7UsR61gSKFdmrwmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788469834; c=relaxed/simple;
	bh=UzG+lxcyNGhar5E/boC0rmfPiglYPrebEb5bfAuLcd8=;
	h=To:Subject:From:Message-Id:Date; b=rq+PG1IyIhtuctKcNwUrXPW5OugQtTepwkOr0kBURJkYFNrgWdbT13IzZLdv3w/31wcu/zkpjxTu+1AoGUdrUzlUWNUn/pY4ydzckeVshbiT0Ud9JILBpkOohJCdngA05hb8gYHg8/kn8342Kn+rvmy2GW35gKeljG3uQdxq8MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dj+jMLAW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dj+jMLAW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1413C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788469833;
	bh=UzG+lxcyNGhar5E/boC0rmfPiglYPrebEb5bfAuLcd8=;
	h=To:Subject:From:Date:From;
	b=Dj+jMLAWN0hqULDGyr0EH0DIR4C+Lc5ykdTJZu2iaFbZJDLPs5tMOVcCTTSgHMM5z
	 rIHZjEv6YxI10hSkB2vT+o0vHPLZd+v3L3NL9HKalJTbCMQVMvWAS2XK2I0US2Trr7
	 eWOJuD/p7QrkSgY574rPMHrDT4Fyjzc0Gi4L7ltZ3DJMZmrfLZeVejtkdJmHjgGoVw
	 NgRlcuiOL77D84lNwiOj9V7ZEQ4YupavKAYUnnQ9+r7tQ92+1xPCUNgSVYrI/7wY5j
	 4302S8VDtxWUPMZYVKvOjrlZ4DLXeYHETaHts+VMtOWlSRL3cHfDU0vMUAy/DYj0Dp
	 TbDcL5Ws3OnUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD24AC624DB
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178846983369.3408.1275276207601822984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed9f77caa978071f9430d4767d0d5c3850da06ff1da873d6c9fe5e5d8518014f
Date: Thu, 03 Sep 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788469833
