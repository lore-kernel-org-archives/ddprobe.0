Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391FC33BBBD
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 01:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780365274; cv=none; b=r1oFZuT+KyND3iDbUoJhsQZ5mIPuK4tibTAZLeNYYX5zyPnf6uTD3r+4IigUdikbkhhd1h8utI15w7XPhcMBrZ0Wlmx9+KayRQymL/0c8zp8mnBIFqG4tUFMYVaGLi351p/SuBEo+jnzg2VXk9sGaaDnySI6lnBfazLh3Si6WzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780365274; c=relaxed/simple;
	bh=2NS4P3SuCs8py79BnbUz+Q/WN+pjFKFSHTsyUkrJ3c4=;
	h=To:Subject:From:Message-Id:Date; b=n5DAr8ZdTy9OzJWMqmT/06ZfON7nIbDGFuQ8BApQPsBxFEVv1eFT2EBLktAADqLqumqIVYLefAUDMOSubzt2rOmVCQNUkqOZSEF06bUAv0xAA+43jEH6Y0YQZrcOsWUkYRq33PdVyWyERIvUJ+b76iElofM9c+7BtJ/jWqTW82o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f83SF95z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f83SF95z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1135C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 01:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780365273;
	bh=2NS4P3SuCs8py79BnbUz+Q/WN+pjFKFSHTsyUkrJ3c4=;
	h=To:Subject:From:Date:From;
	b=f83SF95zzmbmllv0bjZ7o5CyNN9ne+5ZA9RZT6JukBV6U0e3rxRr/XeMLj+EuRs5s
	 v+QhyiIWNTwWnKYefWG7hIP/SCnmySrQX/qD6r9mcx5FWG1d1hDL2BqLaSJ5A/Dp8c
	 AXFM8PhUGleC64TD04xhud1u6leEyXS8pIdQCwARzc5yHlzUyLiAH3L76eooW7lvIN
	 gtCbNMs4DFF03RqO82nHwJgE5oA3/SoclApdCuA8GYUAY4zj11DZQkkC/zb7DPIYR/
	 qKAjWBFS+0vLvQzDBzkwgl4cNJC7b3LwOar7WrAo2P+3oeRwqzObA028eRFtkTrIfG
	 +40U251Q5x7pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D59CD6E56
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 01:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178036527368.9119.6216774720816994987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03554e0e192705132e2846cc072527c82620db6839baa698c26d054596ed4ab8
Date: Tue, 02 Jun 2026 01:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780365273
