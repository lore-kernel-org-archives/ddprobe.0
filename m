Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E3141A8E
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730789754; cv=none; b=SCUmGDXimS6bZIsmj1Z2v27Qco4A42CbqR/Am0TG2eq7mJCP3hVcfBZMwGQtsHC4cRZcYBXQFY3Hrtzyexy/DxVk0DhiGJ0FDKGARbkHd+EomSUI+qICo4TJEVxmkVhJOJKu3NCm3ohA0R7BJRcGnwXxJNLIdM+81MeWD884VOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730789754; c=relaxed/simple;
	bh=D4wxlesXrwyJZPGXfqcatBkxsJs950TZzhTXRDyhexA=;
	h=To:Subject:From:Message-Id:Date; b=HExWdbNRoWY+1+XucJcybbb3JYlDRXeaQFCOgeKjEoJnx369bGXdnc1Z0Eyfawo2znllD/kKgzQVtsQyWxGaNvCSzXrEs26qn/n8MOnjnjgmn2TMqDGSBa/mZed9iaVY1xPlL4/Mk4x845yTdqotS9f7cMOwXmYaGqAL2GJ6tzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcQZH5wU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcQZH5wU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83DFC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730789753;
	bh=D4wxlesXrwyJZPGXfqcatBkxsJs950TZzhTXRDyhexA=;
	h=To:Subject:From:Date:From;
	b=kcQZH5wUoqhtlfdRA79z8lmKykWrqjkrivmaitmKdpaUHh734HQ/pyx+xX1jdgyvr
	 mLYYOpcK4a3N/4hXWiprWqQcmZj8B4WsHRO0zuYkHVS4OEojtDgWPWfbmimpku52ux
	 elfWvP1519Tlg8aaeSghE8I/s6jDoqE9+E77Fm88aEUB2SAeRIW3kDb0y9NqhZ0Y9C
	 RZRm84UAm9gPN3N2VyfGkFLYzA+W8bVJm9P95X3a4FPhP6NUyhf2f/JjLhoY9XOAi9
	 ZTXn4K4SLqgOE626c2ATl9Q/KI/D6nZXw84+efIaeW3i/YcE2+gDhpYU/2b11O2fDW
	 AYsijvMEhWG9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96709D1CA3B
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173078975359.24410.3594481493894610230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55c1090a9d0c394f084b87aa96a7314001339a85e7ad9773e95566015d54bb28
Date: Tue, 05 Nov 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730789753
