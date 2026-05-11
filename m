Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A44299A8F
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 23:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778542834; cv=none; b=GNJfGMsvw1ltQApanFr0kUdlJ4XgiO+nYX+24FKna6LOPCOYtUXni8bFeEZyJraNx+nV6cYHR49f9ZLHfW3PUDTCrTlDEGxVfzURU8949gaMvGUrjPFYDjA+Q5Y2JWd6eAnMhPHkN+oZPY+XFuLOMS4DTGz8b6eY0WlXG+1aKvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778542834; c=relaxed/simple;
	bh=pG4Xc/TPNvs29T3EbuDbK1VfnPMVn7wB+QhLe+1BAIs=;
	h=To:Subject:From:Message-Id:Date; b=DbBFDiLH+x0ltKk0LVw3sq6TWrrPzjrvaqGALVxHXq4DgIk0eMy974B8gfAn9MRs9vWEcFA+JEZW4JvCI4HkZKnBvcFPuY809Xi6fgZslxGwG3qXI5xL1QRU1syNfHV/hHV1bP4CtnPnTWdCH8rV32kZQ5kLkcKPBwQnQ0QwgIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmHNiWwC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmHNiWwC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B60C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778542833;
	bh=pG4Xc/TPNvs29T3EbuDbK1VfnPMVn7wB+QhLe+1BAIs=;
	h=To:Subject:From:Date:From;
	b=UmHNiWwCX9xNe/NbpattOKA3qh1/L2/r+ZjZvWSCNoejMsp7YPlX199fjLBHhFapF
	 o5lT7vnBwlnJWo91KlXCb9vNSfwiQrOrzTlHRtX05mvfDIYPVJwSOMBDgcCsAJAwjE
	 805k+mHWbDkt05Ja76RUJPfxNio/1rHJ8SXbnxh/ajAGuZXUErVvT38yj3KJIvh75P
	 goW9u1kCUJl4q/DvAa8gCxseg32C8Fra51M8rhhfrnpaaMJUeRs15V8+3RpvNIIrGt
	 g+bU8/exG9Lwv/AAuC12/rZT4KyuVNPzFe1nlKgq2O0czuLcRmoH/v0Va/bCKU0oOl
	 j5XaJ6QeyNTpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0367CD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177854283368.24212.15421374638293067303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b4dc56138d677367ff5a1027ba07d472688d3647ab413d1dfacd8b38ce21111
Date: Mon, 11 May 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778542833
