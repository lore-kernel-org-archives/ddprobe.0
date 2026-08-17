Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5121F63D9
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786993834; cv=none; b=KnuXmu9066MVWiU0rRXh0d7wVpu/956iFIe0AB2In2Qp5A21TE3J+8as6zV1dVYbwbWX+/EFqSCdO2+opel1oAeV0RDLWDY5e4GqIy6lf4WS5SlTyBXL4A/xqDdvjNuspYBw4OCL1u3PpaIaSJwlI2P9pIY3+uk6UZYpakZmYIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786993834; c=relaxed/simple;
	bh=eyiZQr5u19XBuoM0bmGWsXAaJAqKDBLK2eglYzf/NH8=;
	h=To:Subject:From:Message-Id:Date; b=XOcEjC4rtywuvPg49Muup5bQNMgueWCMFvw0altT7i4oHzsoeRrFpkRChgEZc6DiEKYCwUaW0lxYuOj1W1RluNZNDjRHrrvqrCM/0G7wjcUQZEOUIenz3dSLkmjclr4eg5fJS5VQcZC8blrs9M4pFPgHeapott4tjCSYA2lMTrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LEoMcsJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LEoMcsJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8BACC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786993833;
	bh=eyiZQr5u19XBuoM0bmGWsXAaJAqKDBLK2eglYzf/NH8=;
	h=To:Subject:From:Date:From;
	b=LEoMcsJaltBMZrujethDKoeLQvw5Ltc2ZmSXoPORDmr51OdIfDSuMcmmDnGJ8lRbF
	 PPUuhjhxAFGiCCg2EofriGUjj6csH4aRBRoh2CEr6Sjs9JKBcT0AEbAFUShUAlNQTR
	 govh952y+FsqHInti1cSdpEuBLrqk93ZwS4+iH1k/dS0AanjIlffxFi/5pCHiI5IUl
	 YodJY+g6tTJ+L1dskRbDtf8qNaLYeNUSBKGl4WNWNrtwjO8JjImQBhLBg+63+nBiJo
	 IyYBUDR8flkZWjyqz4t1ap56rewZX3aMUuvgp5JENXRwvudjLeQINF7o6k5TJMTebd
	 DHCohECP1WbMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDD0C5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178699383369.3304.4865093878998088674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f93ffdf80c955a22afcabfb5cbaa8e4bf0a5b6a4d9c9986bdf00f6433878ab14
Date: Mon, 17 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786993833
