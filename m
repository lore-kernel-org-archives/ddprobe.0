Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCA61CFBC
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747197594; cv=none; b=t7o0T97ey6vdpvxgKQnbaXMgTqUE1WC2CR2KfCM/HxAh0CRj6wBcTZ6wRcNwSrUbCqOocMpYdnkwyIsoE/hskj0Ig5D+r4fY+pX0ZO7oYTFh7uP2jTZkJwELt+NlACWLRt2aMNQrKH3azATWVj6AFjKprDDMF1y+j1EGHXULvus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747197594; c=relaxed/simple;
	bh=j7jpKGshIGTiiWlvr6yktkC1nGWwrnq+q9bXmcyHiJo=;
	h=To:Subject:From:Message-Id:Date; b=eMTiySsTj9ZNENkGsFshUNE25WU1/y3tRVYLxIix/x4VYoNkc/eHJYcLXsQORkH7gEZXUBq2eEJpCmsnGlB35acqlxUi1a5ElJaU8WIOZuJva12HOP//DkZDgsa7Q4SLde32VS7Id8mg3GGX14TnirvypmV7gpYeOKuwij9OHug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egPjq4i9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egPjq4i9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2043C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747197593;
	bh=j7jpKGshIGTiiWlvr6yktkC1nGWwrnq+q9bXmcyHiJo=;
	h=To:Subject:From:Date:From;
	b=egPjq4i9QM7p7RYW0/8LfppvVCN7GciusFlnHTDVJy4eT1D1VPmyxcbFEXO+eejAc
	 A5dNe7my3YdWpSjxlNYbXKZJBjZv35fsrcKPgm36NYU6A0N3UujY9P4EYyckHSQkyw
	 uonVMR63lXzZa4ZVKAfINCmHk7ToWCycRJYY9y/e/rGBM4xIltltcEprU2/FxwLRQ1
	 XDhViv8eCFm9kWCc1F5qFKGv/X/9EzPNp+JqXw6Burbjs7p/dSAJ+CU5iKSI6YqkDB
	 Zsl3XBI+JjxZd8o+lO5DIkUZd/kGgxv83tNDlEfH4sWIzvte4BAuzj6T/xAOnMuG+C
	 fTnaFQqxWb1/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90770C3ABCB
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174719759357.27799.14681658120951953443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 844a2ea2eb2112be45b65c91c64f0e1c89cf9f898f971760457c9d10c058fc68
Date: Wed, 14 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747197593
