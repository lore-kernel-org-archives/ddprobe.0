Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232021EEE6
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 17:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763832714; cv=none; b=J+IUvTf0vZ708B0DrWI9N9Eb3orTC0cfTlG7lD2/UaKdTeLi+AzNvZf24TaK1hXI/6CAloG4mYfEWVEejd2B2lmGg9adFI5gNKgrsyyNXVB9SM6qWCZ7+E6meeEPnCugYDDDXBaYr+TCpeXdIolCCK7A04uTxPv1+CGHQoxfM2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763832714; c=relaxed/simple;
	bh=1yNGB0ujIPPVIEWASaPWcBrmsWv+6UJ/kVnF60gtwVc=;
	h=To:Subject:From:Message-Id:Date; b=bQbHUgzRSv+/SU7yi9bbk3Kuh4hM2wB7cYB3cCw57tLGOx0QTN3bvifuP7XV8nmFhUaBE9oLlzpPxm5EMbXo7ccdyLxL2vxw+AHslpEeFMCykkT8qyT6rAUp8WzGgDtubWSjHe+cEysQaFJXWFUOmf7JInbGrc6VAxqP5wQb/ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2dGNAcX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2dGNAcX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C4BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 17:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763832713;
	bh=1yNGB0ujIPPVIEWASaPWcBrmsWv+6UJ/kVnF60gtwVc=;
	h=To:Subject:From:Date:From;
	b=R2dGNAcXf9/BbrUmCSaQ8vBIW2wXSHz5m7qB7Zx1TKec2L2w1P7x1oKMQ7My8PkLi
	 2DExwiL7l8Nqe8WT6g+xgfVTFBuoEUk165XV/pmih1w9vze2P9wBiian1Y8u8dkZX3
	 jwHc365BDmJb/2EIxuS5cZ6YDGkDJ41QtqQFpCGAlVn9tSEvPz3pqc2dnwP2pgwsCo
	 KwbfJJiL1iqqvAfY3YMsub1bJ9KVF9x9CVsL+aqQuvkJizVPa3NmWHTjpMgMDV792G
	 ZCid+R6TVdGBJknt2R9PC87MYo4Mgz1zdCjIU/MQ/TsLq5a4WWFaGmKOPIDoHYOpBa
	 xdDfuq/Qaiofg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907EFCFC539
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 17:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176383271358.21371.2754791005058318093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51c7a839e18d6d1f0aebc7cebd2c11e9b09f67c345d515f6c2b3ea5bf6c72bf1
Date: Sat, 22 Nov 2025 17:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763832713
