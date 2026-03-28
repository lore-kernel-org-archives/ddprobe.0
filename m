Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1153F823DD
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774690494; cv=none; b=GD70x30PfmTkflIWqO/HKHMyb5L1uJvrYT2ukEN6TZTGoLlSYrNwhUFs4hqQcEmRJWhqz2USAgxAqKt07lG8P/1gP3DXVusM7YYUmdI1FQ0rKBoQapg7QnRa37Y6m/FiQf4gV8/hKzLO/HZ6ZZKPFOBlG+djai8GChr04P11h5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774690494; c=relaxed/simple;
	bh=TEqs1C2uSbYzWnQnjMxr0wjD3Hm/WmnEq/r9V2OGb+0=;
	h=To:Subject:From:Message-Id:Date; b=KU+d2gAjesLe+M6LCqJGPaL8UbZKR/GnhMWmKvm1sd8abNytNeWYzch/tSoKrzffxykqDRR5GMZp4Bomtul31XgEIWbfdl17et19Dp7aIbNfHIJluL2LmCMj0EOohE+grXcd7rV1S98Lw08192pzMKprZ8+hI3+HLKVoyARX+a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHERWtiP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHERWtiP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5637C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774690493;
	bh=TEqs1C2uSbYzWnQnjMxr0wjD3Hm/WmnEq/r9V2OGb+0=;
	h=To:Subject:From:Date:From;
	b=tHERWtiPX9ipZ8RYI9EpCdwxjyGQgYdqRC+tc7E16ULwQL1/uoUPbkLGXGLhrzsXE
	 zlBVFjs95SRvVHsNwimX0TOLe7EM/celEuDqHx12aGDHkRDaUfKwsLpNeIRadZKbPC
	 eoyeLcoOB5IlnaLr7NwtxPBRCaKQMV6y0fxpd6AHy4nLUsvOTvELNOYlDzUPc0hvcy
	 GYGOpQAsmcGbHt1vEtRLgEJG6F75GZYwdIXDMC2BJQlV5RxnjnwQKXBQgXSGOLczlK
	 LKiwBtS+xNDmluxECg/PhbBFJiKpRUp39DXNrAoE2gcF9wtKON1b8RR9dA5yuElV6e
	 n3uOUEpSA1ClQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AAB10ED67F
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177469049358.24534.12250874926533103625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 347f1b3b28d102c3c549c12f58c4d9c70860563403d2d76cee7464076e367b14
Date: Sat, 28 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774690493
