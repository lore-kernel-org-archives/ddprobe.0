Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A1E2C2364
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760985594; cv=none; b=UfFODeTAnLPZJ/F8HMi8Tums4JJ29DYGw5YVSXJNDQo6V0sXwXkdWjhM2OSnTW5/53YTrGJOTr1QpI70Fjw4C1LpkZB5wQ7xJ/SpNiPK3GaUMosL1L7Z3Q7iMwJleaL4nne0FGzckvH1ASXsgpMM7t3N4W0wl3OB17sglJnGx60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760985594; c=relaxed/simple;
	bh=dNY3hIJL3IhIzpxOFqQolHNbwAmyrEXtga5Mx/bah6U=;
	h=To:Subject:From:Message-Id:Date; b=ARHCOjNafVeo923eD6Mo2pFY4tp245ed53ywJPqQ61Y2E6OjGk5MC29bFduyCT67o3KCvqt32Od6nS8dHCYhe+6V0ToZoZw+luFI/UsGHAJN2Zi2337k1EVX+GOaUK1ol1LF6Cd6gZsmpUXtG0/ldAb7s08qD9Ec68Phzktl0dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDkpAbs1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDkpAbs1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6FFC113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760985593;
	bh=dNY3hIJL3IhIzpxOFqQolHNbwAmyrEXtga5Mx/bah6U=;
	h=To:Subject:From:Date:From;
	b=IDkpAbs1FrhmKwykBS2ci6b9D76COIQULwwF5LiHhG73U2pyrippZm+rusukLJTTw
	 Wi3jL1lzqLIroVYkTpRQ2wZJYMjLbLohVrA5PLkcWZvzdLLO/NV7ICQPf1/GVJL/gx
	 l3DLpj0V7ucLnVXpEHGEITAZhVTtvQDw9oBWvvC0StovsXtifqjpG+KP4OvO00Yd1N
	 3O9Dmli0jNOxSMx+PEUWlzWEoz305Umwnoas0/p0klCw6FW2DSFvQS+cu97wcG9qIX
	 Wnc+ukvlVpD5RVwheuVIKO4gIqIskuS92CukWz8qEk86Q3gfrpMPkiMMsGPIR1+pUi
	 aIap0trkblmUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9FDCCD1A7
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176098559358.32613.9498419970706778444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f7d6a40b4e914dae70e09132d4f6b21fe3839f9e147e8cdf23a992b28c1332b
Date: Mon, 20 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760985593
