Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5D1360ED4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 09:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781862994; cv=none; b=iUpPtXEzBG7An5nKQiTFW0ZEL0WRubHtsS3YSuJkwngLA5A+1qMD3/L5r4+IsffZ0n/qTjAV+93EynwnLslgYvU6eJeh7mlyhMK4y+iABhMTuLuwbS5RWCiYgeBrLP7vwsRE5FyNcADK8xxDJ+2JrUqCTH8lNvHcKu+R/u95EkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781862994; c=relaxed/simple;
	bh=nghZcSn5eDqCfItHHEYPqtRctGpKuVkZcNpTJ4OrPHs=;
	h=To:Subject:From:Message-Id:Date; b=bX/Bv7A252C3/Ypt9dheP/piTH2Azfv+ih+LON1JZjkxSbZSPwfAJw9IraimQmuNAijgv8lYC/hpOwNUHJXuTdps1kGi7hlWVVUy8I6PuJcWg3G3hPvRkrwGBTzumbvIvybfIAbzIOZLI+AMiP21qxeOaeRB477haVmHp20sT3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Anrl5Ybv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Anrl5Ybv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5F4C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 09:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781862993;
	bh=nghZcSn5eDqCfItHHEYPqtRctGpKuVkZcNpTJ4OrPHs=;
	h=To:Subject:From:Date:From;
	b=Anrl5Ybv5/j0jrHCOhEYBYrfgvPRe8yJCFQAx91Qbnanw5O6y4odEl66geDja+WB2
	 6FXenO5yhagDB8o9nFn4WvYL8Uv10WgBu8d8k4c7Op+uF2eSzd8rfBLTotAIq/Wa3X
	 eLdd4gRfRt5PMaZRyO/x9Vrq8iegpWomxenHtErnVdRN1nLtoedHVkLgvOTDdbxpoB
	 EOGDpvnG/GY/cKgmEsDDZh2OepMu03UqaAiiwg2L7C2IYAodgazGyQdQLMPtqLYaeR
	 HQtVfJemhqnK3RoACT8A/mLMLxqhpyEiFmbYuFumV8ZlOHvGr3uQ9LesImKRgNcPpN
	 n/qlasRagHN0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE285CD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 09:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178186299370.11144.12781565162446764140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1424aae4aa9f4d750adbcc3d027e7b0ce0beef195926bdacb00553b019060fe9
Date: Fri, 19 Jun 2026 09:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781862993
