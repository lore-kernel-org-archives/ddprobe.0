Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8DD2D131D
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 18:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779646354; cv=none; b=sc7Hev0hcLdckPR43ywP7WK+v7pKj7pL92P7w6wpSxhFasBXdtcvLoHJYeyBpWWAtvKRySHAcrtE9dktWbpALiejkBqsA4/IrussL6uPQTHwpCN6ymowo5lgSLUmHji1zyRX+YmFC0ETPlp83NIgtk731k9MHGAjWQMqlgfa+yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779646354; c=relaxed/simple;
	bh=UCdDOb+IsJyEoT+7VF16i4d5JvkTl6Zc4hxW6bey2tU=;
	h=To:Subject:From:Message-Id:Date; b=YjQWJ+e0MSbg/QLd+DN8N5xIfc+SMzk/9YXEspuXt0hsIQEZNne+wXKXiqHXmZe4YqR/xHIdFeovqq9uaIa0DK4jLHGJo+asJ8Qx2izXvbWFl+PmLVPgF30AFo1Pcoe1hgEIzM/KQnewaAJuSUhfN/u1vfI0e6UBXv74B8S5BDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qMb9kyUp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMb9kyUp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C472CC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 18:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779646353;
	bh=UCdDOb+IsJyEoT+7VF16i4d5JvkTl6Zc4hxW6bey2tU=;
	h=To:Subject:From:Date:From;
	b=qMb9kyUpAT3nkuG/0OUlnp7/BwvJ+sBkLCM+LX9JXGCmnO59B8MjjjCrnI/UTWU9Y
	 nhb0sZkqkkDQcXyukmQQLmRdpd9rM50vdgYyLqDY3iIv/UedZZiDq5zIL3vEOfBgKz
	 1GjrFl+3OT53DaasS7hQ7pUWbQwnnKrYa7ys55dvvFJ64T+1rhnfL4P2IBUAEUm8WH
	 qs/MLP0J6luOoQMC4NiITO8UYweCjAvKEwKhhee9VVHbTkFxQ2qJQu8CdeN5IXHTh3
	 l5qo1eJKyTdSP98TzloTQ7BzJuiUWgstDoBzcHWdPDsmQ2UaPvewJ68V728s8zNL8b
	 SZuUp/gZVMhxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE823CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 18:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177964635368.3356.2109101348127925622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c1886f92773ff4afef3eed16724047bdb943331535cc9852ae955196254fb84
Date: Sun, 24 May 2026 18:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779646353
