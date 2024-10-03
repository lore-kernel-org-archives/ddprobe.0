Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD8B1D07A3
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727999154; cv=none; b=PcWYGT4Zrf+oM408IAPTXMEBDwwMjjiQKlv7WuSibiVu/PSv7546zQhMHWgt/PazUjLLCNsH7AI5FsfY2OJ94QhqDS4/ce4ir9/tAXKn4B/mhH7HJImfzxfRQwpR6i6oJH5BTakJuC3stTp1L2/skOxO5m+yCvwOZ89BUVyM1gQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727999154; c=relaxed/simple;
	bh=W1TB3ovgiiXNHQsmzFDD7J1pWcB8H2LJPS6ZuM5sT5c=;
	h=To:Subject:From:Message-Id:Date; b=Rd7xJUmiZFEVwFF3BEa8fSlfmtuVYtmafxgtTACholZBwM7nduOebYRms+cQShLGHM3BHXsR0+Q4EeoyIHF2jjVE/6ZnzB25x43bbHuADIZnVpJhTZNRLL0v991SCDJ74cfXSzKDWZJ8REw4HwBk/0amZhYWaTf/GiIxocH0jVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FA/8B8zJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FA/8B8zJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9AC1C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727999153;
	bh=W1TB3ovgiiXNHQsmzFDD7J1pWcB8H2LJPS6ZuM5sT5c=;
	h=To:Subject:From:Date:From;
	b=FA/8B8zJ2c7r2F3SRVSGZlLbnJVzYI+q58OV+0uWYpkPffLNFxNqVG7hY6DVe8OrO
	 R6NZC2mXwhv19OcHX8naB4+7d1Od+l9+4+vrub1AMncSKfQN4ffMuV1YuoZKAAmnWL
	 XEj8sTrVdnkCuXMTZB6cfMXts6EFi5VkY5LmudEvWF+QgGlBaXXNesAtymsb/JCDkm
	 6EV44SEDiLO4vUnWsM9f9PBMKd6FgoojtHBMEvpdMAuTDZwptuyk1WNf31mWAgbwAM
	 vSyGmKePozKRWhQLoIMV3hJd04aq/sClY+ppv8FV+zysiaflG5CwWJB7jNkyrspIV6
	 wqX/FAfxLXosQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC56CF34D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172799915363.18254.15987845876166073877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9385c647eec0917f433159e0cf86b93d77b1faf610e79ba85fcb94e318ee5009
Date: Thu, 03 Oct 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727999153
