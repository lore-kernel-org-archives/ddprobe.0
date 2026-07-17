Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F1F42A166
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 14:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784299114; cv=none; b=jaybCzYQSBkdw1RfWG3+bme/dxzm5vR7eb6Nqk33T6Vhx+W/6z9DoqSv/iCZfF+9Va1xDq8RWF94e40YrDOuHeZbrBw52t1oOp+XatFHeb2+IU+yN9P5tyAghFIylIc5R0ZIcOLWZk3ENcBAtQOr6sixm4rvtIIlikZSbhEkTp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784299114; c=relaxed/simple;
	bh=luVrB8dAVvRBCCpDJ2ZT2sRHSAiFr0iyE5+BBeQW19Y=;
	h=To:Subject:From:Message-Id:Date; b=VluMLJITQXKDCntIjO9jknfTt8m6Bz7hsK1E9GLjZOP1Gm7tGa4C+2s9O02qNvFuz2GAnrqNNx/33CGx8Kapns+7GsyNOiHwCWh2XUpwRPiOPkbzDlAonpnk+xm29GeSpP7TTeSngufnb9hBCnq6tNan0ev4r0xs6JoCElxTxqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nniPU4QF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nniPU4QF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC426C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 14:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784299113;
	bh=luVrB8dAVvRBCCpDJ2ZT2sRHSAiFr0iyE5+BBeQW19Y=;
	h=To:Subject:From:Date:From;
	b=nniPU4QFJAAU8EXP3xGZvJNHowFnKJnBEWArasVhNg3of2HLAcjONSfzwim2nE4dN
	 WkD2haHf9MF0QxqpIyNk0Ppmq5+nYjg9CU60QHbWfLpjR4MH4Q3dvezdsD5qmrcR09
	 eAY+FqxyQuUQtkERIQwtH3dWfJCPR674r4aBpYO6boBycg8XejxMqVsYXlCdm1f/Wh
	 jf6IqOWJrZqbfgfb0xqFwKun0vGwFV82cFwyw3H80dDbwjfwIwFK5p6KPh5bhnSXnL
	 hivu+M+nASIw4pQPFXGb44RquyCiFbOMo3QcACEO5RRU6WGnB/nUyNc4escENXThrU
	 TYDfaA/q0+56g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA577C4451C
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 14:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178429911368.6501.5713958094357708197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 292a0a732f6825c9422454dfc660e5ffff85cd81534cee6dc06d145bd4fafd47
Date: Fri, 17 Jul 2026 14:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784299113
