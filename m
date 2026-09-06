Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A418B3A3E7E
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788696034; cv=none; b=PxhUKNhsXprkgAI2B7+kQBTa/JEeIRlO6cvwl+j5t9yNSglePraDbJHY6Cf9ZPNrIBCdhON8/FzYsGUf8zSS/2XUBVdgn2kGE1EhCoGQ6UlBd/ryw+I00ls2FOPvqdjKStxnrVW4nh8OL6i8R6UJ177x+BKKRU25bR1w97I/i6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788696034; c=relaxed/simple;
	bh=xG6Ydc3bQSokTQkMd86DXao1DuQrpkLWJwbvdCklTm4=;
	h=To:Subject:From:Message-Id:Date; b=W2JP4x9bhA2r/ipsSQclLRvJuGigNq4/Aai8a4wlAKzAIaGzmt5KVzwxSQY2/q4bqWaHgM9XNZ8viLiOAaMhr7+VRBLpFUrrjj9UxGh0Dup5mXhxXkdVA4hHPhxrY4hrOXLo7Pn3ZoA0eq6khdu2Ygfl5qfN2x+XNqg6/Jo3s+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBGog9AS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBGog9AS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD581C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788696033;
	bh=xG6Ydc3bQSokTQkMd86DXao1DuQrpkLWJwbvdCklTm4=;
	h=To:Subject:From:Date:From;
	b=tBGog9ASxHEb2WDhVxCxHfAvAD75ahpBcpPgXASAvXwUpE18/wzMAGj+0U87Khy/H
	 85THgobChCk7T0mhX3IW90473aSm18L3I4ZKBeWgN6Vh/Pk80dvufrBPGHPinGHCOh
	 iF5nNT0xvKq+3btBq4KVVnEv8d1JmWCAu0ykt/t8h2AsT8ULFHpiU7YGKiY5EUe0g8
	 /XpQvki+BDfNdhccU26oDBQecdsIGAZkdd/4kvYn7fVpS3Rj4QbnhHYLq3wR9vH1pk
	 ZfA1O6D0oLoQzRN+vjNZyGEjkqGA4nBHxU5hu3E4UIBKlfv6eLGFVCaST/9fsJhyi/
	 14EaywukvHHGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78CEC79F85
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178869603374.6076.16871440762090700108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcf0149d9d0dcef1e6fed917375cfcf142e3f91948ad0409fee9e395a9ad3723
Date: Sun, 06 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788696033
