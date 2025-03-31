Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EEB1DE4F1
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743459594; cv=none; b=Esogg60wBdOkKAz3Cn2ds5W6hxPdRM1SklxNAqhaPKPpAuFa80GM+1WeH2YEA23xyYFU+0jnCBcyStaFEqLACFEFRJ53HcP88sj7YPx+kyFf8Ah5nRIcK4VyGEmw2eem8IVTYqfJCxLBuU2lHbaCQdEiAMC8Egti4p9wCEthAFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743459594; c=relaxed/simple;
	bh=zS760Ayx1Yrg5TAlnVAonucYEmAMM+DlXb55XzYJEhQ=;
	h=To:Subject:From:Message-Id:Date; b=MoX4Ng6VzNr8ueXgRAbN57MX9jfsDLMTJbwEZFXN9ZX03R2jFyxsmwAVXkAkvWP4aOMOrNOHDuXbZTDczxeDkqMclbuyG/m4QWWA5cZAbfsBLtn3ZwlrGoWwj5Wy8QsKIHlWTtMACiOy4Bh9htxZmlhbZkLu0egqI4Ep4Nv1j/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5dxyvCj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5dxyvCj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87C1C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743459593;
	bh=zS760Ayx1Yrg5TAlnVAonucYEmAMM+DlXb55XzYJEhQ=;
	h=To:Subject:From:Date:From;
	b=M5dxyvCjl+H6niAdk+O5Vt6oxUOvjcNYRBc18YSLcmViTVgFA+8M8p1OuBrH+y4fE
	 fOEL6qL4d4ALbuoDu2Sn8AW8qWK1Oau9J2buvgnU6t6PgKM0xYtkqsjIgBjYx0rbfE
	 GHwW8f1/HuYguTlLzpvpyBCUOkDacxAkD8a5v/t1D5V88GBtxVeXjYvA/pE8/OhECv
	 Wzj/d2ycSb78/OMocIbGbfeEt+lvKnLKtwJY7G2yfbA/o4QXyUjSHVxg1tSLeW5aWg
	 gnC4Fa0QILlCwxgPsRcvhJ+ORqhr2PcwXuupGlXaZEQ0PPQakLVJvIcp5mgrM+V/vK
	 K89eB1gYaG5OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974A2C3600C
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174345959360.12252.10763911423341616361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a8b97160704432db99b2cf2daa1b01d325b635683ace384219d5cc648791c8f
Date: Mon, 31 Mar 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743459593
