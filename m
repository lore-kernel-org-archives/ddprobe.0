Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A9F289345
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754470794; cv=none; b=My0bOFqJ05XkTDtCk6IeqP8m4iwhCB+aeMfGCdhwsXYLkqSsequ6g8zs45c3LEGtzCrOyFkJ3kmGVm0OLhcKK44cZYQ6O7+llJiZNchXwB0y+TzlluEOaIlKhAsOfnEb4eQZXH0PNDb2lKBvnXGmLRSrJOaXv46qsZ4bgz1yJEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754470794; c=relaxed/simple;
	bh=EpOpRiJ6bKtA1IZRAEnl9qgQxrCNmU7XPMiaVIQe3e8=;
	h=To:Subject:From:Message-Id:Date; b=F/EA+Rs8LfGdF5Oez6+U/I+jiNAcKd2tiawrQU3kZsl8HM9JV0vWVEZ15V900ymxoXnLWt9EZoeY0LbewpriIKv8PMCgN7lh8AaTaQV+LzNtugXfmIbfMLvZCByA5cgtQ4CrpXLgiUKDrzBK//E/lu0xLqEePA+cLqogaBaQtsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHznChEy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHznChEy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6B6C4CEF9
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754470793;
	bh=EpOpRiJ6bKtA1IZRAEnl9qgQxrCNmU7XPMiaVIQe3e8=;
	h=To:Subject:From:Date:From;
	b=nHznChEyiLKLQ059/OaJwJqLU/KWxO8imi7Woj/DFhpBKufhV3K1zQ5MNrkiou/5v
	 v2Ko74LDbwS2DO7ROcwuhV9MVkOrFMsfC3bL4Iqb0HeuRNmU9508ErnxYu/OAOqVBS
	 U8zQxiyyfE+S65sfJ81qBC+4YZQStA05gK/qeVtXmYxRxtKt8b701BsEnO5j2gDKLZ
	 veG+cACBrqcCWbnhJOrVysQD5ScYBuxI41RcAeMJ0DVCQs8QIbRTzpwqIbF7Dxp1HB
	 DmPU57WTM4HxBuAzuBVaGLYNumgHJYtf/595Bo4GXgtBCimuICGh2y8G32vWSe38H9
	 TsilqgFTvY6Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F910C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175447079357.16904.7069351354690743968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff878fb7b9270e4d752b21291a4c3258ac341d35a9d3142cb34bdbda5e098fa
Date: Wed, 06 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754470793
