Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2319E3D8E
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724213154; cv=none; b=rGCtYpMPeFN9wYmbpEucoSjXcwJ2Asym+KG14hoz9SKwHLgo1C0IUehx0NMuM0aXkBUL8feR+aPNgW8rFEOzlEjNKuLu26RbPHf3zKcy4TeWF69tuGuHsQzCd6DtTyZCay7ADVcEPynsdASZO9oaxwc0kmhC9cc1FWNysLXNmyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724213154; c=relaxed/simple;
	bh=Mo1E1P96/86ljDD3cY0L+EmpxZ9zBcB0aZxxP+zeLlc=;
	h=To:Subject:From:Message-Id:Date; b=TfmHhSpkqyKjBAYI3fCZtPKHb7n5KbHt0WK8QI1/b2T4LnT7/youtiD+pkfNhIIQe4uXG5aW2MD6A6SWRq8WA/CIog2bPVBlGnkICMGbuSljYTWLDCuGRboCSgmycN1Oj1GiGoDFqskZ4hSbpfbDyt1dn7Zv5lqtbjc5k6SjcPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xc9J21JQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xc9J21JQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF920C32782
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724213153;
	bh=Mo1E1P96/86ljDD3cY0L+EmpxZ9zBcB0aZxxP+zeLlc=;
	h=To:Subject:From:Date:From;
	b=Xc9J21JQBGjGMXVP0PPrRqOKdqzdtbFCt8HTTV3/CV90wxEdgJjU8Q0TbBb4X+iqV
	 gRW8b8+1EEou5z+uHKipJiIUEcdYNO41k4oIla7i/Zyx1bPjVEITi8P1bitmx6X+VO
	 6wPxqv/jyouG/Jx8kHLz+GY6NKp7qtPMkUcmCD0jvKI70hkThh2FTWI8NY+WKNuAvk
	 VtWGwWs9ycjMCWnSaYH0nM46cSEAstmtiD+k0WOD6w/m7/6/JlzXFo8rIx5BmWVriX
	 I8GYGdS/YG814o+uXvdXHAgl2KFraH61T+ZvHW5TzZYiILt91YxkxTqseYStngMgPn
	 xbc3HhnUiR7cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9914EC52D7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172421315361.18316.8465343818466944990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24d824d88bf04d1031659bd63db27e9a39464b7487016c21f5532a7d4c29cf7a
Date: Wed, 21 Aug 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724213153
