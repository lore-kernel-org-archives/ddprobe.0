Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4B6145B30
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 05:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719379403; cv=none; b=u7ZUfssdtjyCBUTKD3pVkkqpdi+QfRr9LpVfMPjU22Lu6LKy1XxVzjidTpzFygM0sOAKGJMaps7XWnDpkEMtDMuWsHyW+5WF+7/+gyYcypBeS3ALXe8HCBPs90pIrFiVTnc7deKMahZO4llGmowtaCjJR+vKBMIk6bKVsMYiBs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719379403; c=relaxed/simple;
	bh=NBFrOloZl7CgcdC/NWMoAUEkXCOZOsdP4deBczLgXDU=;
	h=To:Subject:From:Message-Id:Date; b=FuYPLiRh8AHsyYgSrvitn30vCzt+vg16BWJ0lampyddAE2boKH+czE4JYdyldxszd7fmOUaZqPnQntefjei8kLM5osTmfdoUbFOUEcXm+0/+U095KQOvLpyUzOI+dFzQz9oCfKruSbaUflKRUXElIq+nUCxrACS6IdydFTgrxfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZIDGVDY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZIDGVDY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8627C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 05:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719379402;
	bh=NBFrOloZl7CgcdC/NWMoAUEkXCOZOsdP4deBczLgXDU=;
	h=To:Subject:From:Date:From;
	b=fZIDGVDYosXk0EiCQLFVx6kWjWK1/5Vr6L5TC5ddk8e42D7/w4e7KuH3bMPZRpcey
	 rxQKUCeDu0aEQd+zWi9ykrA11ICsC7XJTAouhNQfA/n+DriqIf5iIUMdD60EgrMiyU
	 0W580CbfpzDup55t6ZcZ9JhvvKZxFN7dA8iOQH+vtNKFezPY6VioCGFhaS5GoCdNsL
	 bHhNpx6f8EGMJ38OR1mHtJS9r8RNRaBgDuVwCcGJiHpzqD3sJwREW09QJmBz+gzT33
	 742Am0r8kqR924B1/c0ZCVcDbXqT4XTmkgOlRxLs7xCCUcCj10F5LoOUZj49fgT3fS
	 xlYpwmSS/P0fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B79C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 05:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171937940278.10777.5038964220263207003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a81f90eebc92789744fbb2febcd1edeb01eea0b1db0f4af42d5000f30c37924
Date: Wed, 26 Jun 2024 05:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719379402
