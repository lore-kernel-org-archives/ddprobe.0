Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1516C3CA490
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 09:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779872554; cv=none; b=tjIGUXHa7ysmDVil+NG/yltF3PKv9LnpUKxaX0UK95MzjHldSwSAcndrFFhAawZyJJNrZsppV/OC11c5nU09b8GQtbBNxXr01XK8As3PJb0L6t9FETHpv0ZgBjznyOaXigvTJI/8Xj4Op6OSq6waCMnqF9Dm/IetYddwggzitCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779872554; c=relaxed/simple;
	bh=B8oBD+53FxYhpPTKJDeBWDzq6+fzX9HWiOvQ5FZxCG8=;
	h=To:Subject:From:Message-Id:Date; b=Ap13tuacg9tIPQ+ENaRDtTi1U5t9xWU4wO8X0RYxkoAzO5xMuzneu3Oww7lsN1Gc+lpKCW5ZUurJCVrGHgjFOfprxzkSTbkARP4IbodDDhhTXxrO7s6uV1Yd6lxMvju6T+vhTvPg45S2IqLRaAhWgi4DP57TjRmWR0gzQUIz96o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEJSFc9/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEJSFc9/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CE1C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 09:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779872553;
	bh=B8oBD+53FxYhpPTKJDeBWDzq6+fzX9HWiOvQ5FZxCG8=;
	h=To:Subject:From:Date:From;
	b=nEJSFc9/Fj4M507rf9B9wZbCtfY5bsiWN/QmQi+MzTvJhJV+hhQKVEdTlBsW8sZ4Q
	 /wZHxLc8O5DT2lJ2n/d3X7hH9uNkLKbXmhcLmdbrHQSTU/GmRO8XLgjAd7k36mFM0Z
	 ls7PmJzqwTb7EStqbOhAZwIC/Zn4GOE+1yWo0bQT3wIn4jzPDpKpGIBg+zMlo/OEN4
	 H9dJJgPK/deWtUqjUZR+SFGJWattCMSyj7qj//rzrcd2Y7Km8sO16zynj8QaVkPayZ
	 fmK0jPIS3a0ZPPLqsOEwlc8nbZre708ZSBg85j9nToglVKy45p7Nr5cAX9emJfxiH/
	 7LsMk3G0bNp0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA84ECD5BDE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 09:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177987255368.8650.9563983819632240289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5b90179dad177bd31155f0041f5ef08d2e8bfab62fe93827da5f855763a6af9
Date: Wed, 27 May 2026 09:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779872553
