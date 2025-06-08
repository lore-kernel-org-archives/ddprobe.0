Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575B617BA1
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749354594; cv=none; b=PfMVE1TcvpJ8757XvL2GTM9s9q6VSIpJyL0YYFUAIGUqZ+yh01PtRFi0wrptC57uWFP81bPOek9/wkCWVkNc85TvECZNiBHXqYdfuSJ5HtmVAcdeyoWtXe6G0rU37/GTVPTO3oCv5mR8kwECOXMblWXwmvI0M0lEzwmYtpWtWps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749354594; c=relaxed/simple;
	bh=q+W0ME6MiFosdmZXffhat5RAzBHjYF8D97pm/Q0SSMg=;
	h=To:Subject:From:Message-Id:Date; b=JGkbMACc8y3Kf6d4FGf/DEc8grQaSO8qMIAdjlbvlXdqbgTIuB8UCMTgkNjaxxu2lUjsFYgwI4IiUyDpUSHcvnlGalS9LZY+GkVY9OFGqqA7JQD2AFG0UGRJXL8rOOdYb8nbWQxv64Ho9hSJTuhO70r2dOkXOcPHBbrnv4362Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJXRFYRu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJXRFYRu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A65C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749354593;
	bh=q+W0ME6MiFosdmZXffhat5RAzBHjYF8D97pm/Q0SSMg=;
	h=To:Subject:From:Date:From;
	b=eJXRFYRuJzSP/8DqHAB5xJ3Wcsu5Ghru7ZsOvkVqBdqBVl2rPXMFKdKpTvGUzByYj
	 GJPMko5dqV+ujyA5J0YrUnomAbjJZeRr6oLkdxQpoLH+WztZPVtVibiBrGMXvisJK0
	 Z70uScURwWcyMPNwZruwSd2zwGdMYFMXZCLyV2zrzRphuREf9mgDxlRhP4DC3yQKow
	 F1YC0Y6uFEJdmSk9aPZg93Sr1vvDjctYG7CM9dkW/1XL2wjz0pRxtzS0EDEi458bJD
	 yRbbLfkXvcxEII62DA+NG5X5ndKWoBR01z5KUN24NR3f68FExYm+tQ76SvrEzQvPQK
	 qCNzYt7lDfv0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94086C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174935459357.2094.16182262731607612712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfdaae60816f70dee865bf26dd59511cb2a46c8afc3058b767fb6e4ed446017c
Date: Sun, 08 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749354593
