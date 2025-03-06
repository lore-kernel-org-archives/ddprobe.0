Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A1B12D1F1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 01:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741225135; cv=none; b=UxGPX5yj0CBd2taIV8xmBz3UHHiI9b5senn4EpIadEK3HIzgR74sCEiFUW1qBEweGA0oFDx6d0d4ChmvClgbHA1tWZs6ZfwQjky2BsZ9tUdXqhifblC0NWA8nnc6jR9HgtOoBomHqy+cSpczHc1k0w9VTs/dF8lTbV5Ecu5UT6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741225135; c=relaxed/simple;
	bh=o5/u3Nkt58WoA+WwW3M9MzZrycyO2uHhSnJwNpC1Xlg=;
	h=To:Subject:From:Message-Id:Date; b=bSwVXTagBlQohexBejBs4TeUl41p+hBpyqBDLMoKWV4Qj/Jqcijq9kYpdbT9GwLB9UNDM3OAHu0ATf3+zgJ/QmB7fe9F5xRo6+FbMbgXjpy2sghQ7fNwjkYboVHbIyroZdi9Ki6k2TyItzFsFqzeNoPu8aLvB6n9eNKBfPd/1kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cleCBvVy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cleCBvVy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAFD9C4CED1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 01:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741225133;
	bh=o5/u3Nkt58WoA+WwW3M9MzZrycyO2uHhSnJwNpC1Xlg=;
	h=To:Subject:From:Date:From;
	b=cleCBvVyiwbfM0Hk0CuQGxELdPq/DoFUenKTRy0lGWQFdmcAk6m+veER7H1WmVqlB
	 YBNGnO4l3obbjXrCQ+M2QgdNPaz/1obI48ZCTbEHQVmJ/RwsNQZCUPsm6vqjb96Jof
	 7rmSwPMbya9u97M5kB99Bd8KJ3gXeExHyjqDNUaXttwVtdEnl8sd7rc4MDmJHvncbS
	 TumdLVgcVLhmXPlWXD78BpFx+OtRMslCyxoY3ne8JnZHCpF/AQFDvfLpP5iISOxYcR
	 BPHUYVBtYdQ7FpbziRe6i1ecZ64wPI+fCHhzXi8JSkR1UFcr2dZx2EmuedkF5BZk6g
	 UDIPPBMcHA5hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980B7C19F32
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 01:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174122513361.24666.11587134172909003719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64b0a262ea865e7a8fc871e8e3adc759bf28ff46609cbdd86939021f7031a18f
Date: Thu, 06 Mar 2025 01:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741225133
