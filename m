Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375A3346E68
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 08:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780995274; cv=none; b=bSl7uppMGgajHGwWfd++1CB/7E5ysIn9HRVhM0Wx6RhvSloHXnWN1jofYoWCVvkBtP+7Jb/IpcT9X93fL0BsgnJMHAiUSW/guccdDE2tZMr9WXz44J5SsorBQEnjp3sZAm3H8SONbCzwjWnXUhoZbliVTK4IpyNp6cyaowW3lG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780995274; c=relaxed/simple;
	bh=8TQN4n5eNso9+ABxuzDUlq3eXWyPy46VRyYZx3VhEgU=;
	h=To:Subject:From:Message-Id:Date; b=HBx6oBNra7QuNYXnPYGE6J3sPtDpwYHIaLhoGEATakJp1Cv9IjFbDpPz3js3oTlk+L/V9N4Kxkv+NdH26eX49IwG0UHg3a67inAYUVeSNDGpX4gCj2vhC0tWjSNDR01u/ddSy4a5GG8TTqCoS+4es3zSxvERD86veUEjZvbGQIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BclYt7ev; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BclYt7ev"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F38C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 08:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780995273;
	bh=8TQN4n5eNso9+ABxuzDUlq3eXWyPy46VRyYZx3VhEgU=;
	h=To:Subject:From:Date:From;
	b=BclYt7evoDYTHcSEFPc5MNOWKmb3BtudZrivXtTi48JtuvhvF12B8+AkCfEveuLNw
	 MoqEZ1qWn54wvJvNv/elAHJwomzKuD5reeRy8N5SpfQRAZL96R5E2A0Bk0fG2Az/t5
	 K4HhJECOMDYz8VVOkmSJAEr3In2EbD6XtCNG1MY745TjF/950MgQhzK4qWXf+mH35e
	 lLiiT9Stgn/+RroKownCs9SO7CdJXg7+Jp40Iv40IPh0UI6x5oJbDm69PXMo0w6I6E
	 0nNeyFjXeSoLihRD4vggInLU64na+RUgzmIZSxlWjUs8ld6dT1YU5VXbScYCCmYIBX
	 SxlHlXs7dbABQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B907BCD8CA4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 08:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178099527374.27265.10753803326510568530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 788b0ae545a3dffa904c520268da350100410da59056585b811146337c76e48b
Date: Tue, 09 Jun 2026 08:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780995273
