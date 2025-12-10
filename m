Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197927080D
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 04:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765341174; cv=none; b=lOkG+sxqsRaf7FMirC0KtpLGGw+mcDSvsj1HoLZGPISGNAqSrT7fUYvroZIeOTQZH9tH0DFuDMgQHU3sCIwpBgiysgFN28CPwwji9OxbN7ZF41xHhnPNx3DWxQlK7brNuiwVQGM8GWV7vX/0GW+wOtRoFzdZlmOe+dkGSdTCWNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765341174; c=relaxed/simple;
	bh=yoaWp9nYRiV9NsBh14zTq8GNBLrne6Zcr/QDbfTZZbI=;
	h=To:Subject:From:Message-Id:Date; b=kVqZuPZGn8pgonC+t8c9Y7/Yufvf5ctQShRSIK9CRUDWV6rAMSpSeQRWDViE2yyC9+hU6PNcxmj+NsVVX/9O+9PDUUEcB57pBydGWxSs2zF+7/DHIyK/Vzle560wqvBF9+7DOMtNH99nKtst0QCBQCtSbPNoA55COFNj6vxU0BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcPTJR1m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcPTJR1m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5146C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 04:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765341173;
	bh=yoaWp9nYRiV9NsBh14zTq8GNBLrne6Zcr/QDbfTZZbI=;
	h=To:Subject:From:Date:From;
	b=HcPTJR1mpDupVXExmwnF2stCgGhoOcyf+f6FvFIQ/nOB1ysJblayVo32rMqPgy/4D
	 dMJLclX81hW3E3ltsUghocg2DX4UarYn1ruNkrRxAc8jyrkwJkFaL5TyblLo8gGtST
	 kOR0a6cfkDIM+z0XfnGgFmkd00UuzkweFyl5NFIiuX1SbeKsKAW9dKJ0BqAaXRCjdt
	 laE9LM0kptald1mvOH7U8P4YAjawTSYmqgijVJXPABHoipMxzeywxp0DSSYm3EXZVo
	 ZlyL8LlVuY4tkJnvUmQxWWOgnDRXIoaefBgRm4PmU9ktioDzg+cyDJo7XoWhp/gToq
	 Tl35cBM7bCnvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92772D3B9A9
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 04:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176534117359.16997.12590760120090751634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab30b04275ad18b4dd87e8cd40992e055a79c68ca3db11526f5d7cbcd13de358
Date: Wed, 10 Dec 2025 04:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765341173
