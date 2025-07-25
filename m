Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C06F8635D
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753450794; cv=none; b=Sfccaox3lgnBM4xhFdsrmkLRmwQc1SK4zpsBloQ4jOqlFkfYGSse9aQAf3WrFD2sk4Tiy89eL67dtvPULTONW3ZlssqucZQFtlnk6coNYPB3hJ8t2i3uWvTWEoJfagc/ygjcbVidjZORDCfiJs9sdrIeRrWk9qANyFHRsjuKeh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753450794; c=relaxed/simple;
	bh=Hph3D1O5ARLgXZB7CY/yxPzsX6nXtJbY/hbDY8RQH5s=;
	h=To:Subject:From:Message-Id:Date; b=YQ2p1y2hcBazrLOubr52SzZfxZo5ukve5fO9zHEorAl4sX0w5p/zYtLl8+J2DZlJl0vxgL8NsZPec+Kf2OVcm3VMKY+vv01+pHnfLCHCWqrW5IwaQW4BTeQxiSQ8rMCBRgLJ8BqsaegUUQpaO0RbV+iH7YSsMgh6rlzQFjJOTEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MI/tGXXw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MI/tGXXw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA82C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753450793;
	bh=Hph3D1O5ARLgXZB7CY/yxPzsX6nXtJbY/hbDY8RQH5s=;
	h=To:Subject:From:Date:From;
	b=MI/tGXXwtEC0wOFL8P+YDQAxtlBEUUmNS9VPzyPXhLF6eAQaNro/lkyg53IWBPPMr
	 q4ZSu1BZLsxL0LoH5b9Ht1duUS7vEk4+81NPr8cKFITiMvgbgTRR4ozny1rwPpGUDl
	 mfcsAwX6rSVHSbeT0E1tBDX5B7rgN9sBKCo8Y4Stbjg6VdnAvsIG0BVCcWlV9HEbCH
	 obwcqq0J3swf+yyRLfhWCSanOL6EY1iHxz3K37lzJM7OLol8gZiS9yqN7DO+Aa2uYw
	 g9l7ydSce4vELynB/c1fJXtbtYoQVhCF+I6TfqPCKsrfSe9m1NkO4s+7Rsz2kQXn8K
	 L4irt9gMHgIFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDFDC87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175345079358.6162.2631212931722913100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78643f44618175fc6f1fb3597d8dc6da72d257256daae4687121723cd99b54ca
Date: Fri, 25 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753450793
