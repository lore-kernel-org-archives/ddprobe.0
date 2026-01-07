Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7FD23D7FF
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767755034; cv=none; b=gknLwb3JcMbipntrKT+bgLSiubiuwPTQ0CfzffBRiYjCyvgAHN5Lxm/6x+LDKzlnHd68ix1ZLOWXlsmLEkOmOhevKu6dmruz7lxsf/7S0HgWnSFvCtQ0NaNUMNPpF/mGdQfx6ePLsjCpWIaIW6v9IGyogjhvFtSVePwmpZlZzno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767755034; c=relaxed/simple;
	bh=fubT/eqQXvA3RGizx7ASCOBRVaF9VIWyIJSfDwQDF6U=;
	h=To:Subject:From:Message-Id:Date; b=F2DUB6D/IAEhbv9RaDs7i/+fjNwFqPu35t3OpdRPtZ4Dy5sXoyGpiMXfHMjC7Ct+Kv4aOlQi9HvXyIwJQvlSh12v2ZeQ24Ko2f366/Ow3lY3kAj+QXAhamEcbiA20+GKs8S9qAstg0anRv8XJX8aFoARbBWvdiRaxgxDFyafIUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaGbbNAH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaGbbNAH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B00EFC116C6
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767755033;
	bh=fubT/eqQXvA3RGizx7ASCOBRVaF9VIWyIJSfDwQDF6U=;
	h=To:Subject:From:Date:From;
	b=kaGbbNAHZGZsM1dtoZErjnKnEHd5wWIr6eeWcj4+/PLRqzsrbOAozCfe//aaACgm6
	 jCaLsCY4FmC8jNfPS/zJj7pw5bTpRf2KmattUy2RYsCeIkwDVDA4j1rm1RZNae2Ljv
	 bS16E7YO2R1octpIW6XW3ZS75FtCpCgcXtolOfqcRGlFKVFYcHwnZkR0dVFI+fGKCe
	 nXp1o3Fu/mGl0ucwcLwFr7xprOWWX75237ZoP7syE0eyE9x413GMPJrpdcHiR6NR/d
	 z8Z6wHppW/1i6/VYMd5wJ31LI/hjKM9WxPCPIwo777ttjb+bTorAEXVDAg6avneYKo
	 SEuPiWPm6uVaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2E5CF6BE4
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176775503363.2449.13961188059742413038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bf75600d19343811144c81d2798ed7bec3cae8f523311ed59b6a79b623e851a
Date: Wed, 07 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767755033
