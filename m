Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8878A320A04
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 13:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784123914; cv=none; b=qqtbxRZePWc7WfgCtzTjPAn8BnQiVSTko9y+Et81c7uq8dtQ7nq10hQQh2xfOrYIWo4gmknWAdfVUVhv+4vBBxtLfqjb4L+Jv0IyZlfLIFhAOZSMlZhqwv5/5R7pyLXqPtIF4yivJ469oT1VSSgf2VO+9Fx3n0vnWRUL3MANicM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784123914; c=relaxed/simple;
	bh=LbAsFSGk/t8t972LhN80gWvYVPgQ8Ab3O21ZaYwvMvs=;
	h=To:Subject:From:Message-Id:Date; b=nTB58/wTHZVejk3JWMMhCpSKtfQrmyj3l4NJNRR+m0P0McKYPiOJB+UI+iG+b84/YvuG/gwwt7SyJYTaOLVNNwT9NsH6zXfs372f2MJEIlg0zAZUGZ0K5lERuksvjp8pfLi+Ml4ZBbdfg27zExp6NTMWYaZteCGuxi1P0R7SXlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVIwDosE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVIwDosE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC774C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784123913;
	bh=LbAsFSGk/t8t972LhN80gWvYVPgQ8Ab3O21ZaYwvMvs=;
	h=To:Subject:From:Date:From;
	b=kVIwDosEbufSfXduDmb+eUUNRtbthg03q5DKFHmS7JEX7+ZH5Zsbi3wVCqwqfBm6H
	 y5Umhvj2sw0BjKWR9iksrdiE556RSQmXYseZ1TgUMinMrudIQc0D5LxJKLZT6VCRLp
	 b+v4w95CtvAvid7axbvZSqPwqng3gHD+ptEj7/W6Coa+zGl2R7x+wqzY7WLvYwF8YO
	 labHjVkRh0aeZHe9PjRxZhOxdpzy7nQzxgMOnNgpCd/b2pC/Ev+UEEaCuWHL3DXuj6
	 2O8zDVAWzc8C4U2ZIGwWyXwYwRiU1n+pnDWCex3sfBq+TCWTrX41J5jPm58zK1/nfV
	 vR2WezhrXB72Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD9EC44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 13:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178412391370.5460.4179867552370413601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be947c8e9b9fffeef24577ae49018ccef8894117eb6e7609be68bb3266d16883
Date: Wed, 15 Jul 2026 13:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784123913
