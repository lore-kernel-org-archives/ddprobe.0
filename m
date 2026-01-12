Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239C325A33F
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768227834; cv=none; b=uK5kcOhdiQt3LKR9gKp6chSsu10noENJFYTEMb3UDU0BZxbEwBH65JyGmzEkX5mg0Yei119OXWPAVKaHDSdPx8g3jX0pG3jy/KucdXcrNcMpAD1JpDivS8B61V/o8ZhzJolpSC7hlNZ7jpVE2SAxCrWteBIyd19AqW51JkdUscs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768227834; c=relaxed/simple;
	bh=WqkRoVAhWVU32OZnDqK/18ZTesg8LpcW7ru19ks2nbQ=;
	h=To:Subject:From:Message-Id:Date; b=R6UFjy6243/Khs0Cxwg3gsT8yyzIIl/uWu01xqzPj76WMCzxa2qqY6/ipcg7nbx60WsH8g8imkCErFrVcMn9vlLjPogrA2aal3ijVSLERs8eG1d2OJC7JwjdwsbFWxm1M4Jqduzj3dcomXHckqOgN58TWbLDfWc034ObuXWUIEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iOsf+VVo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iOsf+VVo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA89FC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768227833;
	bh=WqkRoVAhWVU32OZnDqK/18ZTesg8LpcW7ru19ks2nbQ=;
	h=To:Subject:From:Date:From;
	b=iOsf+VVohaGDY8DkmB9A9FuzpU0szZVBHvliDVRHtxpBtNWa7PeQHkqtFlFEoZwEb
	 ACN8PiXQ7xFTynRBRnlfTYICnAkIXNAgC87JOjU7Ltw7PgoiQi3HL30E0LMmAUppKY
	 BBIXFpBY2iX2o0oK0wMSbB4sTors+rquDynsutUOAXWvZXJb45vhnYStkRpx7Cy0BV
	 eqlMGx+a35y4UVLGptJeBk0fvFbFfXM09xop/yDV9I+TdT9+45/kpHmtLOPKSuzCtl
	 8cArPyqX4YQ48DACU67eRjkr9uu6h7P4jUFP2q8BrbyHTxyRx3S97gBqrXcpgy9KB7
	 +f7Veaw6bP0Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EBCC9EC94
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176822783359.4406.2239507326730005107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3a9d877518ef86b960c70fd3c5bc6ae22e6f826916a1276729b565db22fc939
Date: Mon, 12 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768227833
