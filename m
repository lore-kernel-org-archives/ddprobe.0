Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321742D978C
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 14:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779979354; cv=none; b=Xl4jj+xo3lydMCEeqXQlrWvdxCif6mdiDkHqDdQRaodjkFtwcauTihk+CenweO1fH7jaXTEW6Gnsj5QbwHcsHwdnHtWRJJomEigX4Kqdl+GGRKkWb7FbLVgw9r26ML3MntRYZRrMbnj6N1GqBalp+ph4fA+bBbcPySLzqnLC4u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779979354; c=relaxed/simple;
	bh=LuDZYiL5B1K4pOy4SmmJdMb0wl1nVP3uw3fMVfrvQcA=;
	h=To:Subject:From:Message-Id:Date; b=gNQ+oXu40H11Q+SzwHERilenaYpkUFNLyHhQe1bfI97J5AdLVWABRRZQ7C8S+Szvld2f25vicFlzhMK2dwogCC4G21i6tMJOXBvzN+umBX1u+gx9tFxh0OggpIlHE8eJv1lXk+Cetwy77w88EMQ6QT/zNwMY1ooD+CqMbdSVQuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uk0TEKIS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uk0TEKIS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A84C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 14:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779979353;
	bh=LuDZYiL5B1K4pOy4SmmJdMb0wl1nVP3uw3fMVfrvQcA=;
	h=To:Subject:From:Date:From;
	b=Uk0TEKISwsVb3K/t8Dj/j1/zM3UzYXUCBEwqDkZBtqmHmwVNUwPVktGuixji2zng6
	 kpcyBUqCqymgr3baRDB4R214ktpIWyN7F7nO7f369DSd/HvTsKi31BV+PoLx7aXYDE
	 OeOZEb8FX1yfOh3KOdQNyV4xIL6D+rluucn2fCqrf0fYG4sHNLEMyM6gw1/6t4kVnp
	 S21vEgV6JuAL4pHbA0y7izna9cunK8yTduDeY3QnJMuDgwHx7L2Okp/TfryvN6JN+W
	 MZTErDOGZaz8/nCBJdETEYOtejEUDC9QAu4456dyyPKa/igijkFLxvLo6asvJHKq+M
	 NU3ptxjmWZeOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BB2CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 14:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177997935368.25407.6960401813312038986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b2cb138ac0b6b43cde34b39396f9b1a918737f732174b17a83d0b0f1815c380
Date: Thu, 28 May 2026 14:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779979353
