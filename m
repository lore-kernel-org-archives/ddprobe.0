Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F691149C53
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749392394; cv=none; b=Cpna5LZD8bEaU4uYebDnkOhnn5koqICt6mAo7y1iMw2qT6erCMGXgkevL36u2q32rW6zW0hM2VAII4F8f5VcSnAEIjSTFemsktgYiur1me/By1tERZQfrM0jx4Qb3QzWObexWoHtggsxCKosy+I4Wd31e+us8vaaEuVqZ/irDpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749392394; c=relaxed/simple;
	bh=gZ0eLJhCSmpO8tgOKhCZPvPTK5S1NLg15BvinmkBz4c=;
	h=To:Subject:From:Message-Id:Date; b=bPEL40YCDwFgwR2lnY7Q6p3jsnMBzudacN6U5ZdrUNW22QNNnJN6+9LS70qJraasuCXCP6SOwCuERZ3+O0rKp0WIZsnC4/CIedIycGNBLKItscXakTYMrGgT+doluuRd6JDtwTy9IonePE0Jp/sye9fW0Vze43jSxzhBzOCLssc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQKtCqdM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQKtCqdM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E69C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749392393;
	bh=gZ0eLJhCSmpO8tgOKhCZPvPTK5S1NLg15BvinmkBz4c=;
	h=To:Subject:From:Date:From;
	b=FQKtCqdM+HOlR6NbYrEBq9J682uQ7p1X1ryzJx0mvWLv2sQFc5qZWZVCV/L+uwP3d
	 jVP+YeALxxJCMdowBKOqimbIroJfJlojMHV8sHWKFPO36V3UF78u7Gzi01vFnQo6zK
	 r5woiDb3+sf+bvchx+4dNrvmjBiG0RA/M/2bChm+C850V+nURRNq71NyvPPi9sS1kF
	 +7FwmWcj1fH/huKDewjVffyONYqYoGCK+lDhZfyMPLjrtSorSLHWJNiupmTktDDiPs
	 fDE/5z84UOn7BifXBF9LAeJ443fylwNuG01FTDSc+PVcz/OrKB06t2sAoZIstaCwPP
	 +k6sAE2B5M2cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9472EC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174939239357.12716.8869343723135393508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72ceb95f202ac0ef10f0b0cc8bcdc3615b8ed15544b6e5a6a9a0a9fb01068a23
Date: Sun, 08 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749392393
