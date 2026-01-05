Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E886C320A37
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767582834; cv=none; b=OrF1USEj56xrU7yJ7WRg4k6JwL51G2PXdtI05s2lcriv4+OwhfMXYQHXCRv18X754IC5jajJFvFELCjfdyi9h3gKsjESj0EPzPDlYdvltDQ1SvkOvKopx55w/unvvmyjMtYukbcP6CaHOKm+bjdNQ3/FfRDKzikg79lya5yli3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767582834; c=relaxed/simple;
	bh=uY+uKPXzghTfLcF9TT5W/TTwKfXofk1QOx5N5N+nrlg=;
	h=To:Subject:From:Message-Id:Date; b=Qicxu9mNsw1UN29+YpMTaAcL284mUkosfZVzcVR1OTEaagEJuTztywPNZBvjIUgdnaDDkra88HgQhPghDUzRoTngHV1TBa/cu+Z/Lfk3e/VK5eI3DK915DSKpxwGxWy2x2a/E6QT/x3lU/fVI+Th0FeOCVFxZUOMF1tj6E7I928=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohSwOPq7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohSwOPq7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C546C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767582833;
	bh=uY+uKPXzghTfLcF9TT5W/TTwKfXofk1QOx5N5N+nrlg=;
	h=To:Subject:From:Date:From;
	b=ohSwOPq7hcO9+abrqewP8rSCQXNIUukfN/pfhZRTMg/rySf+ne4QITW+AQw8qs0nY
	 GAqUSJPxHMI+H7X3Ao3tku9lhpPmmUPp3EUycEuXiSPjI5LH09gOBV/8/KTGIq8CGg
	 rRS370nFgM94CBx04pw8uHqwU0dpvGFvbc5iqw/bb6ZLD845bbfGCmKkfQw4y0nvVo
	 o28lqGVQgLi5NXeXl9jG3FOou1wpnOiOoZgC/2Dguv297QuBkjegx6PjWmZVAFOdF0
	 rc1fBu49ft6NTeQ4mFrS49wIR3EQf7FQ4k7bnkRtNhQnpdPv0VgnlhWdtzyfY56LVS
	 vCz/zaHPr3BzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E044C2A062
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176758283357.21056.13779790170905008262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0590831d191c526bc2d76347788306982e83122ce7b2d10d5456569e3135af7c
Date: Mon, 05 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767582833
