Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381851F2B83
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747171194; cv=none; b=YTFdDjipu+9ARKj9FYlPn0WC/7GtK3NTvZcN1PjgQuouisFZNCUbffrN7pVQYDnIkjC4IexRkYzOy/X1xSbxfTw/Sa5/m352HnyuVtCRAfcLzzyGs0ocVnc5y5pCT7wsr1xCRbfmuSvu4bEqTqDX6f3P2/yYU1J7jETeF2F6Z1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747171194; c=relaxed/simple;
	bh=uPExMuhpMw7mHAENV4dKZbKHKEGg0nnToOOaTJkbs6k=;
	h=To:Subject:From:Message-Id:Date; b=FkXIl9nnzhT5gkr1IHkRNyVKrxAm2uSQ/J2ImWQlZBL6TFHyJyI3rS9tTq3Yoh96G4dKjt80kae7YYY4D5er7XlLcjrfryGvSdRp0pzQwxZv3fgI+vI1N46M0wEnbiblABck0nuQRvDliLEEBGVq2S7QK1EjWVqF+luY/zdRWSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBQJoTM+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBQJoTM+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAFEC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747171193;
	bh=uPExMuhpMw7mHAENV4dKZbKHKEGg0nnToOOaTJkbs6k=;
	h=To:Subject:From:Date:From;
	b=UBQJoTM+rf4bmKOd/C9rsQI+Cuvh7VJ2MD43c3HDur4ev/jjKcZbHllLh7AbPxYst
	 XYwSHgV+Zm4XcgDdrTdRvVuLT6HjDvAjBHPQZ61pfHMjpO9Yyni2HQ57ooG7aUBFs1
	 8GJb5yBzLqAKZjB//fPuD0xZCs8CPITm/QH9mq7PBVCnLys9D2U4YZieO6Bz7wUIhP
	 mQfH89b4duwFDGSXbsNCIReiNdREu+s5Y8WaQhMaYVbeBGmC034XM7vCSHBuVOBC0m
	 3rrcEAvNnXAb/APlgQb4ju3oJYn6hG6C3OkhLsgM1uGAqso8AgcvMcyX5/ZrkpzIZz
	 +ZhycsfZyKMsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E155C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174717119357.20180.10257179609695528597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2303802369c45837c9f22375fe455cf93b3f5bed29440f5d7158de90cbce5b5d
Date: Tue, 13 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747171193
