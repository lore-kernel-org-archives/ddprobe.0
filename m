Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19ACA31A04D
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777778854; cv=none; b=bc90NEH8QDBK13IBDjR5r5IZzqHV39mN0r+OJigoL7ekLApn+xGLILE717drztcL5B+m+lhgVMnhyLURu3KhPXRkPXnFUdagQWKybfgObMVFgMOCRQjWeKzgqXBw7Qq5QalVbjMCmxFLSLGlTBWJN7gVAye8Ik354rXbmCn2Uns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777778854; c=relaxed/simple;
	bh=+V05f3JijcgoDTMy1+fNditIO61zpeoNgkyYjqpEsc4=;
	h=To:Subject:From:Message-Id:Date; b=ZQUkBfZb/tI3jJuazhdIA2WqinT2E4DyW2Kz5Oxs2dk2+n242tiyhR6xBcBwxyDIqhmCw9QYwRhLZYLYAzFNghru7wriI73IBTDRtFWMQkgM2g3nn9dLmoTL/xUcNW9DF2hU46f8R2nd0c1ZfarQ+CJIHPBVsThLMzkWZ0PLurY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MF/jiM87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MF/jiM87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7BB8C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777778853;
	bh=+V05f3JijcgoDTMy1+fNditIO61zpeoNgkyYjqpEsc4=;
	h=To:Subject:From:Date:From;
	b=MF/jiM87w29gHcjQeZi42tGbmqouVRlmKAKWLy481ABey9MDxsMKVO90YzLZn1Ksy
	 fvc7OSUv3O4LrHBO7gg6vtu4p9BN60aqhd57+hxq5x0ODKyVSCWmCXNWXCPy3mkWlO
	 WrMBPbmJTl+jH41frE9wxEZYMoOZ/ShXAh+eQBZQe+OqcffD16YPydsdA3Ywgf93F3
	 nHFNgwl4DtDsjUuhpWAxZtOdrurGQ3lxRuflZT939DxlwO1iL2Caj+6A04quMwvy2I
	 RPUO9VbtSwhqqi6EQXdaQbwj+ZmAxhpNDuvvR/dWxrZz4G1BnjR0NmHQ4UjU2qU2Uo
	 ZMCfGdj7S82vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A14CD3423
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177777885368.6316.18035168751023588609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d286bc6708edca92c7a1fc7c78fcef0831c759c290d4c9ea54a913aa15402e85
Date: Sun, 03 May 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777778853
