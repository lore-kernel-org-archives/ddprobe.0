Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B233ACA58
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 15:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783523914; cv=none; b=pbdb92tzibskSN7L4rw8mfQ/rlwuQ9x7dXjcaaeTftNRQ2MwRr8PWoyi6xVu//5Zc3V0NPltQjH8m6Ge15DZgn4knAsbVcPLb3pQR+DaWCpnq4LNO8gAHPRJO3wd4vIQOC4OIrN7XlcUb1SxfMtJP2lon4n5XedEvEoTmmvq3Vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783523914; c=relaxed/simple;
	bh=MG7DwFQwtzajqpVdyoOEOjYEEI8kmAmedc7FsjZT/mQ=;
	h=To:Subject:From:Message-Id:Date; b=b5SKgb+JaTZctwRwvCNNYHReFB2dxTxgsuN8I2NLLXLoUdlbklV7tWXcvgPCHAhIVKiMLAYsOr4IAkAPhtImdrLwullhCLv0c6zusBh3h1dZIpPNmmnl1u5n1xg5FgSVS29vRoviR6nuWdhZFSdoLm6AWOc0yyDii/doj8sWMmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpwauAbf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpwauAbf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE370C2BCB7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 15:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783523913;
	bh=MG7DwFQwtzajqpVdyoOEOjYEEI8kmAmedc7FsjZT/mQ=;
	h=To:Subject:From:Date:From;
	b=MpwauAbfxjNo/1JgTIYie626uVRAyyd1I9Xr7NM9NRwRFFg/ujWXfDxePL1bJvwJL
	 5yIlMXXHP58LLw7UCqkGp/tJIcr9wW2dfdeD9Hzl8Wtyt/pydTVYgESnwttbsNUB0p
	 SZ5IPC9ZFU4kR1I9Pk5Vt5J9Vq99mf/O5KLZeo/OKfAG0s9w+2rsBkCTAJ1qitaMSV
	 hpyKqS0bb2XJjBFizgq6YjBwV5rs6fkhM2TD8b4QXwFldApSUfmvL1LrupEe6qYyyH
	 D/L2OH+2TZz4etbdSeRh6DAYDHLnCDSzdhEd/1yH/UuiXW0XYG9hnyZlISK8LDSOTs
	 Sj6FUjaU1+a3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD33C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 15:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178352391368.9292.6599453826307504299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c60538c8355e4d32b2221e1f6be64eb63d0210fa45cf21428c845e9e7a74370
Date: Wed, 08 Jul 2026 15:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783523913
