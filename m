Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC2E3396B7D
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773737094; cv=none; b=r3VrlYv/w7Fe1CTvSbs9xcCCewXHRgbEUCh+fed64F2OHjDBhFYKlaf76kSY+wV0F0n5bJNUq3ZKWbvD/1dXG1Flj6ETXA9r/2FPDcHCZsQuTPz1rl8glmF8HVpwrRgKcIiheWjgk31oo2Rh16WwWIEinlYNGMqA1muaINmlVRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773737094; c=relaxed/simple;
	bh=Q6BTVrtZ4Q7UymAG/L7UwCTKMt9Vo1otTJAVhR1PhJU=;
	h=To:Subject:From:Message-Id:Date; b=rZMDwf/9BzgkynPO8JFkqpWGO78Xmurpp1tfMy8q3PuufsE/UZG+J00Qa3XIcFoe82dEb8RKDFkofINQtC7imPK1Oa8WmBxhfTWrneD3Rj5LwPkXdkQXoyvrAyjjqBhPv3R6/6Jm1oftOF2Oy1AnA7ipFlghoXQRjuPUJm3w4gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=niZeYlKY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="niZeYlKY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68EEC19425
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773737093;
	bh=Q6BTVrtZ4Q7UymAG/L7UwCTKMt9Vo1otTJAVhR1PhJU=;
	h=To:Subject:From:Date:From;
	b=niZeYlKY2HrUnrdJk/i9wnk+l27Gx14Lv1B8aF95+mq1XJeL1QRTcmdxjRHGo9SS9
	 AlMk5dna8FSXYFgnVRXSSp27Qt4KMEEPGSsrrDOsvNqm2NxzwPRqVIqVoDWJG1jw7T
	 tZ4BtVgGecLnO7ps99vs7KcNO2bSY1Ui15YU9tUhTzM5IIfsMYDe4xFKdxHO6/CL3D
	 mScRbHSNY54obIJAB5jmt8B2t8Krs/Ljt42ReyjbAzRof9uhvj/VMTJ3cfMIledNfo
	 KjI+K6vrHPd8UEZcxr4x/vlJ4smUyDWHG/cTB7s7Yr8Gb25XOXm6g88g70NOze/Qb4
	 gso+xnhmePLWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EF4F33819
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177373709359.29268.10974813909906224190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4c208d686ececb2c42ca216ef013113492ea5d0597ef42917050d7748f198e7
Date: Tue, 17 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773737093
