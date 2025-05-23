Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FE6125B2
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748024994; cv=none; b=DEPAps8NBvgXWgxZOtLrExOr0oaaUO1bR70xeGIjjUIumcBWC9JArP21W3t1MU0CbwXMmtph+E/PzLlXhIDKHI1/TbdGukW/JDU7LmdW52SUov9U11mMRYdV8MpuF2oFM6ZgjZcUUkeIR+PV3aPEDURySQ4MEbEpaU4rOgasKFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748024994; c=relaxed/simple;
	bh=Xi4Aeth+I4maY9sHsI3q31XfmD3QFOj1QHHK4tdJT7Y=;
	h=To:Subject:From:Message-Id:Date; b=EzuofHp3nF2YAvGHFfU6UBXw8eyJW6cLaYJjESU3YYM3l7RKZNvLThSyZ9tyWLUUejouh2DJDAVGx0ju/0kb7UBi/3dVehEPYTX47EndJ5VQjMhGOvOAOaDTpca5wzvExnU+2M4GPHw50vm4BdLC1S8hCIUfoCZtHwi/+VgoEe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5eVVmOI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5eVVmOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54ECC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748024993;
	bh=Xi4Aeth+I4maY9sHsI3q31XfmD3QFOj1QHHK4tdJT7Y=;
	h=To:Subject:From:Date:From;
	b=L5eVVmOItRlrnmHlt0nfjqjV/m4bDH0TLtRypWMb9Czd3I0uGLNppDUOEr73wHHlt
	 0pWlBhXd7S6WuzTn+fiUL57JNQh0DM4dDW2KXfO7tI6uvdPiAA+w6R5rdYzqoHuxoa
	 HYqPrFT56okYlAxg8JMjiSBRiZg1s+3e5UB0xAjCtYqD6ROLGagrhjIud7ApHUomL/
	 QENaD5ncP6h7waEB3Y0TCLVGGQkZEx/dUkJ+ITuMkp1bRMC2xbV7iYT5hOv6Bru5Vs
	 cdM99TWYJ2VIkwcwzm5jgOttbd/u4+ThELuRhpejPe5CI43I1fJF1Gmm2esuzXOG1g
	 NxHxfJz+ycPXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E57C54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174802499360.1352.11994763695112384131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69adc50443ef1bd2fabba099979cc9cde03aa4bb46bc346cf8a4782b9c4b0c54
Date: Fri, 23 May 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748024993
