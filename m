Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CD31F3D56
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 23:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741907934; cv=none; b=SJeTY6PjSmhACQfr546AtOwqqiH6Ebp1OfVeiF1NLnUo4Tcf4BuJeIuOz3fnLrfSZJfwN9j/PwTGIN1i1paPL1pywnDLUbCfvoRPJkNIiYIn+jwpmzey20nr21/5QycVkMGVlc/ycvZioWWMI72PcWYCoGtUw+GNE3TEeJIWAp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741907934; c=relaxed/simple;
	bh=XsxdImJLOiVnjRVkwznCdWVtMQ/lvP+TKWHcrmWXe5M=;
	h=To:Subject:From:Message-Id:Date; b=cm5LIHRCcIQ647QsvQ+Jy5dihuRQyurZ3SjuprW5Ip4RmMkhNJenq7sPZOqTtjPli3FBp2smb4D8+yQh2sBlqISQe01PcRW95aCKMT9M3yygI73QxAF9ekKeoe/7t61xpqaKuIc5rpj5ZTbrceVZ+lFTyb3BvqVNAxBhxku/nsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNcFfbBK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNcFfbBK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5EFC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 23:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741907933;
	bh=XsxdImJLOiVnjRVkwznCdWVtMQ/lvP+TKWHcrmWXe5M=;
	h=To:Subject:From:Date:From;
	b=RNcFfbBKCoIhAYprmYIZsyi7WDhrXjdxMExgl77cM/ECVWRSvr6MRDhQE+q062djw
	 96taPS6QCAxQvdBxj5cbPEcNHdrvU9q5CzJ431Rzfx4vTASXvJVnR7g+8mJEw4POXV
	 dCG7JABwxfdAynUa4+Hk0iBLc1bRKoWvDTyUKpk9JvqSq2KGV4ycew9rjPAWU1LMAO
	 MRpH2wQB/qbnMHCxq3GZxHX0MwaeP13I1PLnyh8kMhm7HJOwSlT5HesrY3Gr2zugNo
	 0MFPHPk06i2FiMjoemYng5c7ofbMRWdc7eMpGeuieh1vabi+buX3jLHYS+HRZpChBk
	 OFcobyZyfK8yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0158C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 23:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174190793364.18703.12134860332709596352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 414674192f4379204497ca3861e21b6d2254329e182b9f0b41bb2d0a2e7dbf35
Date: Thu, 13 Mar 2025 23:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741907933
