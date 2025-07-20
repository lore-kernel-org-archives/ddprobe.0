Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2683E1F1317
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753047594; cv=none; b=Lpp/XM9q6OzmuXIz0xuwUF/Cr9YZflRh4RPb7ZS9bBcG6z2uv7DgWWSqauezHndDaoXq0C0YxwSx90uDo4ft2EaUVmvUUwOfEG7ASizWeOfOgila7btm9zrWPwZMmiDrNT7k80V+37cz2rJSyq9mF91ECcURZqqunJP/LH/bx+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753047594; c=relaxed/simple;
	bh=AMle55RrW34pwBvCKOOoW0Odydid4l3KWrMgRLDMuEQ=;
	h=To:Subject:From:Message-Id:Date; b=VoChQjLvdZdia4QC1BGueUWd2sgwERMMgGQlBa/Y4VvRFHYUY20jX7JzXJgRpF++qVZE0MZy0B5sGW3IQxIQIztulu+oSFVcfAwTbW8I3aVQKRd801rk12KkZZem3XEbUBWC9u3lRPXfSj6N6xaKrVlOT4L3zqei0/ykfRt0E0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhIMtezI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhIMtezI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6756C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753047593;
	bh=AMle55RrW34pwBvCKOOoW0Odydid4l3KWrMgRLDMuEQ=;
	h=To:Subject:From:Date:From;
	b=FhIMtezIWgf3Iz09td1p5yNJehuvzuPJuZXz5NwkQ/ZVlR2OWPqbmXZWYJpYv4i6A
	 gB4ckhH6Cy7Tjg0awbeu44kW1roy9A6AzD5YURBBF5qtVMg5MhyMOmIFfGlk66Mcel
	 jVkmHiq8yODfSlWbOsBXSDUm6rKcNpb58XLg6r18ytjReyGTFoT4bgVwqwempj71pc
	 92NORb41jVqGAcamRoR0cB+xwbwKHmT8FwfLrKSpZTB28pq+j3dS6HwiCagS1ZK7wW
	 jDnPHDUVPqegCriB0p82LS9nKVjHM3fncGKxntu3F+0KQlZF6RmxOxbMNSQHD1otih
	 3whLHE+/3GFEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922F8C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175304759357.26920.2001346886967500365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 658462b565592b94558efe2c1816e6a4b70818fde85b6765d7f3844681e0eabc
Date: Sun, 20 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753047593
