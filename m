Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583A316FF28
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 23:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718753363; cv=none; b=TVinylmn3TUGNSGqwz6s0tty0Dpc30D6Szv/KCCpvvMSyiFmDP2aYv15IL942ae28jSd9u8NXFhEEzQSUTPkuvUG9dzMoH275cJb+DurCtqscSvDplCupyPteyTYZresIorIQV9ak7WXzXG/DHxoCXxawyqeWcWIou4I48lWN+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718753363; c=relaxed/simple;
	bh=Rho+7UYB3amXBrIr+mOmVM0YVLBhvlL/SdgIIDcwZfE=;
	h=To:Subject:From:Message-Id:Date; b=pC8J/Bqznbo9m3WYLeY74KkM+2NfylbyGaZOMbWREt3peYSHJ+532DgnWkIgDOlkUion7dLq6i8zK3txIaH0CR9dGojo/TtRlMm3y4rUNuT2NbugSl/k4fzAi77+B3IFTpxd2WDloqeTPYQYq58dwFHAJvog7HcppkwbJ0wTNz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CrzExNsM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CrzExNsM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5FAC4AF49
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 23:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718753362;
	bh=Rho+7UYB3amXBrIr+mOmVM0YVLBhvlL/SdgIIDcwZfE=;
	h=To:Subject:From:Date:From;
	b=CrzExNsMlpDB9XjLVYEogTHcEAOHpRU0gvFR3I+K9qb8RXWzK5wU+6C+Bc39ceUyK
	 7ZONc0fk59Ynhbmma5oS6CJUeXLuxH5iDJBAGkM9xud9lBE9251Zky1Xw+w30wODGu
	 36ETWPCTdgoGr8tJXLAtrNzHkipPHbUjtJOfksDtollZyZEEzncy/WgH/vQ8a6QCwk
	 HOVQLukpk7YKIeYt1jYEqdkgxGeNNaT8RUVaj7n9Qu06ggtg2ldh4+YWc7t0RC0Cqr
	 IIx21PvdXeFLWuKehF/Z3KLFQtIdHBZjwlf9RiIZPqW+CD2h6moJxmy4wYq27F8JWG
	 b7LE/+p/anZdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A2FC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 23:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171875336276.25018.598023655793035879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 334c7c354741ce30b17d71b94c91555f3cce4d4c1f56fdf30c2292ad848d1b81
Date: Tue, 18 Jun 2024 23:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718753362
