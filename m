Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ACE03AB294
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785486034; cv=none; b=MGnIPDABmu46YoDI32+qZt6sP2DVoVkHHMzDmXkDcehmww4hX3z/Uu+dORCB84SHHaIk62ORNbVHKc8UDn2nYmyKKmeYqpfngWkh8ksyGT6dlcGh47edJMNaJuYR18t3rJtZrGuYwTBH1jKZb4fnYbcODEh5CBfrYLihFC8dKM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785486034; c=relaxed/simple;
	bh=qaVvoAPBhrEL4wUUfRuRoM8IpjWR670qd4IVsmk2Nb4=;
	h=To:Subject:From:Message-Id:Date; b=KwBl0Jrk6S1x75D7LaNUtFch1zIbs0d/DkLlOn0UAE2e3We5BuKpRVYYmJAU4r1nviUncrWjxsoyxA+CZ8xMPN/jWm3Oufkug/wyZaIscIUxz7CmwkO+NVYb7RSwWabPPJCg4yr5M+B+cU1EiQxBvirEHDiyJA1M9cEdurpAYZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdXVnDM1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdXVnDM1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE83C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785486033;
	bh=qaVvoAPBhrEL4wUUfRuRoM8IpjWR670qd4IVsmk2Nb4=;
	h=To:Subject:From:Date:From;
	b=RdXVnDM1MGFwXp9BXswJobJZfgV0fPju+RkQHQHk3qK0Gd9rA+6fU3Iqp9Ib7M+R+
	 81u70E6UW7Dgw+wX4Hpt/Eenc9FAZTRh1nJ+DKN5ysbbFG17+k1i19DacOkhgcmbOs
	 2EEWUvUrpnyAOfvdS/8ofMYm9MZr5F6LWAA7jir6lt8nCgRMMetaJAxC/zxh9XbkZ2
	 iaQI5Ic5MU+YxwPyeUZHG9EIqSinrqPh21hMxRouJeD7RcJTE9p1y8hoXkjUgutADX
	 BR13yR+AzTqFd2yObLAZICRY187CW7rbU1+cxnZcq4oxa+AdS1z2tgFm+xAA/AwCp1
	 uLame09Az9hGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AE1C5516D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178548603368.2713.17946910776724244699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b553805b75e770e2fe957e96e0b02bc0e31876460820d2cd55b2d79e8b5d33c7
Date: Fri, 31 Jul 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785486033
