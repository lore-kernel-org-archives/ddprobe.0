Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB3423D2B2
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756550995; cv=none; b=b5r3Plmcab0aq+led+UPo8k3AgQp+aEp8OpexXbpj6qBt6lTG5svwjRBeC2N40xJ1qIdOiHuCpWF1Eiqg64lbW+ONC+77pazJ6T3CyRlvmPVPk9lG9yU76zOY68ZBfM6CZ8VvyFRyUGXKozdWkctx2Fkii0CyNOf8m++3H3Hljo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756550995; c=relaxed/simple;
	bh=3jNovXVCH4ryTjNQM1AaU6Xd5KoEEl//obxLw20wjg0=;
	h=To:Subject:From:Message-Id:Date; b=ANnLLjXB4r1aCFcrKSxUX+HR9w/3+J7zPFI6FLQw+cbNqwhUYfSnWaE/kC45Dl865vHbhHzHnZ9SaqvV5ZvPG1ODDIv0YMbM0XDAEnivNqxLPbOfLRaoctWkv0czSvqKIYmQE5Q+3Tj17KSPU7fYsv9byjktyx4PfjC64RVetEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVj8Poqs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVj8Poqs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48B8C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756550993;
	bh=3jNovXVCH4ryTjNQM1AaU6Xd5KoEEl//obxLw20wjg0=;
	h=To:Subject:From:Date:From;
	b=RVj8PoqswVWPAe29KrjIyDqJ1mZYmdYLNL1zMzz7nKqX4GFY1xkIhnkZSXcP/ESQw
	 rQrsY5fCX9lOnglpeETIeGQFKQz5V0ThnPmR6kuCIeQBvyTt66N8nK2+MQkdn7ZMdt
	 bVG4XJ0+qpLRbr5DnJjQMTxsS5hMzY8YSttyRH5FWWTgKbbnA0TiS6cBlPobJJ2tWJ
	 lfk4T2+0HBNbZ5H/zYuntvdMiyH0xQmI3IrIRMcSB0C09Br0cQxlZUrPOJmNA55072
	 D4i2QyIMDcCcWcxqbBiDoWfM1oF3B+3wW0D5H96GsJ3s8H+N4e4u9Fcus6OJQtp70w
	 QH0Vd+4bDpy9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91887CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175655099357.23161.9296412196185545096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2124de86b52a8ae2ae23e8000bee5688090c7af86a9a5fcdbcbd846e64a87fb7
Date: Sat, 30 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756550993
