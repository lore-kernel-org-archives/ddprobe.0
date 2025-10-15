Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED9126B2C8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760564994; cv=none; b=l3ZziZ1m43uhoVm8j0vuTnbyd36R5wUBgxm5VgOaRzoMY+Gi1+t2d4EXnK4yg6/3ZQ2T8wzf04PPXu4ZdWARb9G8/7xaTJfycOXVJ6xgXQAihAl/NOC7MVJxOHV0UOPPBRdBg5HM9BFa1+CQTLeKQ+Bf360Pr2G2X4fhGgVPKsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760564994; c=relaxed/simple;
	bh=MEGQbLVUTdg54Ojha0BGjRcvwtQgcAttVo2bq1dkhxY=;
	h=To:Subject:From:Message-Id:Date; b=tvbtwOaV5bbtjt+conYpwAx2atwwhofU+1HyoQ66/C6S2Yvstc5vWz0KYQ8oIt4Rm/zIUW45WF0XOOU4CF5/jFLwuJ999M+sAoZp+H16vO2fCe6cOSZ18Sm4pQ7GcedvxY9IcsqgMFYu9eZ2UnFkjiJQv0gyeenzMs7pMaO4wTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e52dPw2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e52dPw2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19B9C4CEFE
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760564993;
	bh=MEGQbLVUTdg54Ojha0BGjRcvwtQgcAttVo2bq1dkhxY=;
	h=To:Subject:From:Date:From;
	b=e52dPw2BuAYhe/uiJYS+ae227q79LSaZ3n2dxk+NEtwrqXI8Zo1UjMtospSATeg1I
	 dZc/ZC0+HdFvqZZm2o1+ojvdKFaGzn4Os81NUUD1NNHz6tencsA7f9jzaRzHEkfINw
	 uaOS2HMJ3cosXjVbrzUF64WqNlz3rl8jtwxYE4GdIiL9ES/4rCsfnguZIMYhltmj6s
	 kGv3wkrlo69zMqW8OCj98fQGHJBw9jNaVg8YRz6Et8P84vhejsA+avepfnMONDnsDd
	 54PY37p68wcs+842CVZCYhDjMVALg4xyuslta80R5Er30nsb3SUV2uIqZnTsIOU1eZ
	 gmaC8XeOPHSpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC86CCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176056499357.27189.18015941445701359612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44af4b5aaa52fc59d361a22f24fe9df25e32ec6963f97f912615091839b2aa95
Date: Wed, 15 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760564993
