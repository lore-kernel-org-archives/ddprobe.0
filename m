Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4B21C3F36
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743334194; cv=none; b=VzCrlerT2DFH1GsWSetPwrBtsd9gpV1V59/GcNcQkE1mS0LPZifDLqB8VdDM1rps+JIOLB5mdDqHJCK2TGJwUDF7UnOql/YKief8N1BYQ3Wdddxpc4EcrTNKLzt3eF46fZ+O9hqOzFOgSrHda0WkQkvkc9Fzm/ryAVpn8+jclgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743334194; c=relaxed/simple;
	bh=pwS+j9UU1SU+E2lWUKcGU6Hz1/We4P7nuWbZbgxrMgc=;
	h=To:Subject:From:Message-Id:Date; b=YJ1wxnPfsHtt+/NwRaV+7MmmI5yZMf6NTPlcmduBDSZdlf1DDQvC3Al38XdX5pxeS6DdziSBwfrMnd8akZVWDTDscFZaixFQl1QL0dWQ8CNQOS9s6uw3GK8FnfrI7IjYeCuiyZxwU4Q53SaLCRlrWM/DXN5vDr68LMXpV38+Hgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXJu8r7+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXJu8r7+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B60D0C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743334193;
	bh=pwS+j9UU1SU+E2lWUKcGU6Hz1/We4P7nuWbZbgxrMgc=;
	h=To:Subject:From:Date:From;
	b=rXJu8r7+ZruU+2O3U8+o4q82o+Qtyy3ixHX3noj5coS6hWlAGJ4HZPZjUyYDfq9bR
	 oifoHXm+8d1kx/iG0ozjuwH0UYMlT4CnntKPD6We6q14ZJm7Mk2E7G4RxDuktnLh9X
	 eEpFeAb2rbzB31JR6Nfbo6FGP671N6Rc8U1I5SbPWGK7ex3RzOCR2CJNR7xpNmvMkK
	 MZVPQFqXq7mOky7aX+WyAKUJbz8Y2ZD6RRgd20zihHhlnk7ta4IR095iCQ0CTbyxbW
	 exQtEQoiXCGZeuZOS9b/kJlIaezdS8zEKbkrjBSs5NUAu1HTPy+eoaTb5oKLkZL2XM
	 UDIfXe9Nzvo5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E974C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174333419360.8448.5537467208246535472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 547c169be3bf5ad7653d4d04d8739263cc1a3be0382449d8ffcc64bc5387723e
Date: Sun, 30 Mar 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743334193
