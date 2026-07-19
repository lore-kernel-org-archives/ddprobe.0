Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBD43A5E89
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 15:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784474914; cv=none; b=kIyLPHFbp6aKY1oa1ACdXiGjqGOcIP9lmsDpQBfrM1UuEaww3xZa+9d9/SoNmZivR8RoVOtw366PUaF1nXomu/U/2GFu4kndD/7mfML4KAUgva6WGhxXyIyaJHUhIbumqu3ng7DupD8m4/MOKuCT/8zh+eEnNUFrVbu8WryXk4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784474914; c=relaxed/simple;
	bh=FlXQ1qM38UQu91AGTQMxOR3iYtBfyHWfMC3REZhtTmI=;
	h=To:Subject:From:Message-Id:Date; b=Qwictm5K2x54hJvOENo9pFzl/XulDBeUyH7nLT7n0TgCvPRVm+ijKMu+1+QKBpbZnndzbwy1mAi2716DIvubzahb3rLFiXFk1XdNhbhHbHRK+Zjv4iYPRU/jTnhp3fv34qipdOvdYkhUnZqZ4nlJL97/aYcV3SQD9vUpkJ7A1pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fGajaUqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fGajaUqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C86A2C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 15:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784474913;
	bh=FlXQ1qM38UQu91AGTQMxOR3iYtBfyHWfMC3REZhtTmI=;
	h=To:Subject:From:Date:From;
	b=fGajaUqT6j28ZHixjRseogBaYsB95HlS6IjogDSKP6VOl4O6tqFUqlrZmYQk3JAI3
	 xdOUHmLoJtmeYmImtw9sokgEb4hZBeqdnXRdfxb7vxF5yLGKWMuUd5Btu/VDyrHfJG
	 f9e4ByMG4LTbFcqFhQIWRdHley8UJ817zC39ALYDn0vNR0B6gmmIyJPWkhyZQhbj/d
	 +Fsr6A6FFmv5ZBs2UuUTcy00MRGQpTYvQPju9sJi2TrkgX8Ouu6Gcm5PFEVrJOSpdm
	 4hPp7NX0VnLgGeXDwX1vhB+ygBZbv+4V9apHiwTWUQrVzOhU7LDDkFJ/lLW7NJRBGJ
	 T4cpfFoesIFtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8399C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 15:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178447491368.2251.16181420794179607922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1b0cdc412563d6a3f046597c92a063a81d6e88bdbf78d76f4a8a13e4bf0187d
Date: Sun, 19 Jul 2026 15:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784474913
