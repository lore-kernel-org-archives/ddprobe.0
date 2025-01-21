Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7BA1494D9
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737443754; cv=none; b=jk6dW5eZ9IhmGqUA8onTYArtqSZZA0N61YAiRUtiwLgST1FK9b/firpzoQHRtYswhqhldiPYJO9YvuIEF0MYN96FBJzwjetWHarcEli4Z9IVzq4oldz58cQ8AALQ6NT/3+O331WOjjR2b/O0npuurD7xeuv1HsnurNKSiLNtz/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737443754; c=relaxed/simple;
	bh=GR7nZ6UtSZC+09yQbetOmkwKRl3DCpd2fS80rpAPM4s=;
	h=To:Subject:From:Message-Id:Date; b=aenJGF/+ZAC1PtTgfLwyrCSIwQ6kFFPuPhzrrp0+gkrEXLFbWKncJKvUCIki9ZvprWIzTNOT0qJ9nAPfN+5Khp1FFeV5NdSwCNgRYK5LUw6lu5CJzLgH4cCuTbJeVRPUwOpxTsXszHHhbxxwx1HL3RAmuh/5QB0K6bK10UyyL80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRSveXCZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRSveXCZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8149C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737443753;
	bh=GR7nZ6UtSZC+09yQbetOmkwKRl3DCpd2fS80rpAPM4s=;
	h=To:Subject:From:Date:From;
	b=CRSveXCZLyn6w2IIRjS3zB09J5v8VB3Tj5qDTjkEVHG3DRrrzfRf1AaM76qv8Tef7
	 VJMpcZIQzuSPG19ZrtnQjK9SXVTyi3+99gAkybxHOZnZ7JDyar/yLbC1kWXQFp4ePH
	 c1qxJex0O6EvfFXfJkp2QW4f87WNSAenBKiRRnihyZmMjwORB7yZHwaEqjn9g+qWbv
	 JDGOGv1IG2gaPfW0ksMLOqruag08zvB5qG51iYpaoQTS+tjkHaEPkAoEIFcp4rVqRQ
	 dB/ndu+RBcziIioIG1V/p0TCeB5l++Jbphs7V4w7lzVTrYty32AGlIBDYvDwj1XfQh
	 MyoJmi2pL2PWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CF7C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173744375359.8028.9240911142033502657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cd83e9e6b11e431f39c9a6af7a341cddda86c3f5a28046f95b23f7ebee4af1d
Date: Tue, 21 Jan 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737443753
