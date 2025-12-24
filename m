Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2858532D43B
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766567034; cv=none; b=MyapswynUFuDlrQ1JR15So5AWf2Y81BlcU/xB11ppf/19KcwSmVif1bNIccEttuTIwLjv4cnw2sUIgGO8kKZPRIARaYjWiK7U/Swg+RD4Jp6TNTtGf0aF44tfR+0Pa2RvDbcZVqLAmRlYuVPDD2FQXibEv2QUzYqYsjiF07RRlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766567034; c=relaxed/simple;
	bh=Tr30GN2VljI/FFfIj5K9Cs4XsQQxL22nG3zMLfLQUxw=;
	h=To:Subject:From:Message-Id:Date; b=j6ISHpyBJisKN0z7dEbFxqYdmlz8yMjeNAU9pldfSfNMr+9leOS4eyqbVYJJ9SXXNPgjzFAPqHrYCcOhhlUEjD1/0ViP2guP5zVoysKtmVHaAvcwJkJ4jIBzAegXGSFdVDK3aeYAaOlN9K3SMJBcZaiUOwEMQgnlgsZ4nqxoUdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KADK1BC8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KADK1BC8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B50C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766567033;
	bh=Tr30GN2VljI/FFfIj5K9Cs4XsQQxL22nG3zMLfLQUxw=;
	h=To:Subject:From:Date:From;
	b=KADK1BC8pggdn0S+oJVE7LpyGB+Jc8b7RlrW2q93/r5rVnyYwoKRWV0nAPB2w4ZQr
	 1hDQi004NIwO7gMZENubCk6mu12K27JlOY8/6CvyU7A3VF7SsvN2x9gh1VP7p0sFpm
	 CRvxP2jA3z7S3tioBLjq+brKQtPXZxDNEA3Qd/mAoL3C806leERyTaCAsCONNPFqlm
	 EcypPbP95S/97gSsgG4MCjHf7v6fq6P3S4RX2t6MMG6eOzO0Mk+f/v7zXZaOCeJ6pi
	 gwHuoxE2/W+6+YjxXOnurXwcqbfcCM/9r9ytaIJgxcOgGryHascIwqJPQaIgtQvDtF
	 9BBbNmQKedcug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA7DE75423
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176656703362.19278.3959042493505076997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5db287a15105afaa927f5157f2a6a3d6b6db3f5f95fe5d665fa6cd6c8e940afb
Date: Wed, 24 Dec 2025 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766567033
