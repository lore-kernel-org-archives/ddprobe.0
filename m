Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC4C62417DE
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787211035; cv=none; b=RsUdyPafErtnS8Nb+d6ab92cmVx4Dc9fBWSq5glwH0ENz/cTPgq4y7dsebSYbTzAQLCFBy+XhH3iEv6i9MbvMo3C35LCkMjZEyeXUz7EFyy626zl6hBxwlN04k3m7WGE3359xLwri6FLC0Jv0vbUISaKMPxiUcqpZfYOSBw7rnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787211035; c=relaxed/simple;
	bh=viVnintdicrnHsYawNcxD3iOszCCBH+z1T0W9Joz6dQ=;
	h=To:Subject:From:Message-Id:Date; b=CVe0GlQTx8OhSztU0F3RpDYfBapjEtwrMzon8aXQZZqMfB3Fw5o022YV8duEy16lHPMnravnuRYsH5xwhwJSCOw5cwDyBC4pD6LlA0a8L+SuX5+eQZ0cybwwz+6xenI7bvooCJfuXl2jwlk0DdhAh0kOL89TSilVQ+4v9lSA6J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWIlbqcu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWIlbqcu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED3DC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787211033;
	bh=viVnintdicrnHsYawNcxD3iOszCCBH+z1T0W9Joz6dQ=;
	h=To:Subject:From:Date:From;
	b=PWIlbqcucw7okajZPtDWkjbWFSkbnQTMJGHdI/77PzsxcDWZN7A5CuvgJTlrFjtwn
	 o9LBHjZi0iuEKBeIHyLRsa+ZwhLmGuwiJxvXTLvCznxaqFH1uAxAY8dw/ZaM7d9odV
	 tX3g6xIP4aioE4KFpCCafuJH68zR7cXICamCVA0SdKo/71lNWrQ891elbCATJ3JcvQ
	 /ogc4t8nwZ0ksHSjS+wPZtOmUqFg1MJ1am+7JSTRt9afaRScpSJrmDmHsgu/kPUTBx
	 dTYp3VM2ReD9hhm7hTG1wGqr3mooom8ZYnPELc1BfUlgiPPP6cOyWUJSX514DLwR5D
	 EJXMv1oEtnkDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA345C5DF82
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178721103368.19353.16991915589985682963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da4d4e91ad2897b9784df706e901bfb7eb4fddcea503ce1a4bed55980645e9f6
Date: Thu, 20 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787211033
