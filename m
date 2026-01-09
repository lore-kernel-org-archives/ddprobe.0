Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1614E24887E
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767940434; cv=none; b=QuM+jZGiJL2RzU2QGZ5ZZipmDnfYQt/wP+E6ISfZQAIqhEVTWIl1ACLqWcFjDr7l89M4MlOPwjRLhgLO9Ul9Zx0VZykQHWEMOOfdxuVnqa0Gi2e78wuxDcsiFdG/2+tcd/Bx/lX7FB+wS2LsAzBvpmiIz5DFCSf/GM0s32LqHDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767940434; c=relaxed/simple;
	bh=J1gQbTlpHYQkWUgfBmotUJDVvb4ZdhZogw9/WiIphZE=;
	h=To:Subject:From:Message-Id:Date; b=Vx1Vu9FJjYq2Q3aeWsLiJlyyM0as0JSt3CkAVBgpyjhVHbYqd8mOUHsz5wxabvAxcuoqhKYcatHUzEgkxGKtDvUe8zcArsZFx3j34vG/GKDXIDNE4hzzctP9QaeJAbsULxnLQduvjgDeDxzTNn7dh5F3QYu3aIqSzY7NvSZTXwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=igBvJmZt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="igBvJmZt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9819C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767940433;
	bh=J1gQbTlpHYQkWUgfBmotUJDVvb4ZdhZogw9/WiIphZE=;
	h=To:Subject:From:Date:From;
	b=igBvJmZtbTx14urPolpzSALZ5KrQ7SmIYqzbouiF0PVirU5gcF9PqBVvU9DxR5mgk
	 /vqKxXZk5G0QDoLtQTA7wnXf8BNC6J2AH2MyUv+mcoIZpQNXx8U/hvZq3nIs03IHAq
	 We/NdOfsdc6GVM/Sd9TTG+npPM+w4/30SPcPJ12eaDw494NVkbD1TZGUTcXjOHCN0k
	 3S8v8imYt2Vb4+4lT9CCKtzY4W3QDiTjcnfKwoPJiHCxmDEgJIauHtLPpybmrNzMvO
	 Ef1hby3A8p5tyvDgebewJKSZt4w8Oar7RUyH0qvwSLVZF/z9eBGeedNwDrgS/N4O5z
	 yQmO8HooP/vhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968DDD232C8
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176794043358.13565.7647466738584098850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2631c9f596398c31eb597642d764cefa7448f6b4bee5999af360e2c4f753a3bd
Date: Fri, 09 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767940433
