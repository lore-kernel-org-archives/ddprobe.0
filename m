Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B16703B961B
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785266434; cv=none; b=QKLI2dfl/Bjw6O3qdL+V163dvxc3jJWAo4OciiWxeJ2oJBPGbHSHnuqa+P9u+YoVHL3ycXE0CvXHUk+G8Wu3/MCcb2t4AXRgNKNdFzhGeJ8rVYp2R1BhKwTZpKKKtgHtBMwR6rTVLZuY8w7ENkrrhxwQi8p0K7Ruu0Keg5bM/O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785266434; c=relaxed/simple;
	bh=ZK34pRHJNtYilsZBIcgHQ2SkwhnsozH7I2dQjywYUZ4=;
	h=To:Subject:From:Message-Id:Date; b=lHYbEmSt+FaGUo0jQnOo7Sz1/8ao1QgW4n/r3D6Trxb4xfyd8u1YDsl2cma0Ulcbho3fWBe6NZMHF4pNcpaUoB/NocTe5752A/GjHk/55l0Ofeu4SeQkpM2pFmpMvTUukgOvEpKiSTg2mtKsTlpSB3nF1gYW9zYaJVoRxP7nEf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUuOlWIL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUuOlWIL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB43BC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785266433;
	bh=ZK34pRHJNtYilsZBIcgHQ2SkwhnsozH7I2dQjywYUZ4=;
	h=To:Subject:From:Date:From;
	b=BUuOlWILNhxVzbBIh0oo371NDF/rMegWi/p+6nsvFl6p3kL1sjkMfg56JkW2CqlBv
	 RuHbx8sc7jgtVm5gfIJGGXoWHgm3uYdUUn0ziANXnUK9m/cTI23z5GhNSb0u62nUxe
	 zt55MLjPO269bBa1MAgQWgJHaaX3equ5sNZbkFot4dV9FvfgGwKMgFS1OOr0WZCPN+
	 vlbf2u4pw7yWT/uDxPyqTmT1EcCP7Lr7ZCe02+1TpZJtsnLhWbFLoX7PUpPtjSiTn2
	 6Q9VaO5bBfe4M4soRwGDBcHTkbB3D9tK476+n4zr6J9LxUop+kWrL2C4DVIRTra67X
	 NG6zHEGgHpxMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C4DC54F54
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178526643373.2969.16530848110281078199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf1b8f7be4d3554fa57f0fcbe70fd08d7ec62625b9ede2dda4df67f5c84de0fc
Date: Tue, 28 Jul 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785266433
