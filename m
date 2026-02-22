Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0681F4503B
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771767294; cv=none; b=i3mBeKU8JznT1wfda4QS9tsF49Q/TVEguXuYfrM1vHvydYHyfpWGvafpg/cDhApk8C2vco+v7e/b5LUWLhDJfNZduRl2DXlgnyQQUlXIRWHJsaLFRrQOQz9YzGx78ctWE32/vxaiWu7Ni6afUg/N6G/+M3bqA6+A2kEauiJ2ffY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771767294; c=relaxed/simple;
	bh=TqoglAu0em6/Nr/wbo+oxyB9E5AG4oR1wBNr/K+011g=;
	h=To:Subject:From:Message-Id:Date; b=YBxUR6Uq8yCmmvcAS1GquQHkdJRcIE6+4Zj5/lhg0RT51RmleZqywn8qfPK834fRULOhYjPWbRSbFBvZTMrPw4XGbfJmhVYLRDrs8eFbO5NuFy2Z7GIzkfd2PMh1mwWdeucQuOfh1rmxM7oshBJgjr7QMc0Lt/nyNS0TVwomKck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BuN1ZAjx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuN1ZAjx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AD8C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771767293;
	bh=TqoglAu0em6/Nr/wbo+oxyB9E5AG4oR1wBNr/K+011g=;
	h=To:Subject:From:Date:From;
	b=BuN1ZAjxSz4AaWUlZ8JqBzwouWtDIXk/q7l/RKS2ZwsYy6uvlKnssx+j34ad1algl
	 H8VBDfGBZVoss+/WhOxLk+qj0W+gBocIOFroXV2+Fn3bRenC6J/ngYHaXx2b6JJMNM
	 PQfqXxe3W0QeJac7cl3kN8tUm+ZM0wzxdLELrYgBu2k/tPN/boh/neZX9hhwQ/iuFk
	 JkwMYh+dZMLnKf1mZGl+LjaPzY+dszEoh1k/Nx/UmI2BAiSsrio4ac7Sf5agR9NEDR
	 lTebuOCRvpBXSjj6knLWrN8G3KSjnpP9EkaRklGbpjd9CgabWICSTl8l/XOOn3qOph
	 CaqbWo2wDYAeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A59C63680
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177176729358.22549.3041127256122846850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c61adb40003922b850f8ee24f01dccd82ace1a2264ac41bdc1edd013c855e940
Date: Sun, 22 Feb 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771767293
