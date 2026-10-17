Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 678E03B19D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792206634; cv=none; b=k69jFZ1w/TpDjAWrtRUsWn/0PwjKIdmL4d7u23LMzy1J1fjmzfCyz80MmBBor7UhUQ8CzVcBqG0enicNf9d7E9PCAJwX8bIvsYl7w+ddxi1Jj0u/10K0g7lhzIGEnNTuEtj3+Gds6hpZYtfK9D4DY4UamDejTi4kAe0lZiH2D8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792206634; c=relaxed/simple;
	bh=WrzmaRHmtiI4OCpQUs5gQ4Evn3CBCiT4PyGpR5Jt440=;
	h=To:Subject:From:Message-Id:Date; b=FEPHKjEpK4FnYAf7jJJe2K32TvfYQPbAGfE90UWk+zEF/ZBolB96gHcTMvz4rwys4hvGitcm7fB6ROfdO1hwC+Q/9J97a+ys24xE7+SoUEV6tI21Ft5Rdd8zeXW/8FvzjN7cvvngSzCdMXCj2W/CUWpvMiDrTz2Hrv8ZLgoe12U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRaZKWJp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRaZKWJp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD09EC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792206633;
	bh=WrzmaRHmtiI4OCpQUs5gQ4Evn3CBCiT4PyGpR5Jt440=;
	h=To:Subject:From:Date:From;
	b=SRaZKWJpaz3g0y9ZCKodUJPKWshbZ/6cQGImsS11VVOXuJ3b24u9B9cySHDuqhAaX
	 2IMMdVHR2VmkaqDi714Kp9AoTVIbzkXb/DeHCwP1WTZXXynQERwvSM7N445RusCueH
	 7QEEzOEG/vlNe2Yc83KuyDR9+7M0Fbery/h+62nFfwaRShIlKZLu+uqQ5nYagHKcZr
	 npqFtDKV2lTLVX3UWonBGa9cTu+6kIdfVeQiFQ79gmZJJFIW+IQ/xCvq6BaQ4Sd8eV
	 ZhmAmOovrKuf+sMJ02JM0vsg+GlX1ggjrvF0hzQ/a/r7ylNTUf0/KpFmhTz4A4ZwRT
	 nwUJrXU5cqJHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA14BCCA463
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179220663368.26505.14344419979943511081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6469b1262e1604ae42ef824ac64afb68342bf5f51eba0344521d86c32e212222
Date: Sat, 17 Oct 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792206633
