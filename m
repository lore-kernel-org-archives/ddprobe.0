Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A5620ED
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773467694; cv=none; b=qKYR8MD6Fn7d0N8HP5+sa5IuQZ53Dcg9O7PORvJgXreBp8qFrf4dXF3WpPUv7NufPMJ3zhdZZJ29+R4Mk0R5LT4bBJj8l1wt2CWDHOJW/N1Q0hJtlsXR1v7j8UG8GFnB/WlH+sOQJtVGaRhLzREZDcm8ReRPER0WI5Kyx90BnaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773467694; c=relaxed/simple;
	bh=LTllUznsxfWRa5Rr++7ajEj4L9pM4uU2CdUc209+Mis=;
	h=To:Subject:From:Message-Id:Date; b=tH/1I5ggbEFXfUxDrgbuVKeLFWoN9b3bNgn5FwLmV5FiQEIpYck1oJntI2YGjhU5rFIvqlAIH+uwT07d7A0RoRhhiLRDRmkTLE+1HYT+Pv8a7qZLmTGF2TiH89Eacx4jWMwGYIHNXWUQYiEkbYGStD0OfvLEKDuFNBoYrpNYe/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzlErjdO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzlErjdO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DE7C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773467693;
	bh=LTllUznsxfWRa5Rr++7ajEj4L9pM4uU2CdUc209+Mis=;
	h=To:Subject:From:Date:From;
	b=lzlErjdO2OaerdY+Bj4CfkJfgCBCcgQhJ+QOZJ8nAmyhqzgWGu3kRSUxp2PG7vqIF
	 YZPFMJD/Y47qIuaehQ68vDZX/w91Zl9nARBDmX041PBZgNwSp2gAOkipNyLpWDOWJO
	 hmwF7Tf5TP3J79OqfvGuw+loyKxtFbVVNkkxwBDFleV1SBH/opg36aKD3wO0sVjDo5
	 rXmrYziJjtn0IyRubaLnoSvQo0HBdpalDayPFcGwb8DXjU6jH0DGxGQi68fFFdykzw
	 +ijDeFVSUr2NAr1OQuCZZOv56FBg5it62a0SlWQdv5dfWI2mdv5IyP4wA50U4e8hzv
	 1mfCfz1xjAURQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951CD107BCEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177346769357.18455.11422040235838976966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1f287d9697f91f05fd0fd097b242afd2c6cd15a0c64e0e8d29caf0404747b00
Date: Sat, 14 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773467693
