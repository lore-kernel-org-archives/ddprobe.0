Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6047C22331
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 02:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720579583; cv=none; b=TaxRLugaAz3yso5PBcK4rNykVi8wEERqKoMYuuoqA4FQJZ0FTK1NUvWCCH5BSJae6/dqhsB9iPe9oQOZJTrScc/j3kHVkZ1yziB0Wfabsxh2hrv0NN/BCYvjY7kXRforNV07sfv57dMN/Mj/tIlQVwwhkQ+ME+UB14XBd4vkhkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720579583; c=relaxed/simple;
	bh=EVTokzWB+4zxcMw7WtURNUBGCaKUguELGnlEfbpBlzY=;
	h=To:Subject:From:Message-Id:Date; b=r1JdnIebXuaWdydyUdKyWknW/axyOA65kn8w/VHkOkC2nEy83uYtt8HdAf4brC1z+1IE8OiPjJt/5fcJRQEeoEaEIoBMZel6OiKL8WoRgR0lhhV+NVhM5l8dPGIxQhzzxtXmmwmGpxqAZTSnCmHJ25Ir4QjaVgv9bbY4qQh5qCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYdhmioX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYdhmioX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D20C3277B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 02:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720579582;
	bh=EVTokzWB+4zxcMw7WtURNUBGCaKUguELGnlEfbpBlzY=;
	h=To:Subject:From:Date:From;
	b=dYdhmioXDuFNHTjPeORqQSXEtyvwOehE/7vlUVxb5VKZEp7yuA5hnivj5NDO1nsIv
	 rlhY4RU37dzhag6N3EZSJqKnmhrw5NpHIK0/pi+Y5DpUGbk08AswcgRupRsc0gH7mJ
	 QiA0Gv385pzKKJ1olaa3y4UU2exkhZWA1oR6ejSSQaaKfmRlvQAQaUrdbRdhiy419O
	 vIGw6Sq2GyIJKsoA/M/e5MIUK1NA2N77VQ/i/dQm+oMwuAwULBTye8x43Z1MJNXCj5
	 4+9B+LRsA7d+W5E+z9DWce0ngeQSYTpq6TJ6rgUMl1mTlnbMAcWGrCxkZJaPonzML5
	 cvwUe7jDTySFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C19B5C2BD09
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 02:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172057958275.12336.8479821431769037211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2f747c308e52cc12142aa250d9b2c6f7d25d278913d1df4c3dd2082dbc94591
Date: Wed, 10 Jul 2024 02:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720579582
