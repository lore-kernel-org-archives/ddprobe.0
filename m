Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374BF3B71BE
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 09:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784281114; cv=none; b=F3inYzqtxEKZAgpuNOyoA+LsFlc8JD728MWXQM2qfm6rX1yDi3RnMLSE80OOGs1xlzZ4XJxR7Ivap/7jsqLC2a537gOLT5ozzZkaD+ZFx/mAcsh4wFnKapMDSCFbe1hnU8isXNjwdHIz39uvodaFSvu68DFL34R5joJE2+dw7zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784281114; c=relaxed/simple;
	bh=AAEQwHERo0ISPtW/nld8ACmtrJD3c3Bshy4yEOQJ24s=;
	h=To:Subject:From:Message-Id:Date; b=fbil1fgGYI9wNx/USyoaHSB2k7enQxHpNPyZd6fmADzJL/79W3VOgLuRBnB3vQ5guJCR5jn43mlFeFrAjkQgOREdwIHagoWKl9WgK25bGT0dxAAVu78M0oJR20MOtsVyz29siAEO1G8Re9ySXU1E9r6ob5NjV5POgYJaWlr+/mI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9aJZYTt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9aJZYTt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5FCC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 09:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784281113;
	bh=AAEQwHERo0ISPtW/nld8ACmtrJD3c3Bshy4yEOQJ24s=;
	h=To:Subject:From:Date:From;
	b=r9aJZYTtYssGXSYejyFXe+y5i5rEH8N9MmOwj3NA4qK5dv/luJDZG/VWbQyTfcibx
	 9L3XbGlc6IeRxx73tz/PseetbX9KQPj98sGbvD8xXPeHPLuACbFf7BYL8G45KK6lnB
	 BUXMV4XdinvklALB0QVm+Xg79f31lAhzNGgUw1rPqhdMvvFYvzTBQqNr1lcdBKwLjs
	 PJGy0oobZmZqQt0fFLLnmIrrLUOzR3tyB919u/5uOoeiclikHTvHpg9kvj23ChST4P
	 hpW/2MPWoSj6iXWSCuYZm+LIlnY+S5UX3WMPqAWiAqw5iXKmFOT3ZsUx8xwuLxY7VX
	 5yFqt8+OVU3VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84E4C44507
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 09:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178428111368.27560.5597997445699519707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 027b5854049696f32bb200743c1a57bb87519eb9981ab7b1f78136b509b87342
Date: Fri, 17 Jul 2026 09:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784281113
