Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F3234F24E
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 11:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776426454; cv=none; b=O9OkCO/ABlN0kPme8+qWvQA8FeSi9vJV18O0zfIhPh5ZkZc6LYAJo84jH2hcaZ58uToR97fNuxjG1Vbe+yUAnQF35IT/5ZNjY27rw9Gy7dhh1SsSJWg55/O3Hmc1ClKp1igMxk83zBObKUj9UMpf+z9gKOoqqQpMnntqhtA3lLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776426454; c=relaxed/simple;
	bh=d4E4hgVGTCl4j0Ue5F2IjTbAncDZOKy1aPpvl5THfnQ=;
	h=To:Subject:From:Message-Id:Date; b=Uv6u9bx62yg/wQrPJlTlxbRfIaRjeZFNlcnjddZrIF78G/WaA4woqZpMeFZCfGioMgsPrYREfwYZkucV9RtIRM061HszkBu+/nSfYhiHgw3jRomvPfb07CEo7E4JF1JLdqoae84Dumn4NG/aACnNHbVOoqHfxPKVl28GEiYspL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKZ0GncR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKZ0GncR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D9EC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776426453;
	bh=d4E4hgVGTCl4j0Ue5F2IjTbAncDZOKy1aPpvl5THfnQ=;
	h=To:Subject:From:Date:From;
	b=cKZ0GncRJo/cFsyUEfvF3O46rcjUdiK0QKK5gJywdFV6/EVPa0PRTXyCIxWpIUUrR
	 OBmYtDBePR6mc9vdPA4mZ6R7RFRAP+42o7u/HqpDdDK6wvqqnVPnSKmpSRdU1VJdho
	 LVC6AMsvMKPW6ilQ3KXnkzyzS79H07lP7rNiDH4hAXhIpLUm1qHD04kjS9dT4ylve3
	 MdhAwC2nk7FoXIsUQHUVWVMdiWxWpER3hGpooDNAvTGj0lGxP1UGSS/zx+oWLMJavc
	 BYzuKGsp5oVQuv+jYdeeYuaIgmQc4vk0iJp+h0n8Ci6yeRDynWSqR25H4IDaLUKOhO
	 LxHwgtArXR2cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF18DF43693
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177642645368.29562.7134969315663328737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1623033f58d0fa3ff2fc77abf16ee3bbcacb441166841c1c35b114e0ee3aad2
Date: Fri, 17 Apr 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776426453
