Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3E327462
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751329194; cv=none; b=Zgx4YIaiwDvXA88hlCWBvzaA+27shBvWuOyicNQEbnEqSW5XReh7PvcmdJwASa1tjSpOudrETNdrLD418RkY4ljY5neP1ACeca+Ny+zal6DU07lTzxuN6yuPymSwa4taqYFF7/z2kWG3SKn7YMXd2bCw6DERMriO4Ty+TvngBNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751329194; c=relaxed/simple;
	bh=U70HyCPProoIhsP7dzk/XXq6Ay2KkbB+tQcTdCJl6Dc=;
	h=To:Subject:From:Message-Id:Date; b=d5NvB81h84WiQGzpouY61Gtsz/0r3y6PJ5XQh9Xw35F5yobNprciPkrvTRluXWklFytnDYu5y49j/nCqlSTYsEtAQcdp8OfBOfWX8QOx2XDdyB0hn8SZ+RrhZWOWqjTJAU24ku/LgtmJ2M0FARcCxVaSCKIMG5dU3lHF07etTm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J85l9383; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J85l9383"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E023C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751329193;
	bh=U70HyCPProoIhsP7dzk/XXq6Ay2KkbB+tQcTdCJl6Dc=;
	h=To:Subject:From:Date:From;
	b=J85l9383yGZT6Fl2rhSRSv9M1eM1+KspCKYO+K5NgwG0cN+1QnD16ZsNUUQpFV9cl
	 xW/rUKcrTZgmvxnYmHQCN7Vh1lMWf2LYdYQCjlyaY8/Dh5El6vCFO8piDrWaSBng9I
	 OK84+lC0Wldh5dYbfKjqLrx3GOe1/q4xTATkyJFooo8qNui3KHKZ7kFa2qVzkbAY+W
	 2s6Nc///YUMn/IHwhNVyxfw+Z2NNCQGrciEJo7XU+lD1kYXBWFMbi4/R9aimZNvgb6
	 nMgCXkh65ZZ4pzWucRlaxr2gkLgUCeJ1bKc+izzFeZ6oxVCHXvpnB494dy4X1ZTxyP
	 wt1FuSMaUqx9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBC4C83030
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175132919358.27741.10549609109638987120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80acc0a38de76501573b4d7756f39d09704241e3b5a8094ce731907b949baea9
Date: Tue, 01 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751329193
