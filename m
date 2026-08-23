Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A97D233955
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787459434; cv=none; b=ZL1z08lGBZQNQgI80FwRS02MRX9f7ZwkXrfa1cXIkiBUu7Rww27v5NXH5RhpGS7gYmd4TkxEJUIbTynnjVeZ1dC6SLjwykYcl8h7lW0DSw7IuKk0wtmpKTmLmDb9hsALultQl8p17J9nytfQdlwKkJFKNFJ8GSFeJohuy+QK3DU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787459434; c=relaxed/simple;
	bh=j7uBarYUbiIHimgac2IUS1/eJNRfKZMSOv3XCsOjBEw=;
	h=To:Subject:From:Message-Id:Date; b=kGptJnSuG24yFckd79Ygua1Z378OGHkViebOZfAI4CfQPUh+9+XPb/4aDhXcJCn9ymg6hXOWC0XPZa1PShBxQNrLPCWbAwOAv4urfTf8vsyIskTWwXHWASgyyTXKGjJznZsKvIaLsgGYNwNuAmYBExh2gXaBbjbAC0zlHcCT0w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjnErDpn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjnErDpn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9339C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787459433;
	bh=j7uBarYUbiIHimgac2IUS1/eJNRfKZMSOv3XCsOjBEw=;
	h=To:Subject:From:Date:From;
	b=WjnErDpnDsgcI52e19UJGb61V+72c3WvJcQi0v11Y/3znh2FFRYMuhKL1r1/29CRi
	 mRPt1xdr0aGMFvNlNmXoL9yxV9fQ+cRdWH0XfMPqkN7dvTeU7dsOslJ/z8i97m67fv
	 0dyri7enetB5N0kC5yV6nbi10z+vfgQOE9jVdMqg59E/TNW2mJWrnwdsbul8WQbx6m
	 uP+yTZhglue35tyjLIzUYX0Jjlqg/FGAxDOcmdmT1bHJBcHWx7Qa6V2iTd5LIL+UwN
	 EJXUfJaYMPz5TDIcBvaAwk8R0PWacEgYZ9+9KBpKxvo0LpKvOlq9eGnasWtXX+aaLH
	 0rI2aVN30QoRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAD28C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178745943371.19391.4763037960277974252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49cd7372a57079a786b1d2cbb94e094878228893bab485d2e31b3d8d1c98d867
Date: Sun, 23 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787459433
