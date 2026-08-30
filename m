Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3592224B05
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788079834; cv=none; b=Toe9+TZGdgPxGPKkWB+o+c7wwAlRz5enZOFxjpIAOaxqqV8YJUFrBsVANGEeY49qrPWwBNoANJuX1kEDCwcDEc45UMSYjVVGPUctT2vgs4HgJthRtb6MAf2tTQTV4RNscMqX0KC672rg9znXC63ZvXFsbv5jiBWvkXJkxgK2Lx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788079834; c=relaxed/simple;
	bh=HHGYwQAHiJvkETZsIZKpzdITWu+MpolZNZ7RSdoldcs=;
	h=To:Subject:From:Message-Id:Date; b=kAzJtzH7RgAn9IvAUEz0epWcQcB4dupF+x1Zst0+gXHqGhDu2VC1PfhGq4Ene6c9p3bVFw1P7tj7FCzmYqdkUK6w3biUzX6LFeEDqhlJomm+6fvqu7FQXDr71VIeouh2WynkQwcRr22kv5N2wSUWJiVzfTleedZK3H+8PTqfLC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pz3ivj3A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pz3ivj3A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9721C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788079833;
	bh=HHGYwQAHiJvkETZsIZKpzdITWu+MpolZNZ7RSdoldcs=;
	h=To:Subject:From:Date:From;
	b=pz3ivj3AzWR4BcLUOXFrVg2wqQC6yK9tLQdzim2gPYcxl00NscK2rvLbsj+76wSth
	 65l3ZQ8jE7gziN2qSKsFL6wa409KJNIMSBnZGa36p1W4VZDDDh3FnSEnoFBivCoNCg
	 lFrjDJJXyEaoAMgtL7TzMvFtSEGPheGBSJs0BLOH+9v6Ozjp1APPQ7lgKu3LN0emla
	 DbwxbSKWriSSl1bBrelbYoqcVtxMPTLc8U9Nlz6zYu6UUZpWvXf5FPBlyMfQVJPpKt
	 MoEZIoKNtLkTLBV2jyUMD0ea8cOsVmWAvAYVPEH7eUq8ggEEUxqtRqbJqIjcax4CMf
	 ounV6xFoWm/bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5839C61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178807983370.20395.5306327928807956967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a16ba88b9e243eed1f12f53ec67e9fa15662299a0fa67b27869822021469a672
Date: Sun, 30 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788079833
