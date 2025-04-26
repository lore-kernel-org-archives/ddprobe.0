Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C293CA94A
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745675993; cv=none; b=bW5yDEX1lMdClXxQnqnh8PeGQKhZkaoCRmASxJ5hhiKRnr9EnSzk3crwosPs9ADksWYAM6wsc91k8S9F1zUt68K3o0at3t6C5EGZQqyW8kIFCiWPcPatYr3bUvImaI2J18/RJN6GVeWM44Me+Dx2j36lsMrOvvWEHBDQ8jeh2SA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745675993; c=relaxed/simple;
	bh=vYFs1rk3txuGYi79+KulNecmGddJtjSQ5ZZewhDzTjY=;
	h=To:Subject:From:Message-Id:Date; b=c/ybPRZjo8E0SRDNdJmYLWibBWzYfAE3RLtD4oFCKRuGzD60ynuZC55jO0Rm33gumKYAI8vf6DS7oUu2N35pgU56xeVoeN9gmlaalH6rHzeQL64pIiXp8AnHPEtpCCC/0h2ozlWs0is7Xj1az++M6AkKZQ3hZVTrD4H3zA0R4Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHNCEZjf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHNCEZjf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09D9C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745675993;
	bh=vYFs1rk3txuGYi79+KulNecmGddJtjSQ5ZZewhDzTjY=;
	h=To:Subject:From:Date:From;
	b=iHNCEZjfpKAqdzfKZl5dOd6ED/cPpcplt96OLyjz83RXg/tLUmTCSv6lkv8kx+vJl
	 TOuQ4nyEJYDMHeQnLRq8xLctx5zcAc9PnSGk9SgvxLv1oZ97yqhZomAf/BflKDUAxl
	 8Onj0NZ4PnludBNNJoumZ73v/Xb6JfUzfOj7ILaKgf3oXj7XwEIPjRqtR3ZTDOYGlZ
	 Xnl23yqKNRSWOPT27/F2LUWU2v166/KiCJCRvXv6M6hnyWHexeLtMlQn4FSnflkxsM
	 VLqAz4fC7EhgrlQY91VLcVf3UE8rFCT8ceSghdY4IFJ5VMon2YEjnyB/kKFlZ5irk1
	 wyvFW/F0X511g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E25FC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174567599357.31246.13420871609802148784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a2925b7e6e1a5573e67034de4eba1691f90e4b4b88ee350cb380412d43cc0c6
Date: Sat, 26 Apr 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745675993
