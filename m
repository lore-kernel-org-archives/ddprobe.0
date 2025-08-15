Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A897286888
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755257394; cv=none; b=lJWw0LqtGPnFvr3MKdXqDjKSii38z3sLAWh3ho25QdPeek6cKqbhbJm4y5oq+P7r49UTpH/rv7VVZq4jQ/MfW4Dpu04nogM66uItUXs7G4GPOou2COvF/FgUUG4Dsh9AE2uxpN9xoHTfDTjGjd8u0OUeiW9BgpFUksffxCT3o7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755257394; c=relaxed/simple;
	bh=dp6k9wM6bEjduW0GzyhF8/NWHepeGMUw0ycnVnWBZUE=;
	h=To:Subject:From:Message-Id:Date; b=ag5d0Gx/m370jORtG1hKDeBg/qv5S1hLWy14ElHpPFVqhw0kT54IG0GfLzHyZzRfesIT5VONEXpfC4lpo3Kbykx+io1I+r6W3ai/fRQauLJgxsUCuGC4FbePqjGfic1IBkwAihPeDSKy9z/LwfczV4oSaSKCCGkcOQ4AfNcpS9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gI0IbPfZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gI0IbPfZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F48C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755257393;
	bh=dp6k9wM6bEjduW0GzyhF8/NWHepeGMUw0ycnVnWBZUE=;
	h=To:Subject:From:Date:From;
	b=gI0IbPfZSSYjM9n0ek9ctCR7lTT3k1EzM7RfxY4k95nrA2SlRzHb+u3dWB6IwbxLG
	 wABW+6GRILxRNeBF4dk46Rmcx1WFgLOZYXheRpUfHAt3QO/RwWrF+mDUa5Smxh6TfD
	 faZAeO0VriMYpPaP+DzsWMiSJhfTPlSM8uzuP0xoX4IUwA6OM5rgA7jMs6X+IlqZ9J
	 wWLXStNtPkbssD/wbC1Atanjcr6KQvWnQ3/s04r+FF+qP8C3xxMROnmHxVZTTJUqB0
	 l+XEO0NkjIaKNWTZMceoDPEeuy6bmsXUzLGhUZOIX4U1y9pSDybpa7xh2kTD4021Bu
	 IMEonBKOOG7nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92635CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175525739359.6562.2344832741688327406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff96f48dd52c215999cb98cecce35b81aba5df629b46689a98e9b65bc7f8c146
Date: Fri, 15 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755257393
