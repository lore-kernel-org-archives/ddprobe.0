Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AA513DDDB
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721769354; cv=none; b=o9hOCizoRBcwfUk3SlVFmW7jR74Pmb6tGpblOeV0AE6TVX0+vxa4siCNEnTByFg6lqnyGfSuD9pWDrUM45HKIAvopjmuCAARz4U5RSX4EWzMuT40SCAVhVlfBLA+pte+MDgaj4sdcPjWVMkwsV4fg9rmKVeLFyBUPwTjK9CNOCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721769354; c=relaxed/simple;
	bh=O5Jjug9Itb4fuUDDwYW2zfpOhRrQCrbsDzuOMWDmhyw=;
	h=To:Subject:From:Message-Id:Date; b=OlmHDVuVrLF46HbVF/hkjEkOEtpJ9EfsiKAHYCRMzCJ60wxW3kbkOAinZU5onv/ZZO1u9oQJP3DehcsEnmGMHM/Im94LzQRYUL96MwFjKVxvbTg6dj+whN2u2/paIza+YZsmlLkpmyDZG5aMGX3+lBWXeNQNigsWavhPxJqQOd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=McxNzCQK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="McxNzCQK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A49C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721769353;
	bh=O5Jjug9Itb4fuUDDwYW2zfpOhRrQCrbsDzuOMWDmhyw=;
	h=To:Subject:From:Date:From;
	b=McxNzCQKJECpe2xBRVYpcmCIfwQGU++G5wFOtYT/MGo7W9178zqT6B6f03qWLeqGf
	 iR9XDGOioD7Jwuo22vNjyuKZIG5dTxmvwcB3yWicWOvsrty3x5dCNFPnv7yLk5tPoe
	 xjwWx/LC/n2aLOb2pdrTcW6JfL+53O81X20a7tus8Uch05cxrXZNn3E39h/PONajbW
	 NV/xPir1EiFM4VsakOC04a8QgiuOAzUiHfjHYoSXuEVfx1FceLoQUdCTUNweo8mSoX
	 TW0M6/ybsJVRSTnGaPm5BTa1AzMglTV5SgwF85Wz/aAoT5c6Z+r6nMpseUFX8vfbcv
	 QHss5DkHvmmWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A22B1C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172176935365.16905.13201346744068655779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec8eb771d763ef659b997600e07e0c91553a500bf5816a3b37f91a4de479aa6b
Date: Tue, 23 Jul 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721769353
