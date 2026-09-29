Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64BAF329E5D
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790724034; cv=none; b=XrOZ9JEQTzo+ScIbBh+7QS54zvxgGLrbU76MPvTc5ibYBFcrGWDUOEW6xEOBF7UBnt4CpskT5eX2kE6HQtWA98bBUJ/xb4NlbCeDHJc2lKtPoIS1/bbPtJf9zpw9pI7FsZGuTmvwoDfqySVj9Y98Qkl+/shoGFkfBcZ7jg9UX3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790724034; c=relaxed/simple;
	bh=e9p428gxKtPgIuSyUj2kXwSn+FVh8FaRx/qEtSLfhAk=;
	h=To:Subject:From:Message-Id:Date; b=WohVQhiDKQw4FZkDsHpEqgW8v+Q2Vl5EuTV9fm1YjKmpGHCuSoVo3bxaXzy23D/uiuQWMEDZ9nXqlGKONeNNuANy7bmL6HCV5VRakH9pwG/rnjTq317FW8btzbAVEvSkXBm0QG33fMw7X7cUusbjOskcmHcECnwf5FPnCssqJq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQeC0Kd+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQeC0Kd+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E2AC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790724033;
	bh=e9p428gxKtPgIuSyUj2kXwSn+FVh8FaRx/qEtSLfhAk=;
	h=To:Subject:From:Date:From;
	b=lQeC0Kd+6fsafkb1qntKV/DoPaJFsdeWgjp0GrVrPej/zpN67LmBfvaVD1HmSIwM8
	 iZHVggkqwrEt8/sRWOH5bpVjpDSOKKUq8hH/RiDw4AwTxkFSNTA9IgHrkzZCgUvW9A
	 3Q3asfMmTizpwLkMXM/e/n0NV2+j+JrNlv269iZ2ld7F39B2A9eJ8zi3A5/wlGlm6B
	 slzZOt0DCWcNDLeYvzWO7HESS+fG4Si7Fx3Qv+UufRh6tjwC7uMlCZCmpSaBlY3b2V
	 zNBG00Qsl3boSAGRehnJBtAdibTHnvwSRlSaJcMH0PHrV49u4bZmrtOJ1Lte5OsT4u
	 mfNVMEqvmBCKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA775CA5FAD
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179072403368.2805.18338867688233581526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec88f4a0fc90fd23994b0a06b69a358b964c1fdca701a79822a7c8fdbb05436
Date: Tue, 29 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790724033
