Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDE432E75A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777396054; cv=none; b=tSAQxM6zHq0rB/ByoGUSD+4tFdJeM5TcXTKo2jbyW8Dy84l+9BDRneQE74/zdtfcwE1lMz+5b10wgDsmaVHUtzhIxeh6Osqt/jqmiKWYY4uQECf42ZX9+vxHM4muSNsdZvN+lhk0FKuQh6x8iIbjXOm18folAEM/mM5+YHqosuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777396054; c=relaxed/simple;
	bh=LzZK5dJiGe3YeAx4RkQ3ZJm9U7yHdoUTeSc1x1iHWvc=;
	h=To:Subject:From:Message-Id:Date; b=g5bVLso+jxH+x4nAtgy86fWjEwsjcCx3R4XZLSEt9z/cpi0e/5OMHr3Obp8OupFw/gJTmV/a/706biR6weF6Oqs9hXidJP/4GtRZyI8jqDicN8US/XfpFA/H5y7NmcxtsBCGEnd8dfjEr+RHoZoC26Dody+W2/RWnNxIkQzdXPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpoLHKRO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpoLHKRO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE625C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777396053;
	bh=LzZK5dJiGe3YeAx4RkQ3ZJm9U7yHdoUTeSc1x1iHWvc=;
	h=To:Subject:From:Date:From;
	b=ZpoLHKROAe7Rd7HKFxylq7R4Ea2b6yFTaYQ3jaKoHfGH/dxF8dbMQJ6Y0VPKvgrZ0
	 vbWuyKs57sO1kVshGUFJyUVscA3OBjYwEUlSsn3oGZsbjidDYRjmBRQDd5gkVAIg3D
	 p0H7W3iI9bUHYOVg65zVqTJj5ycnRLgklCJpgCE9Q3rLQEIke4CJGb6KSHPQDZPqbh
	 8LwuwlonkGh1/f2rvpmB2RPrUaXCCANrmQmLGKx6D1a0G0ihvZxP/WbBIggZT/jaN3
	 7nVdwuXcd7/042PCgyW4y6LpOsRglSLl4DKq4M0odZAG4yFmuHz9mM6TaGQnEnSIb6
	 6qSwBzZ5jRkiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFA9FF886F
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177739605370.24226.3708093068233170338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 800eefb9a75b8278260b6ae1c98609527a33be7b800b78abf28731c9276b99a0
Date: Tue, 28 Apr 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777396053
