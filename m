Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B47914D712
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 12:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719319403; cv=none; b=Lh8ev0Poe8qA+yfVafdjC7aaL+gc5ReZY/VBOWYlqWRq8ymWPJH6myQZmUHknX1FbCt3LNOqnUAJZgKVaMTvgRgeQ+rEIQAW7xW0pUgp3kPAiDN3EiAOlFKVqpsg4uGYWWvTQVMDbNtG7H3GUYBYsQKZ13WV0eXpqc2FObbp2rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719319403; c=relaxed/simple;
	bh=gwW9vHvb4lz1Ha86aKcePZvoGL2CdHpHA6Be3ugslvI=;
	h=To:Subject:From:Message-Id:Date; b=ovFBbRe4ONiVyfxp576TnSct2Rkfv05CyOTnlsgyG9Ym9CWF9n8XEmyB/vSE25FFjJWXkDoDDJsFFCkmmcWMp5pDIdQ76YUZyeDEqU7TQvqzfoybgpjx+9HxVQ5AtVPLbzE6FtmnDNb2WQzCf0zSX4TpHX+6h8Hk+jnLAm5Y+kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLTuoi+L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLTuoi+L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE5BBC4AF0C
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 12:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719319402;
	bh=gwW9vHvb4lz1Ha86aKcePZvoGL2CdHpHA6Be3ugslvI=;
	h=To:Subject:From:Date:From;
	b=MLTuoi+Lu69Dbs7LUOGoxpf/ayxFqniaojTtHe6FOoLsVhJIL+Vs98nLJ+xQvLWd5
	 OfObV8C5DJu3J9zRextuXIKbselXBaqZngZUd3uU2ss8f1PyDLYzQI7PwjCZYtzmBW
	 bmlhgcYkXMnC41MISbPh+5P3IbXyehxKJKhRZA/C/cr2a70qDUcR/Zm+6KRM1sLPP1
	 q4WV7RqCCPy9/Td/BM1rh/w/AjstdmvnduLsqMukNIcO8mfLyFSSr+LpefFQ1DAH6k
	 GfOo8u0z3tpheavdrhWQv0Hz4dhWb2Y0Ef/NDeO60RIczZi0/K+/NrRcPaTlbxNZys
	 7P5gP+FU6mkDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD99AC30658
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 12:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171931940276.11006.16072211301187289263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c85a8ea7d7f16de2bb4f150d3bfba681786734e959e8912f80d1ecef8d1cfcc8
Date: Tue, 25 Jun 2024 12:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719319402
