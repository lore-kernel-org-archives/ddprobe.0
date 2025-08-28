Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DBF1862A
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756411794; cv=none; b=pxFurOc2YyNpbEX9G0lQ2UQ2KxQamHv0ABZCqMtSAhm2ERVK0Bz5i9HYujgilGaGRKMuG44FLQhtTnL/M/DBicRZcIOZSIRlcPFOq6Cwkf7BBpWpvRMydFrIRPRRoXsl8HP3WaJOzqeIjDY2ugERfJO/u27TxvLzofAY1rUvbto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756411794; c=relaxed/simple;
	bh=vvoOLfIJQbF9ncvoLyllu7Lfro2bC4INv27XVBcCkho=;
	h=To:Subject:From:Message-Id:Date; b=tMmp847K/7LVUQ0rUiu39l91hNSKIYBeZLL311PYa8nbffNkL2euGLUpyoru7fwAZ1aPxpGo5o9+JjBk5/SZa+U5MEQqhr8VOMI+Uu9y7yTeZFVjNWEBo5mrcOXmY0jJSV5elew4V/XPmlPn1LsCq0/LWIq3GJg7zPTlIUZLrys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MhmTndn/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MhmTndn/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F679C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756411793;
	bh=vvoOLfIJQbF9ncvoLyllu7Lfro2bC4INv27XVBcCkho=;
	h=To:Subject:From:Date:From;
	b=MhmTndn/L8RhlclPHXDUCogM9dAYHI/yx9HB/CNqgvbt1v3jXDQM0uYvtjhiMtn3O
	 oyjefm/XXzwXa4g3jlgMA0tEzImmmBGK/6WjHQOpBvywYIvI+c3vtt+/xJFf0oFPzV
	 QQu2hwVgcNnHNa+3YvLsp/SZSIBxd7OdXW/SzuzWmBgU5zpc+OhPZDYRhYsC6nREXt
	 5RZQe/VbemnoCKo1BIy2LaNxNChEjeSeRNDNZ8UbGMHbwMdChMinAlz/OI3Ll7O3M3
	 +yhrVAety3jKgq/wJUb2qDalKLoDLtI8AXwFtTpR8ClXRW2kUOPINCHOLljgM+Fqhk
	 rF+plz41csWyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F738CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175641179357.19246.11658507714762769083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c00c71e552f38a5359a1a612f4464d0de5c83bd961a7645af4aeffc31b163e75
Date: Thu, 28 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756411793
