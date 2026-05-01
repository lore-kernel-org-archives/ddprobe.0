Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB2B2D6409
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 05:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777615054; cv=none; b=nsax1wyDS/KARe9D+humXTA4H2FOyJWIx0ZBp+FQoBFOvid8IDZvVC3AYrHQDHbblf4h4333+rqB9OiVoq1vz4VL2ODDkDplb/vQpJkB0IcUewUW6pZ3S59iQ83K19dl9olkolHkVCLg1LbA4DCrSpE3JBwTcFaIfqo+uPHaBaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777615054; c=relaxed/simple;
	bh=HnMO68gWOSlELDhbM2XlbTyRim+WCF+8z8LnjLeqW04=;
	h=To:Subject:From:Message-Id:Date; b=DlCWNXWVfb83Fh6ZL4x1PmAvDotm+bDuTXKbFdSE06qMVnPkOzM4nXbhj22lzBOcjdOrZeVPyik/qWt4WUU0wiYpLLH4fkaQO8KYEj8WJwF5sw0xZCHVLPyxEP4uUkv86C3KYvUTO42UIBzQuuOilL4qeOElvDfsWinDPPUWXsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNiJHxys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNiJHxys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9DFC2BCB7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777615053;
	bh=HnMO68gWOSlELDhbM2XlbTyRim+WCF+8z8LnjLeqW04=;
	h=To:Subject:From:Date:From;
	b=kNiJHxyscM4w7xMfukgJ9y6nlXugCw2IrnAdlBX/Qy7Ufckq2TDyHhcqWXoH1Km4K
	 wtyVDvptktHExu2ddGG0Ugqcgi15E6FKZup4x/JsR0YO7x7/J8Uybu25KH2eVVjgIE
	 YyKQHRlu7mZo6WRvCJZzNSmC4DxuEMsDx8PviatJycMlFAOmK/n74PaaITydrBhaYO
	 OS4/9ihgzx1irvVaN2WuwxOvRVkU/VqvS7zwvIxDxAA5V843zaEFGbIFfe1oOMUsby
	 Mh+MktxI3h5BXw8IUJOaKVPj5ZmUER1xh7Ddl8LRvHAn4DgtTJb9mcoG7j3YMYWxKr
	 BjBC3gvxFbVSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3FAFF885A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177761505369.20809.6683072438946643735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7acfbc0acbd3366d1715b85c397316a3e7a384a24f9f267a34361491b3115a8c
Date: Fri, 01 May 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777615053
