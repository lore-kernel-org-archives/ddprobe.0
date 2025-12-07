Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5A11F4C96
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 00:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765068174; cv=none; b=enT6G3Y7KRFDhRqXsh4PhpGBvt/Gl9EIm850vGMbkRxHEptMxcF9EtEpMksgokMg6l8rm5cqrobadpwkTXDk9ruoTWzWixji0TyG1/RaRkRSMCzAxqqVMFY32vw8mKhbCqqfukpEqm4K9k+BKd8Vm8+JvBVsuZQ4qPONO6T4gMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765068174; c=relaxed/simple;
	bh=qcgrlPeWVwV/Bwhu7zxeiSPkHZjR/2IcCzlikn9Uc6M=;
	h=To:Subject:From:Message-Id:Date; b=VhnoIYgd+76rhMr+8+NP3sg+GtBPbsAhJreM5ntm+sVV9mNdeZsbgcjc1kGWOsHhJ91Ab2KsUIpB4tjnFgF/zHj/1piVzvWgplt+pWRbwkVrG+rtgn7hkyUsaMRINeuqrvuux1ZZ9bY37e6Qos8zgOa0m4AjeXJ+1XwVpBPmeHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3n1nP94; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3n1nP94"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5C3C4CEF5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 00:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765068173;
	bh=qcgrlPeWVwV/Bwhu7zxeiSPkHZjR/2IcCzlikn9Uc6M=;
	h=To:Subject:From:Date:From;
	b=c3n1nP94iKuf4OGscgVnwxmuI+xYnQfcyhm0FqjoIqIZgpobSl4pieMMCQLAintCl
	 EZACcc+TIk+nHQGDKSAphpyGvoCmJWk+Rrd7YxHHSIfvHYjyZuUuyuFoxY4Nrxmtit
	 /inUykmsTY3SqI9bcO7wOj5Z9Zq1dfqzMZhqwSRWJh8x5F4zXYUKo+xbr3aTtHL7CR
	 JRBAQ0zyKxx0Esip7WGgetUj5edhU0Gf2yXoRtdrFng26WZn80VVfTphbo2gfHIYxe
	 qXFzRchWN9KFsojQwetcOpYzm1ngIqncq7LDzgf3+YrHMVeD0kBic4SJQVEkJTndr+
	 Vk7t6GBIRuFNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A119D3B7DE
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 00:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176506817358.7864.17941699133848783057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5da7877a394cae8d1056f89b2d92a48b98c764f8cf149425dcb0add27fead772
Date: Sun, 07 Dec 2025 00:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765068173
