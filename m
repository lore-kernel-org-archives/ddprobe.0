Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ADA544470E
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788198634; cv=none; b=BSkVRIwGrpuf/fhj3+A1JPouF1UZSa3R7VqGMzPY5A6It1Ws1SSBZKHLHReELIWpIE04D7nDaR8Xz6bacIQXQf9JwxM+xT1YdlnFM2H/csLpqE2aRouV/dxm8wlfL/148XyZovjlrIYLY9h0MmcxE4ILR63aX6SXet/SB4GAxBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788198634; c=relaxed/simple;
	bh=SEINwYFr1iwVrhS4Kn7ryG3khSi+vEUa8SZrNYJkDu0=;
	h=To:Subject:From:Message-Id:Date; b=e5ySRexexEjl6tQzLSEM+t+F3gOMThLAb8u8mGrd/0IQwcz6uWqF7S2uwzn/DtL+7NMjulUxQdvWG674qk8/KDr5aptEUTBuBStRp/hmHV2YfeYXNesN74TrYq4AqsHTAOivBnVyeR1IYlkvi45vCqwZ0gnM4UmTvTtBVpi8kV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QV799bej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QV799bej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6CFC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788198633;
	bh=SEINwYFr1iwVrhS4Kn7ryG3khSi+vEUa8SZrNYJkDu0=;
	h=To:Subject:From:Date:From;
	b=QV799bejQWPs9fgEQzwuwbAg7Ho+89dbxSS8FIXnFXPBBPVH3TnBXR3j2MzpuapcQ
	 O7bT9eHRHOhA37q/9iJQ0Ydk4KNYZdtLypK6gJfcVsCLUd8ES1bkn4hRdMqJpVieJC
	 RjT0050sLcHUTXlhj808dE603oWAH7s/CK23TDyXQA+FwBTHy3yjNm48AJ/rnKZ10M
	 ApzXD5F/iIbHQlrZEgH3EEc7/oMoKeIoHAmBGmSbmuAm0FfW+bW0a6VbjvsNMIQR+1
	 KK7X1zmx4Q93BTl/DWm0LDSWGpRD354sP551hqjHeF9ZZPsPFDA9K+/p2ND5foVwyB
	 HAV/wRSCPHnbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BEBC61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178819863368.25719.1683573496813920925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7751a9e48a8169e6b405dee187df3008a2ed3655b202b92364270b90de9f97fd
Date: Mon, 31 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788198633
