Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A8A183098
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746291594; cv=none; b=ZH8s/jH7MJdCS1t36eeTMGlU6G80VShAhfI+EujFBSVsS4l1vO8BLCxaV35hkpZ/mqXfFeJ58g3ANT2GR6I5qye2cmO5R+JkTxvQQ+Tq/LgomXs4LroMQVx5dCNLzsb6o85V8i9kVgjVwcWVuKIyMvUlqZPa6SXhWp8PtRDqCvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746291594; c=relaxed/simple;
	bh=1TwJD8XbRklj2sp5ts5OHIWYQOd0Ob0nwRKbooKMF7Q=;
	h=To:Subject:From:Message-Id:Date; b=EZfmABP3uewIuCzuaS3Fp2YqJFO4hNG9GHUki/9sHFITgHGJxaCgp4M7QwVQ4mfteNABcKijhpYQE2WF9jGP13WTl2SdMpl6wKdS05tjtxyiAe8+nrm+CyC0GlUHXwBknIaS4GewkfMHSQvYUhSlaKK/6VIv7xHXHVIgroIFd2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGfoQBaU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGfoQBaU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00D4C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746291593;
	bh=1TwJD8XbRklj2sp5ts5OHIWYQOd0Ob0nwRKbooKMF7Q=;
	h=To:Subject:From:Date:From;
	b=sGfoQBaUj3+wQCC78Yh2uUDaoCbxKBxLqvB0pX+8ZnHJwYTy38OngtxCLR/pOBYm7
	 7BeTF70IcDl5KY7MgeM2j7B02+R/b5EohAUB2TFYiQ7f9lLkjBCTm0+vsqGKjBBZW4
	 JbnneXklxh1waFRB2OdE43huLYbUUFW6oJou6cLE/LWE+2lJ81I264rg5ktMiNM0B5
	 y9354QErWGcNP2uSxXg5wKwMyc7EQY8XkxJ0DAq6C/0XuGuWKX29fX7DGEaSLUL0eN
	 /95O2QVymsYSKPwmeORopXOSoJ151z/OtwsA7A1ehQEKWS4kQHXqFklirSPrrCpeJg
	 YBsUweCSfCoIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF4CC369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174629159357.13082.10529795282812748532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65bdedb5ce822afa2381f26f92bc2cc87b79933b3849d751f5a2b0417f34f280
Date: Sat, 03 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746291593
