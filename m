Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359691F94F
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 01:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770773034; cv=none; b=VZl/eaXC1/bXVYDBdezGkEbmkVxqXEdz1qsfvfUsw/bNxaqCWnMgLa3ezvC+1DD0/k3QIxdHD2jticjcEK0rNspZ7hepKNLqGiK1vmZD1cnoy46kpeujMYOB/9Jqiw2PusxclWq+btqRq7cpjz7BmEB6vFFhMuj5ze9KR96Qhp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770773034; c=relaxed/simple;
	bh=ToeSYBc7kwXtKk9mvTwAfM6CqL4BHmcO2aDDnIweqQc=;
	h=To:Subject:From:Message-Id:Date; b=NdmLIxoGv1slQKARALiDMWHngbdMRV116rnIMfdVPa5K3iJT/Lcj567ed4bBxhY40VMgNwBG3j7TkcljixUDKCu3fjzCyiY0kMrthbTeCeEfUpKRIGTHXAPrSMlrq73/Xaf+5as1p1GuaSllswsrL/8MFxaiVpDB5C6V1YK4biA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KyTgHBrO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KyTgHBrO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33C1C116C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770773033;
	bh=ToeSYBc7kwXtKk9mvTwAfM6CqL4BHmcO2aDDnIweqQc=;
	h=To:Subject:From:Date:From;
	b=KyTgHBrOrSE8VAwIwVGA9NuH5ZwKk9Dqpp4BqEFwWMiWn2Ff5O08x6r8YlwnVAA2k
	 GEwAI9/ije3/moHOxLspWu5FNzdCmvxCmKLoPy2IftC+9VzLDJNvhbt12E34bhrcw+
	 K1SDb7PM6L/kBwGwrXIHYOWywS4RSlgFq8Zw1c0erXcUrl8+ztxzkUbPagELDGiKV0
	 7cUiiwS3M1gHPxi8IsxfzW4bv0WsLC9KHidfEwWPxCXM/NoczqvcBgUfFVQH62DUil
	 QEmmysYuOlVzWMU5unBC0dsB/pMItsd6UbyM6NPKXw021r2NAGQF/N0HSTZ7xQuZ49
	 GnPd/koRQm1+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C21EB5946
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177077303367.2252.2511037777445980888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fe19f9865429ccae69b97d45a75460a3268545ca820930e32e9b3d3b8511756
Date: Wed, 11 Feb 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770773033
