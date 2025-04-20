Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9F612144D2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745177393; cv=none; b=f8ALVDXJpdcpoDXnLR2UQ8E7phyB0Eo+AUphuU58YyL8mSc99fieMZO57S1CjSo0whRYN1BzVwD7xpvhDK95soKeOb7Pe6QC/A266pSJE+Jkv8y3sjmkzxxO4SjXmguU7epx805HANa9ul4vDdUFwSmSgcgpAtq4ovY29R/Ksc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745177393; c=relaxed/simple;
	bh=ViWwX4bd9Gbmw6oT+piQZnimK3IuZLhgvtjfdrzVQRA=;
	h=To:Subject:From:Message-Id:Date; b=Z1J9HTamdt01N+D7zdZ8d4IZtHXvxnEzsRUSChZTnJ4hfn2lr5bk4Jo06X0/8blw+xsGY4Ow1weBvkhmwIl1689V/ocIS+bxdJAAmF8V5oAFpcwk7tSZY9ssJE4fo/iqmegSilxap7Tq1Lnd0Mvtlg29XfZIxUqp8nKn5hFYU/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nbHYuqij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nbHYuqij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9305C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745177393;
	bh=ViWwX4bd9Gbmw6oT+piQZnimK3IuZLhgvtjfdrzVQRA=;
	h=To:Subject:From:Date:From;
	b=nbHYuqijAAtg95ufdhI2cXa41biNrpeL78TQX4PJB9kRG71nEsbO6qyNSKv+uzQnb
	 JJCZ3Z4mYRb6UkjDbcEgDFt4rQZRAOdRCTVIkqVbXbuVufqzSaasZkwC+pA2DcDMr2
	 ee9dPSWLC2Wko3zTjc6iyf8j9ZX8ZdH5FewOx/lyZdNIMhZl2FzVB/YnTrGm7sTtqh
	 ds+mxB2eHlRUafDYnTAmmMGINv5GuM9cz9HWEwnw/V2kdhAodUZNozAbrP/Rli+D0Y
	 J63xkpSSYbtPAyPwqMGii39kORzGgu87AhHQ4RRciDbMWbGqaeaFfR3rJ/JBoZoPIA
	 pD75W0/sfi3SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DA5C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174517739360.22479.5202585985933220738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb694c177c0ab4937127580cca0bb85e98dd82255d16a4a4a24974d3ec2f8e06
Date: Sun, 20 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745177393
