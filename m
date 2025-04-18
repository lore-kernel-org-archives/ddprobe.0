Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DB025487A
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744975794; cv=none; b=OKKEDjlOa61ARuyCVmKaVP+2dAFFZxFcvzPLDjzuPw3aw+gv19ceZASZH211wz5yUESKTrD80NQ9oiUvwbM9t5fDyUB/mFXI5sytPHlKko9DUU5TgR0z5itiIpfmNX8ilIr+mnBq/PDLqfFu9T2z++J4YM4V5g3hgKg2XDzOxCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744975794; c=relaxed/simple;
	bh=SzpSUST+allFT382JWc6TLsOAw7KhOZ+JJb9laTFTh8=;
	h=To:Subject:From:Message-Id:Date; b=qYS+EH+9nOl8ZyAFCWJl955Fm0xMqLoCl1RufOOTUxoohMmRcmUuQGvyPMlwMNlHd1TxEb/KCS/Z5Nkps/l6PBd/eclXrL3fuTZJnnCY7yJQ3JFeJ7lHvmLIJKT+tKeSmMIQFClha0qb6m0ps6rXCTOwwP2+MUHYJQCbR0xALMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMQRTD7m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMQRTD7m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A79C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744975793;
	bh=SzpSUST+allFT382JWc6TLsOAw7KhOZ+JJb9laTFTh8=;
	h=To:Subject:From:Date:From;
	b=eMQRTD7mxln9ajXueS/hgccJJ3mco7stbgrF/3tP2OapXNxWgjYjkEgbjZf5L75L4
	 ZxFwcT1fAusWGQmKWV/yNezuuWxSclVoJyEB6CBTrQPbzrM984nZ8MdQB+u3YUS+0B
	 v82U11ZBz9bsc9bZNxPg1vYI2ptVni4MvNIJzmB/rkF+QjNs52P/BEJ/fqMk+JObRt
	 DGzdYaUhGwpX2E4XEcLkbNevYyj5WqUroqC82/u8k9zRPJTL6DILRL1M1f9pTt+IvD
	 xYcZy9u1x77FSM7uONF+0KMCcuoSq8mTEaneI/3z9tketN7mX2aBt16Xv+SQAxepWW
	 7ayzyAlGOcZhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA6C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174497579358.4008.15174932112745851933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d93ed528301acf5b0edd22eb06152bc56a31addec7c1393ce01dc8b2d35c308
Date: Fri, 18 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744975793
