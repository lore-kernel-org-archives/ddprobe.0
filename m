Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4347F56B840
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788968434; cv=none; b=YeGlda2MNrfiWuNjobwUvLca85Tjv6WKpGUrTwFVlXznQRy0ah2oZ5XlqBz1eh4y2B6olV1c8Tn5WDVF9P0i9+dFkHJrT3/BMFksQ7YJ+fkt0EkPmGfO78Ggl4Z0mcjK2Pi65872OOZC39vj8T0XniTdjCQnSvMdAmbGhrAP0AI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788968434; c=relaxed/simple;
	bh=2czhnxQ84EtM7h96ikKo2n9ABZWLClz4TZrYL2N2Ctg=;
	h=To:Subject:From:Message-Id:Date; b=KV91rMXhCniEZCY+CfxIZQlob8a/JXrDZS3w7R18Kni4iM4FlwF/Fonp1SNxjVkgKS1tnb+BBvkfrMP5XQQViL6vwTKHqdOfvG33LhtATjAK20ZYJ/rLm39O4Ml+GykpFsrTQkWYX00A53rQ9FfH2DSXyU01+NVcyMTTZhJep6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNYs1/vY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNYs1/vY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA56C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788968433;
	bh=2czhnxQ84EtM7h96ikKo2n9ABZWLClz4TZrYL2N2Ctg=;
	h=To:Subject:From:Date:From;
	b=nNYs1/vYh7p+5C5wAdtHirTrYhtVZaTkdJmszZA35LA7/rd5/WyEHZuip6nb45x92
	 xwxpoRpxTM773VCCzso7AQrZMYCT3VkLxdZCOuBkqGtxsMtryw+Cwyg6N7DWCqwAR8
	 +YWvez8rvVvYZF21qGP3LI4DUCohDo/ynOrWH1u1u3GIDF1DUypsC2kuLdr2m3B99B
	 kcFf7YpdZAOavzCxRP1iF8azmtcPRhIEt7DW5WnCu9tlWpk1H5CyaxW9mUdUFW3VUW
	 qzXZQsuI8JE6wOTO+Q1ltIJRd6jvX+wSJjrwAU+nDMci+N2DClpKi9p6kzRzu9MhVh
	 gKwxRa9Nw0UUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD35EC79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178896843369.28554.7280017834878452786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc39b0796ba6f3840f29f1d153846ffce3e8483e9caa2a21523927dc38557599
Date: Wed, 09 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788968433
