Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C5F43AA8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 13:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717939643; cv=none; b=f88nG6zxs7M9uBQbxkwl+T8uw834e9AAU/fo0QnJEqJvCPpDzkMHrtQbR0RZseI5Ogbja1FQze/ZCUMZOSQcrMn2GXWD5rovLysvcr1hwW5qEEkFxfbYsxnItsPfd+BIrPYjhjydPSkZjIYafu/JaTKwUMamHpk6GpcCCnYv7HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717939643; c=relaxed/simple;
	bh=88te7h3ateQrXvbROCZ1D2I47ZDqxJGqSG6sxknOooA=;
	h=To:Subject:From:Message-Id:Date; b=fv7Vpznq87wNKdSesuKKmGn+jBKu+aAJ1teY+uy34JE0L8oeXUKiOPmzQVnkaJbmQUhws8hTz0VIIcQea5oasU1TAImnFMuKdqc4YaeTFA+AwI1QvMdES+UPKNK/a82o+PhkiRojJiIBMw8kpcJ82Aumaeizwly435HU0/tOz+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMMu72fq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMMu72fq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D916BC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 13:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717939642;
	bh=88te7h3ateQrXvbROCZ1D2I47ZDqxJGqSG6sxknOooA=;
	h=To:Subject:From:Date:From;
	b=iMMu72fq9CK6MI6tHC4VSFD0nJfxyYsI7xrH4e6/wdCI7OC9Ieg3vR4DL1MVGWx7v
	 eaKamsiWvxmH9qtoA5nWCZQ6jsVDzUL9ovqGJ8AWmYZjXggmZUMfBQokKCJ0/tzqHl
	 r5TUwq9d1X4rpLaOhOr+PQ89PvYL2IEMTXfqzXhpLITCteDIHhoaZHc9y21FV+k3t6
	 Kmw6llf7Ct85HlPQmQFUvXcT97GPpMy9biFfzQ6nLZKVRjcOw3Xac14bIcPWPAGzBX
	 40/MfGF/h8V3mj2duCXTp7G4cSu8IshnGc9thLvtUC50tZNiHkCAuMi7M8VZjs49Ql
	 Sbw2Y6QbSYwtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C573AC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 13:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171793964277.17450.10495661917006612853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eebe88b22f6117b169d24012672e0d52805348e86f249023ffe7e7bc034a6224
Date: Sun, 09 Jun 2024 13:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717939642
