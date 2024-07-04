Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589E8131736
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 21:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720128323; cv=none; b=oAqUIfK6zAy+KkXIRK1Ipte/tvfxh95bPUEOSxcfMOQzBmv+LEILuo2PeUpQVML1XpMH4pgs9Wpy+MBvEKjJL36TdsLOJOcDs1OSDjjpsuPmkQx+FknUUI3m0RkGcQBi80p1XsjgtzK8HRMZeCS796hcgkg06PKI3F2R8pPbNNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720128323; c=relaxed/simple;
	bh=hjw30694ELdNkAcyhlR+hPzfIUqtzcBWs8wQIPiUSek=;
	h=To:Subject:From:Message-Id:Date; b=VY9fm3nKnES9sjqz0qCKnpyHXEigajGkG9YlfGAJFKqrzdtYzwrHZ5cdhJ3A4Q6F5LUbR0swYyqREJqoAGnP87SgZyMWeSUeHJcAGAgwq8Eeq/qej/RBiVYOhQhIX+rbZ/5qF4+c/7n4E+pokqfdqxd4PPBNGXBeT9S4vPzCQlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCGVgw5+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCGVgw5+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC586C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 21:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720128322;
	bh=hjw30694ELdNkAcyhlR+hPzfIUqtzcBWs8wQIPiUSek=;
	h=To:Subject:From:Date:From;
	b=sCGVgw5+7jLnd/zqvOEAdxurX15LLVgY8qQuS/yA4//y9aKZNd5eBN6j9nfUHFEK0
	 MQ9T5ETD0qISWmTvp09zKOWl6XYfKlBOAXrp/T+AHWRggHiOQ470EAjmAsWzh65AXT
	 2M5DlAGj938RpfbPaRKukPYbHvArZ3mi+cJSFtEd5gG5Lx8GTstcaahyGWAOpGmEYz
	 qvicif57Fc3rK1VCnyjCilNidm9SI1/HkjgGkZzD8TFAgiijE/aebPN+y4322yPZzQ
	 jXet0FgwTEDF7LgDXg+CoNzFA/XUehTRRUhgrD0cV4dS8yyL3+d4+XPOIiOYahQ99u
	 LTJR9DTotQBow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE4D1C3271F
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 21:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172012832275.17088.17640064693546251774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9abe8b17b32e242a4863163b7f445e1eaadb298f421d1869c306d63ccfa5f369
Date: Thu, 04 Jul 2024 21:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720128322
