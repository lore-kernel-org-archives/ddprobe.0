Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00A231CF9A
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705432097; cv=none; b=GDmNhLQ01puYAqXrEUK/dz4oplpVbR10sMd1wcKy7ggMb0oCVXp28oJGm5LM7jIXXSs6Jr2VMLdgqpa87JQFI8yun+j61hmGbvM739HZurQn/lrm320yDTGvpC6+LQ1DpGTtcq0iCca6fW63JlSFZUXsoO/3qU61Y4QkxOhy8qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705432097; c=relaxed/simple;
	bh=4HSQCdBqbMD9CuUg5vZz75yiG8eMdBxfK+5eJSMQkiA=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=JCefOLlDbpCSD7zIcoemZO3lTeiClyYGneDesX+8i2El1BtggUzIj7WodIOUPwSNnrQQWS7RynMA5b62jmpEwZnbj9f21H7Ep1npsd0K9FRgW0vTK6w2qxj/zJ6nQzrD6eih5NHDRz8zs4E3qVtCzVErC9RfCkiYhGVQb3AX55g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R61jID5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R61jID5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74CE4C433C7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705432096;
	bh=4HSQCdBqbMD9CuUg5vZz75yiG8eMdBxfK+5eJSMQkiA=;
	h=To:Subject:From:Date:From;
	b=R61jID5ia2q2W2pths4mdM50XzQW7uPcbKtWTUyfUaeDEp9cEXLJFoKXHI+zH3mHF
	 m7vLjMAholehaJb0h3FBjLoWhFWSmlImqut5B+0fVX408zm2A3H7QFoKCGR5Larwr5
	 3Kkzmbl67qr/yGA8pON2Ybi0BRj4THxxJ1TXGcJrnxF5p2G3IG+S1nyHI1hTTivOIu
	 fMzEa1mctKs6nH9zAF1eDuI6nh9a5Gt69oFnbp/BroFpwI9Muc8PxrPTqdFOzn1Ynh
	 Y6QqXqDBmYIrOT0bpBkEGk859ffP5CqwEW1y2qyiFoXRHNprutqaahrouP0G5Lo2d1
	 K542TULQkwvzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D4D5C47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170543209637.25250.6260949536974839148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4335e261cd640e94ae14d5bb9eda4ca75099cf34d38f21e51a52825ba20fcfd2
Date: Tue, 16 Jan 2024 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705432096
