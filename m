Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C6C224234
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789234234; cv=none; b=D5CsVUhLMyzed6Y/+1pLdMSQN46jILB/oMFz1qF2VQ9qC1wMJp+QKh0+xKCmZsQCUnRyxqXWgs/Jl2KAfgTnphYaWQRYFfUdWd2Xq1DtODiMprE7pa2sWB0vkWG4UqV9/cBUtuRUz3tLULPnmXFqDvlD2SOk7SCs3xpuTBkp88Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789234234; c=relaxed/simple;
	bh=AT84KypMcH+MABc6kB95H18Z7hXBiY6bD1dCeVowXAY=;
	h=To:Subject:From:Message-Id:Date; b=OzyZngv3WwFoH3p4nHl6lQNr4Psiw9d+1m5N7zMOP45n/1/v/CAglrqqxwbfxM03LU9rpHJf9qwqge5eGhQ+k3KQ84W5ULLSA16Ni0D2AjuYQPfFFqciNWz+A2mwetyhNLwaqU54J5nj78CWQRUCSGVfqck7PkvhnUsyxrFVRg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WtoiSn3Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WtoiSn3Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7BDC2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789234233;
	bh=AT84KypMcH+MABc6kB95H18Z7hXBiY6bD1dCeVowXAY=;
	h=To:Subject:From:Date:From;
	b=WtoiSn3Ym46ZfqMykiP7YsS+NtHlzIOKv3YB2H2+cV4Y+P3gkM2QYU/Th0Njq5ezD
	 zID/BOff2+3Wyv5tPbl1OtoyTczHfTzbABCx19eZ6SW1HG2E2dpuOKQQrgT/sLrcBU
	 g5psw+pCHZvctU022uZ8r+AlnqIgeQgp9zCMfuSNna61ZYCCMsaYnydAKDwjCPYkv9
	 VAZrTB+gvV86vY3kP4cCH5isoBXYEYlZGVgGCNBo1SoRlExS2w3YhmQOAhuua3nwkD
	 q4oIINCILR3OYK93Pc/6ZLI7G8tH7p01rbqoHok1sAh2wmuukxVbLL2e47E8YAdPQQ
	 lD9MEa5Py43SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F68C88E59
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178923423368.4280.3533473922633041960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c228aa2ae1b1ec8aafb67c6cfab33f26ac4ed46d9c8fa06443ba2ec3e21ee9e3
Date: Sat, 12 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789234233
