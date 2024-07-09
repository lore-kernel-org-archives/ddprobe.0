Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D8529CEA
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 04:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720500983; cv=none; b=ZuqVbEY7kPedIrUY1dFBA3XDBL+rT+OiCoz+X58GTKrPGW3UN1UcHNp9G+W0L1RcIIFSog7T3EKTjHhUkecsAJcpizDgsDbIzrlC1qRjUmJO9DWJYhaPBwvtRNroRNfJaWohkM8Rl0LBZHxpIJItzKkM6U+U9z5S/WHt7RjNH40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720500983; c=relaxed/simple;
	bh=n7yBKCWNY2Fm8oRomHcqwOC+pXbDTM/su/pq7jwfSrA=;
	h=To:Subject:From:Message-Id:Date; b=GQZ8AD0v2dWI7NjaUmzl9NXaI1NsL45405ifByvEdDfb8GcVQEKum21aXg0omOLlFP9ZB8hNZL2/mTalC+O0aSYarnLaHkZwyUyZRpadF4lcgsKayXO3YGj6UEj9FJW/TllqyGhjI0Rjuj7KT142l+8jkPOiAy+sVGEM5gJ+/jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M3hTibfe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M3hTibfe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1188C32782
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 04:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720500982;
	bh=n7yBKCWNY2Fm8oRomHcqwOC+pXbDTM/su/pq7jwfSrA=;
	h=To:Subject:From:Date:From;
	b=M3hTibfetFBjoQXNUa9+ojlKkp4S6dCp1Z/5GdUzSPf6AKztfTi8PYtQ7PKGLrVkv
	 gGvX5InUzOrHHpYi6NKtJdwlhWW46MFxmpP7I0i7rwI2TDZ5iCSpcx/HqpBWPaakho
	 e7qjtJH4YzhGaW/ROGpetv353wQZ6oPe4cTD+Ef+Oc63irdECLeDaz03fQYtyQSPq9
	 ptlz+aXTqrJIsig2E4A3IPvhmJ6KEb6kDwz1Tqh/xfzQxz1ETy3d1ODKUxRRVNDYXM
	 TYxKhao3RkbDnd8NLUcSdd4+KAfhckrDDGpI3JVfph0W/Ls958OWf72ugsEvydVRdU
	 YAqXJnyNttLuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDCFEC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 04:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172050098276.1683.10261827386054867459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 584cee74f0fd30c2a87f9197294adf8c5c867449317461ed1e0132680d619429
Date: Tue, 09 Jul 2024 04:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720500982
