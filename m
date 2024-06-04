Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492C8145B1C
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 12:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717504523; cv=none; b=SCDuI5Fb9+Hta2gJVV60LO9MnSJsSsgBFJOWC0rvhiZc1c6E1ekKdRYb+KgD212uyfjS01YPLxe1FwCTsZZhwyli+oz8Pjl4fengD6c4TY/2GzRA1S0K76W9zahn9rBkp7KTICfH6k0/Q5hlgr0tV65jcfEbOSq9rjle42drn70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717504523; c=relaxed/simple;
	bh=fIYp9XMN+KMkDozuNH912xgxA/9ZaL9hxB8rE59sNOc=;
	h=To:Subject:From:Message-Id:Date; b=FtflgPCMBpuUhkJ+jC8MqUVK8DmzxPo80WE2qz/J4hmb33yUVEKCW8TzhiAOltihtCMrglp//uFLF8Is/yWjbB2cilREjZ82MREp4zwiGiv0kpc1Ff+9W31NEiVJ1Mc7hosTTx4D5Y801MNPCyKH8js2hNF5am4RSLGnEFPbuE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mF/CX8Fu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mF/CX8Fu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB66FC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 12:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717504522;
	bh=fIYp9XMN+KMkDozuNH912xgxA/9ZaL9hxB8rE59sNOc=;
	h=To:Subject:From:Date:From;
	b=mF/CX8FudCiqrQ42uAFDKpDs6fR7rlMnIVqg9bJ9TF55seg++ezP7EYID9YYH4dpk
	 oMCyCkldlLxXVP43gKt55h/MSgftd7/TrjzdNQTRs3r47Pw1gDTOPsSbAwH93tqsrr
	 r1JvwPwGLLoIZQL2YuDo40AU0rG/ILIhW4UE3RIsrlolNQ2Xgi2G3P2+0piwvM7y3c
	 t/q1iynq+7/moFmgeJL8b6at0YQRb7Kl/YJJUpd6T5FuEdIo10ggYkX5ZSyTcwJGee
	 6aCEnlGsJNjjAM7YgG8zDdJ/xma3ZlJrnBqfhvcv8h9dqHIzwuIfenJMp7T5DUiain
	 5S7SKR2buKwjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CACC0C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 12:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171750452280.27280.11404656733321532633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df0e681365c2fc771b41cf79daf3cfe5162de86a6c112f2b21a37ec6a0f356cd
Date: Tue, 04 Jun 2024 12:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717504522
