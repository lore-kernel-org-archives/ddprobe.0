Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F1FFAD2C
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 04:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720414583; cv=none; b=oA2T0zsBCrxTSlnlV2G4ELHmz1PISoZbzsVSjg3cfCdujvRGhI312iZUUOHfTFdA2Yh/47A9C9HGesN4QwZoLS1p0Iy1SIGbkXcWcL1cBqDLAJp7UNJhlPBs7/ovNSNDcgGFMHsV1vDGfEVI5hAhPU5lPXdLXLYmC/ed7HVe6hU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720414583; c=relaxed/simple;
	bh=ds+ZYZ3zLbXrmvtVbDHKNZ5Wp+S9QI60EU5xGpPPVQI=;
	h=To:Subject:From:Message-Id:Date; b=czqXSuT2wz7fxq5pDumuolVoVvH5cO7cJ5NdNuLv9uFjN10MiuzNTIk/mtyaKo715ky7DmurSYBpeWwa0ZQVOk0TVXymdKczDINf4jkCSaK3zyDTAD4vbqlJsZVvOga6TITrLjQP/e48tfXeNB1ehYEKiD77qLxgfiUircu52VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFWkv5Lx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFWkv5Lx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1B049C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 04:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720414583;
	bh=ds+ZYZ3zLbXrmvtVbDHKNZ5Wp+S9QI60EU5xGpPPVQI=;
	h=To:Subject:From:Date:From;
	b=qFWkv5Lx37Dwyl6q975PGpQuu0Di7kBuAvps9uDvhxvvc+Haq3xzuMtjVYSmJd1b6
	 y0uJKiQMdKZgCIJHQGovrztoMCASPiVbaJ3h5UDBrS901PMAIJoJwqBODUGnD4UJxk
	 ZiLjJZTe4d85usxxUeKSNtZwfnI+ReIqFqtB4P4slVuwFF+ed1BGpJIoHAPibKS09C
	 MWc6mhu7Ac9zs0J+WlLC3kAeOXENneAYyR4OBcnp1+iW9VaPn8D52v63D9yDQSE56a
	 WoITHNw7072P+rwJj8+AhL6VtW2ct1z2LyKV/n0ZCFoh8eyG/l0QXlfSTDWFL9yfr9
	 5BlCyW4ZXitCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 061A2C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 04:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172041458294.13147.11166763119806218556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8550a487926055d6a4b9ed281e9b4a76d8b89b7d5097b3b65489be50d543032d
Date: Mon, 08 Jul 2024 04:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720414582
