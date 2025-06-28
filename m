Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230B0175D53
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751116194; cv=none; b=QSEQY10B8/kQVo2IGaSzhlcLDnXFYe0TnzLxY2V37/kpgLfzl5teDeCEo/jOhSp/NGYFqfePEkWgHxY+MdDTtNyOyVIQSdaxtjQvva5wt7q0Aw+UUotBRH9S9QNybNXvZWkj0FOka3oUvCl3N5FIH6nY708GhiDd0pMC6mUkU7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751116194; c=relaxed/simple;
	bh=q85J5bS9XSx7ZU6zVDRJtBR/EDxYptuC0ELmzv5B/sA=;
	h=To:Subject:From:Message-Id:Date; b=hR+5LPHXUqbyIjRB/OeRZwuIS2ioLOymb4RqbG7//bZO5P1vE+3BMSl0Y5w2yDayg/U9duslEX6qck8NnllxunXXwrlBcu15aTP9o3KRgv6Z6Ee252M/4aUROdCPGs9+ZJMp5V5twzwTFeyvxZ5JNMmKaBq29wnen+yY+vsVPxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/CYFzE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/CYFzE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91EFC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751116193;
	bh=q85J5bS9XSx7ZU6zVDRJtBR/EDxYptuC0ELmzv5B/sA=;
	h=To:Subject:From:Date:From;
	b=n/CYFzE3KTdSigVfjHxF1BLPZHx/YmztO/nwz2GEoxQhk/t/PRBZWArNR11eJ+mwR
	 mUwVmmZavbRWrCEH9jzfM4roXRm/daEJDNio+/EdOfnui0nasC5MT25kch6SyGOe3u
	 mRvhwyYTFdnU33ZnSTyCnzkgL6Cr2tQWeGLdil+CIQFwiqPVQ2pHMdr7GJgzAfhxZY
	 tBx2H35kkvmnlRm+942Ebs/au/OHxOoI0MPXbh6N4QnLe9Kkiatg9qq6tUbqhbVoPo
	 Hjlx69aVsTiQ0juF7gYEy8ksf/ihaKVh8Y4tl3ueTMyAW4HIuiABvnL26tHHdXBA4R
	 5JCkVKlQ/eTeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E9AC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175111619358.19387.12720442262423277396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 193e379636e3713ec91a5a8ad3054551458b0d5a1dfc83cc437c7a75ab2cc310
Date: Sat, 28 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751116193
