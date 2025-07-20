Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C9FCA4E
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753005595; cv=none; b=OJM1PqytVTNfEbBlr6WnRG67c2izj9IRBk8aHrRBuPvh3LwjMQ7EXZvil7YNwpkbcvVsT0KcCsUikuPaYcJd+lVyhs7M0tTgj+VIZFVgXW5RSzf0Nn8M3P5gUA/KP/PVUaRg7NHTu4xDzD35YgeRV0SuoUxv5HbJy6yetlQW+5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753005595; c=relaxed/simple;
	bh=KQwRUV9fS+qpdGhjz/ItIJGbQcBaFpTDHLmzGruWzOI=;
	h=To:Subject:From:Message-Id:Date; b=VmZvwf3+Ml3JOZLZ6g+Hhvy27N0nzRhyWWtvQvXP3WJ2PzceWX1dR/bAkLHjgyMZaFgTHrepwbAWWm+TY0bovc5tZT7uJxUq4W4s4zSZmzv5hN+yh8PB3QLL9E/+5zsxb2yDN3UlLqSs5sDatRuL8Fjq5s3xu8U7j6mbj3RYUtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cI/OdvxL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cI/OdvxL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59AEC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753005593;
	bh=KQwRUV9fS+qpdGhjz/ItIJGbQcBaFpTDHLmzGruWzOI=;
	h=To:Subject:From:Date:From;
	b=cI/OdvxLVU1VGpORVBpxJ/bG5GLFRIaIFRfxL8aWuzifn/kI74DCIDsS6Wn/MQbC5
	 HQHRa5LoJ2ehQOmSJEZNFyueJgYXgCDM+rsRE+FTL2w8AWTucT/7We0zrB5P9zsT0I
	 RNuWlClsGtGSX+Km3jnUKP1baCe6mB0kGbYp9UbMJ6rH1s6r0jWUpLrqaOEfo2f0Lt
	 zzghPQeJjGBGja6b/XE64Gn1bMzD46+/M35UZ+lVZyk4TPTkcuJ8nDbLpqIYqAjuJM
	 VvwhX0goAP0xq4FQmGo2Qvv0OAEvx53ryQfkCFGlVCEPjXPjGWM3HJMAtGLzBodxwQ
	 Ch04BwfEUtWIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EB1C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175300559358.2342.3448285545580877329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c99b5124a3a00fa5fa62b73944c585a4b3c0cc4d949f962944de1011f3dbb994
Date: Sun, 20 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753005593
