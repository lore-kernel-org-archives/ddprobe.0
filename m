Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B63B19D8AC
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 14:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787926235; cv=none; b=HIieovllKH+M0bYklFVY258/H8+kPD1P/4bAh67WW9zrJnp5R+ymBNd2KOrXbld69ZBztCc2kTu+phoQCNKZGB27vj3WvcfBdoAaY2S2XcXvBa2WZAtqW+5H0Tsb9J2O9U9HeEr2GiQtldOo2JAkta1sa3ffrTr9IR4V+63Ns08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787926235; c=relaxed/simple;
	bh=ZYtMvGZQQ7qh4xBALHlFv+dnsW53DTwA1RHO0YpTHGs=;
	h=To:Subject:From:Message-Id:Date; b=G5IkqLnnm8/oLifz4ALkIT6ImB4fS1dYMQTxzjquwSxwBoVLjSbh8Lf1yPDm023L9w1rGWuwVFk4fe30K/C2lIezFV+KEiKlm2+ivnTSJdNu0wfj4lWrCz4mJGk2wMO67lpGNNRJPiLLJemPzq4Sl4fjIBos8tc4Ft9RANrallk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUYspDPS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUYspDPS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12E5C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787926233;
	bh=ZYtMvGZQQ7qh4xBALHlFv+dnsW53DTwA1RHO0YpTHGs=;
	h=To:Subject:From:Date:From;
	b=cUYspDPSk/TWHeSD13hFdc5q1Doo55ZHmdHEwo+RDMFa4Zt+rRSMe08Mxbo7ch5dJ
	 ajOy/WKzmWL9CYx+5j+cExkq4TBqxXMfmT3ARSaDMpzt9dyR5mWb3PGK9YKM6ZhDYN
	 cjlgDNW47q2M/xaTW66q6DcGShu4whEhAZkXpVxor+r+JBzkHEpgqq1R8SZXGWKyzf
	 QuQOm/8lISBpmEXhUDu5ToswtGZ28rcoTjIjhC5Reoj/SW1wJXH3+xjMDrb/vs8YgS
	 GNnUxNMGA5ffyVH3yR/Aups3vo2Z34zCNkB5/5y/PN/tkCeDi4a5qtTM/mCvBfpcxV
	 rFZKLKX4yut6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED1CC61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178792623369.27721.13471779927823959020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6cd39d8ad9e44858b8f908d7d180a8ba6b12f40e8b8c6f85d766ce72839132a
Date: Fri, 28 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787926233
