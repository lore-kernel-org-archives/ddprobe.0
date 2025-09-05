Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E81736CDE6
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757082595; cv=none; b=WM5//548/8tjKCe21VKk3J4Ln3iTWDDwNsg0KZs91YXWIumgI9SsCG0d0a0OFtoxRBB95d2+yEgVXi3lAgcwLodkEYPEHkjO7ajsaNt+Ft8vMXCcpx7RA69eXfM0A+oePsORXaeIkSf3WUzFNV0UdE5XJkjI++cpI4iTBKfcuiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757082595; c=relaxed/simple;
	bh=JeK0Z0RLUDUq9zazMkXBfqG8PcI3/mIik853Eh3cMDc=;
	h=To:Subject:From:Message-Id:Date; b=IgPHgUhVMcHYMjKce/lttNz4g220/Ewd+8+j6qknLbB4j0i/xAvEclhSTLcz7rsqTQ05KrGNxAC6xWIwu8VXHAeboZX6Vbjh+0nV4jBxvuOn7AwOCF1yFTrdYeYn8z4Bd/bIEarBYSmzitYLiFXZF2bacseWOZCptwOsbHdrrrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D++1FZpO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D++1FZpO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A14C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757082593;
	bh=JeK0Z0RLUDUq9zazMkXBfqG8PcI3/mIik853Eh3cMDc=;
	h=To:Subject:From:Date:From;
	b=D++1FZpOcnGgbjtEE/b65Ct6yDPiGQeinEzbE0oVZn8wzbsYKSpEcb5HrlT73IoVo
	 g9hPIYkOV9aRTYItdHcVmw6x7TvSUSqUlidbgp2YRGv7RaFxUSlPmHetZfJw2nKwL7
	 BcJfmJ/UHduc/HUHN1ycENSC14+sVZV94UIG9LvULRCDuQpBrKEk+ukdgWYBLNkCOE
	 2N4Xwxxus1Wn5vUCLdbIeO512cJKUdiKb7my+JqbIDFejClbsXEZbmvrPrfA38nrys
	 umJqj7o7pGmxW9lzdosuNDA/RbwgEpVLhDAUdKfurCGzSszn9UVSp3JF2YtmH1uH8w
	 R8k2qBS7Km2Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A78CA1010
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175708259358.9507.18155674347145210724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d607d4c16c6baf28df4cb0d53ab18a250f99e7a99763e43cda24b42fe3230de8
Date: Fri, 05 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757082593
