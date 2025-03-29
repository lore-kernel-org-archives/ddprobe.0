Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EF241C85
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743246595; cv=none; b=Elf9A9PFJpAxHuc4ucKIXSS5RpA261B5GwrSNqpr7iRhge8Mv9YaUXphgo4rOEUlUN4Ac6w0Px7CgEGaYeWaxoobd7GaHcE5xO5yCA6mCCfOGQNKWy3M0gtgAI/dOI3Wk4Zhg71dH2shYMEWrjpqv/IiMVUFHi9lEjE4OsR7xKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743246595; c=relaxed/simple;
	bh=Ku8W9f5bL5EBjpFo0pmzX464UtMPz6r8TXn91IpWdMk=;
	h=To:Subject:From:Message-Id:Date; b=fD0TsGfxkNVqVrQagG0p7PnEAKkokbsTDw5XYBcl9/xtfP4tujfe90+k2rs7c/lqu/qIUAMA5jz4KKixOAFND5j7NMaYM0TGH6R3t7JoO3aZPJtOSBxeBE0cNpSSNAP9V3aXDDhBiJ7iVT6SeYEQVq0UABFrXZhnl9VuWaBVyXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=na6xdBPi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="na6xdBPi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D35C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743246593;
	bh=Ku8W9f5bL5EBjpFo0pmzX464UtMPz6r8TXn91IpWdMk=;
	h=To:Subject:From:Date:From;
	b=na6xdBPiRU69ENQwEapVsp39nJjNscitY3+qDbsnZDljDR7O7qXQwHnfwaDqLefgk
	 8/ZrATtV9/5FEfu4sLe2AJ3JY+BUmyeD9yovmM6qNJzBNMACI9uIxTDqbErM08xAzO
	 /ol1bM/GoOXkOrztfMyptaVdpaCnB/VYIp+kblFHhpWtPK8QmxDzcvwyrlDKpEv62+
	 vWrr3fzExt8xJxx6gB7bMWPThzeoc8rFPfTheBBpsULpPlyeKoMr9qgHClOMWBkmgF
	 BxsCWqoftTTiSObb32VUzlx+NCh/6434nUyt4YcYiogpHXZ0iG8IZbcj48bCtNQEP8
	 55aDuesxA32Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C05C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174324659359.19541.351211972091285967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a92a937402231e8f5322d8afc2d9046338d5c6d040aa6fbae2c89a5f92a37a2b
Date: Sat, 29 Mar 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743246593
