Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3294C6BFC0
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751268594; cv=none; b=Mt4GlYW0k4866z1ff6CaglsAiz8iHgPbv4x/G6Y03qenqMl3mfis3rgbNhVZdQE7l5tEBbFw2DzapiaFRTnt3srtrb1xXqOsXr0Ro148Xa8mKpul44W/NgvLzFtv9gNNx5pBzVfJqZ/FPUj4LC9ffMwV+l8LcrXxLFz33X5rZ/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751268594; c=relaxed/simple;
	bh=rmws6gnYcVxtBMS6XmZ/T/zJDwOAukHtcHzVYHNsb6I=;
	h=To:Subject:From:Message-Id:Date; b=mLsDiOEgTxAmLdcYo7LL3gHu0Hck9RpBcIDu5E/14uCIUTEqkC2zaVCOEi9mIjBJgvzy6OEMLdipQ8Sk7tYvp8jSr97TKKarAD7hwb0yxd5/acIT8hDi370tFWO44KABpDFBVN4K1G4aINcVVBQ63uabdNBhf9ajLwA/odS1dDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5dGzDT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5dGzDT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE7CC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751268593;
	bh=rmws6gnYcVxtBMS6XmZ/T/zJDwOAukHtcHzVYHNsb6I=;
	h=To:Subject:From:Date:From;
	b=F5dGzDT4hc4kKhlMUa5lG4splkL/DlVt022ZPctRolSjatUBH9e3bFK+0eEYt00Mi
	 LNjzK4vARbk7HlVxhBlBuouWK0cy75RP4rSyK1psa3nZzAczZ3RRpGdydNMmXwgtg0
	 7ylBtIgFXWq2vSNUardyaRfk4KA9uZimFiNOspKCM3QnWSticDWkB+kMLRai6p0v7e
	 pjPJ46wzaK0uiD/ImfP+DjcPkG1LDe++ORwLhfQkUQlW66Dc22ghw+NWrb9G1pqnVt
	 Ncwcl3L6DmMlp7RSI/hvVqannMAwTvDbmmcjXte41OBC2VZw2q2B6PiKBiKvQRa310
	 NXXggeILuOWUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBFCC83000
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175126859357.6670.2693538783154494626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 476009763fe3ca3ea0f90f917eccd4f24a72c915e129d71b8322e03944d7c6ab
Date: Mon, 30 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751268593
