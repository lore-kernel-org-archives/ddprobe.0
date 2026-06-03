Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FAC2D9ECD
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 03:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780455874; cv=none; b=EKp23p6D5ZjW6NhGxokk+GBauC+yG/BH6yToz8ZSvnxAQe8v50Zmxrx+5Iqu5JjRI4SLpfAOvQYoRdliAwG8Tpd5OgBw9ndTpqv7xbUGYk6mUhSOlSCpAFDOgRKMA5Ya+xe7mtNWYxjYpLvsyOQDjkSMDAkFDUwv4AfUk/pbIgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780455874; c=relaxed/simple;
	bh=dWfl4EmSgY0koG/82Ob05d+FwnZd4M4QFf25tsHzIHA=;
	h=To:Subject:From:Message-Id:Date; b=Ge5T32yZTgIPioyMhI0Ohu95zFJtYa8PtKHGkF0CRvoO8PHeLsDq78KawoYCznpSJ9I02yojSWFR9Xnsdt9Ng/HqVvnAD0zmj9NAIRc+hHaPqYpqHjYKaax7kM+BlsL0ZdKisVuI2ftqA8hnnp1RLnD7Xef2Gtaq++zFUzT6Jyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCRJESBt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCRJESBt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C483DC2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 03:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780455873;
	bh=dWfl4EmSgY0koG/82Ob05d+FwnZd4M4QFf25tsHzIHA=;
	h=To:Subject:From:Date:From;
	b=JCRJESBtXTofvKPMzSIjuKmI+CwxQoNRhYMCUfdFTZbQN5/ceQYWOlNzVNZYBwuCq
	 nr8WSATtbOKmG2hapKZxx7GqwOZNflYUdgKJSOhXYuerb61ofHvKr+9TDpzwlVuqMf
	 OeC/Omy9VoclDoBVZxBFA+gv7xXqXBg6AuUB5Rnb4nkFQZgYR69Lr2VqglmsA8qXLP
	 dhQBAi7KqixDBfRcg0fIymqUauKAK3Xr8NO/Jsi3t3WJHPDT+8H/jGLu+nZ7Bauvpp
	 Ucpi1Sav9pelEDXRCbRMJ5Eb5LXQTJe4iWUh1sfJp/C/CkTT1o2w0AaVRQtVEbzu+5
	 ZSz4TnR60A8xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9437CD6E5D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 03:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178045587368.16003.2418199141902291932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f28be906014d36d6731abd5869915f7e981584bc7ddf88c113e4751390d60271
Date: Wed, 03 Jun 2026 03:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780455873
