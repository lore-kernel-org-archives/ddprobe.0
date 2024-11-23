Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F39318C932
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732359354; cv=none; b=UFnFabHrbspHXgy0G1nDAv2QTdHU7flTnjEjTKUc1OeqQdjFjjhWS1YaDSl1BvNW4UBctPLgpECvzBZoR69pK3dI4zhfRV2PJCsx9De5dlkM1r0EhssKmLAdFl4hegFr3N50QYWtNaJXYrdWE5CVcI0j5ZuEnnUipRvp80QV9+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732359354; c=relaxed/simple;
	bh=V9GVYEYusDDOMocXsQTvA6eUl7ihNpcwQmu53VnJskw=;
	h=To:Subject:From:Message-Id:Date; b=cyy6nfBCkRwWto6ze2kFNrSiMzfDDRhaQwBiIwaTJE+RtQxNQJQF7aUEagiAZvP5BUethEPtS4rJ5VwNgUKVQekEM0JScSCBtwqpWCXAwun1sWpoXzpCykWeRdkh81dt1EN8qSriuw/a0xggefQpkSsO/rTp+Sd44gtz0ZrS3JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VaTNVXGz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VaTNVXGz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5DC7C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732359353;
	bh=V9GVYEYusDDOMocXsQTvA6eUl7ihNpcwQmu53VnJskw=;
	h=To:Subject:From:Date:From;
	b=VaTNVXGz7TVN0rM5q5sgYY4PASASPCtypC9bo+7AKPDjWv+RWaV4o+474cpz+qQ1z
	 YgkoAAi24I+13RC5+wn/FIv3Q9i+JUfIs/4dUyyiweu9lzM7yv3df9nVRFtXVCfxGx
	 Kq0Ed5t45zQY068bHsWsaCMk0jiy7eDH4iw0FW93jErQS8MmH/F26pILmBVHhpVfBA
	 3RIxLjLN3MrBdEnChHCzWpwywU6JWGxffzvPqcPFvM2JWt/D33ziOVsKMb5Htb/BqP
	 WBHCpx4Pc+bjcBAtR83Trfnw+xkG1XmTPSXbBFHAzKNPGagGcZ2C0TntHlBEyNfaZn
	 I+r5qv42MeZ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A273E6ADF1
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173235935360.2962.403783546193075420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b01beca174f7f9f96379ac967e6822413bad9ccaea1420410ca74c77155419
Date: Sat, 23 Nov 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732359353
