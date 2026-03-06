Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC132F0C79
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772831094; cv=none; b=lMkE7zDGFk2ZLMD4dkd4Ie7gBEQWPBB7/9xyYxcAV04+gIuxzCXFRrOxM4AUEA6MGQ5PNj7XZZIUbKrt2a3qaPQO/4NuSSQZschR35QTynmKndBUPBxp7XMoXNETbuYtw9daiNxnMkYDdU+auuNvKbgXV00NCC8XQEW+1+lIVSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772831094; c=relaxed/simple;
	bh=LYw8sclMEEqB6ZebdtapX+lLo0/kkMuBcG0I0pAZsMY=;
	h=To:Subject:From:Message-Id:Date; b=gWIsX+UCme0XUKdm+vDNSVVeCYyxqJhjLLKPQMCF9rngIXU0fTF4oBh2buWTnDSgGks6HcI1s78s7nk1Osy7rl+AS/0XcenOIHVH3m4yupRQcRdVIB8oT9vRsW8rsTpJQQ6bnDGL4Y+d4zQ/d7BGYF/YAPs27/48teDzuPBXLYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WleDEqJJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WleDEqJJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5E5C19425
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772831093;
	bh=LYw8sclMEEqB6ZebdtapX+lLo0/kkMuBcG0I0pAZsMY=;
	h=To:Subject:From:Date:From;
	b=WleDEqJJUUUhg645vceib4VHCh6co9ihZW62IqHEcYzIv8ExR1euDYEUiRE9iAjgi
	 /diSX7bbv6R2aUpfV++R3S79pd2eslN1pjcsT/2Wq3ngJ/0wDWAmRfP3PRxL94rrYJ
	 o7OzNdfzONSMBgPsU2SK1m584DibtdMckrGZxSr/ef53jIUmUqqqukuyYoldLAIN0w
	 HBLYx6PVIpt41UcD6J8I0GOaJYB10z4kL9Yspl7xzogEaWTDMAhnK2xq8KbH4nzz9o
	 9ntjuN5SklLCJYwIdnoShlsX5Ff2DFZKOYEzhZLRumoEwvnLgGVG8hM5u3v/3Z9WcJ
	 hxRjy5vrmyltQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9820EFCC074
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177283109359.11218.17531243330110692425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 343445d5bdc4fb5cb367e71a431c579f71fb27f2db545fd283f0ff2e98891afc
Date: Fri, 06 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772831093
