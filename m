Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E0023B0
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 08:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718008043; cv=none; b=k3D1Co85mRLhtHTgv5aXiwuOk1N2OQbCnHrHpDiA9uuN3OQ8trJgiLgMVN4E+Dq3KPR6nddDfIP5TG4YUteoo6tRkErcHL7lQ1t7jde0e6BsQIrWOqS/mRhgQj+AdobPvCyVuWwIhOSy6X9g0ppbzcsl4vV/aifcGOxeGS6Nv40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718008043; c=relaxed/simple;
	bh=d75eH+xjSDo3J+yEgsTnNZnqhNh3bJXQa1LBtRvhggA=;
	h=To:Subject:From:Message-Id:Date; b=kbkyCsx5aijuyxzQrbb62okK35SxuvXvfV26+Gmm93jrgTwvTXMJ8K/Qq0jkM4Vx1gOxopxdz+Il9KCqwktUsY0xdM25j77w95onk1Jt+XyIcAEiXa2ZI8gUfUtULglMl0WnALWTh6j0BSnPU5Shf1vdAXiV7a20jA58tjUHP+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJVtK2v1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJVtK2v1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D911BC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 08:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718008042;
	bh=d75eH+xjSDo3J+yEgsTnNZnqhNh3bJXQa1LBtRvhggA=;
	h=To:Subject:From:Date:From;
	b=DJVtK2v1HTeLCGx5aIxXTlMBvU2JRNNYMtg2sEqX2CVJSzdPGOYyRuZ7MiWGvVgrw
	 2pIotuuCoHGYZ8dKNJ/k1LmAjseheYIQH2rdEGEDYjcYTwkkqd9oafq0Rdkx7+7MkU
	 daA2gPz/XgUZQPMcFyuGl2vbbRrHc3uzLANY5WPOmWlHtBEuRvLTJsXQdWJLmH1JHV
	 eXPd0DhPNFZoq4SDvnbQeTYuVNGkqV7oUKTod82cLGlHCj/U9RLdED9GdJAdrKGgyL
	 b+dWSdZkQXrVPdcTs0eyDo6I7jBTNHVV82FYJNJWBccYttU7dOO/JzUXb5GH94Sxzd
	 6O9x8Cbm/3OGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CCFC27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 08:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171800804279.13889.14944252398369940041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96ed88e7e768bfd90a3720b1801aae985e0a170d0468a142355f8d68769bb455
Date: Mon, 10 Jun 2024 08:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718008042
