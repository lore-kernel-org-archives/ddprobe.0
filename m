Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E0154654
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754513394; cv=none; b=l5XfiUtUL4MBRcep99Qo20IfWPhvSifknOsZ922vMbeRVqsXQ7T5asZs7vcF3ChztWdlZ1Qw5TvD0Dyn5VkBMX2eTvs5ZpI7v+Ifz4zCZI3DSH/t2Cx7P0mMxLvWgiBG1L4zK/mSj6RTiwbN2qV837PS/a1PTgmk/TGUIv98S0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754513394; c=relaxed/simple;
	bh=CQ+v3Mx1YxKhizj59sNnQaMzriP7NemsuclkPgAwMnc=;
	h=To:Subject:From:Message-Id:Date; b=PsN5XJBGkokqMWU8rGqDRymDtN9AcY0iuM0iDW5yX1JVnAu56OqTMygCVMjOR9mir9LXJoACO7YTJ/dBzaBYW1bFxNYNwsf2yt3EOmJ2Ha14JIg17nk0Bl9jQYpysuufvKq7TUR3pqDfp+fSGp7fO6SqDt0u99F05Wby5cSEsFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWfSK1zy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWfSK1zy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A471FC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754513393;
	bh=CQ+v3Mx1YxKhizj59sNnQaMzriP7NemsuclkPgAwMnc=;
	h=To:Subject:From:Date:From;
	b=KWfSK1zygW9OYXcFR6wC8sfkJjRVEhS1j8rnmntjZaEWBy5liCUIFpFo1q/ye9SaQ
	 LJ+CyVouGH3j2Q0e2HYniqAE8KtO/TNA98Do7EsbZHQjLhZ5psAd0qW4GMg+Qxmn9f
	 Gpqq6V9hHkAenRfIaKwFB9cfXFlnjYxk4o7+xK5lLmDn5jrq/wIUjsIE9PgDC89vEb
	 SviRaRA1//+pEHY+yVsDOoLc3E3gyw4ybxUjx9kvZLG68+l/MYynqifQyjgOC+qRzw
	 5MGgBK3biiJ2gA2wECMeyvqN9jOzez4pc7KQdS4RUTdL1r1KldBm8HKnxjsTBL0Rh0
	 YogKtvs7VIEZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9415EC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175451339358.12396.14300100838829946853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffc551df8df676131bcb9f3699e98dd954380d535f5ac1c0c5ab6c162b990d52
Date: Wed, 06 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754513393
