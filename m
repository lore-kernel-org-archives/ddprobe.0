Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590461B47D0
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 13:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719926723; cv=none; b=KxzunncjPVrrpE7C4IMCWQS1vfrE4piQhVOOzW+CtpgMCXJ657gnQIsOqLHZCmK1ke6LgkpRBGeKOOCjtBrdIF2tiLwAWcnBWQsiRfOBAsTN6P6nJpokEImGmO5rNHTuzh0tptne46/Ce/oxYcrUiVG8QMci2+Szm/gUWV5r7XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719926723; c=relaxed/simple;
	bh=qwkACJmm7yEkAKOmXMzcqgLqXtoAGeB0Cs62BNLkEHg=;
	h=To:Subject:From:Message-Id:Date; b=dpPhjPNhgLb7zvlo6SE/umzHWCkNl7cIGZb/L5Cq/ndot5gHQZ4pIW3FCjz18K/aBwrmLFr0EVfP5LtOUKKaL+MQzWO+2j9CVroG8IHvhYOLVY+kCbU6OvnpJ90nOv6ry6B+ZQkiRsqQHuUpPLC14fYbn3t7n+hnXGKEKUYlaZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFFUPDnc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFFUPDnc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5E6C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 13:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719926722;
	bh=qwkACJmm7yEkAKOmXMzcqgLqXtoAGeB0Cs62BNLkEHg=;
	h=To:Subject:From:Date:From;
	b=sFFUPDncOET9Pi1nCW8K+FHgpvnvviflkH5o9GXhjueJNmQpoJPYktJXclxm6HHOv
	 PyKqXTKtU3N//seFLsSddWVgo+wl1/4nslimrztcB5he8t0Lbh8yD/qjhYthxP0AWG
	 Rf5vKejnOMX+PSmZdBseWEQFMxumoBpM8FveNEzBKfo/2nSSMVdSKbtFUZYaiRytSI
	 DfRw23bnpLSVGHKGFau7SRRvQ1/whPCq4iHjW+OcDy+2HtB3XeR/Csj4EtAC7jFAuK
	 rj035V34mYtdPD71hNzlZOQ96/KGmkDcJyVnsaHmKOg8sZD/vrBqRC8ZZdgF4JEEv4
	 EN7oCTAA2uthA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5140C41513
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 13:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171992672278.1646.9604097875469939108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a981f06bab556b2e34a127f93784464492cbb5ae25a2a9fe3c47d4680c8a55d
Date: Tue, 02 Jul 2024 13:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719926722
