Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D485011713
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732677953; cv=none; b=ayC+C2MTesMJV4NT+QLn7NxBgcHTuel3Kq1CseIaOPxiUNIuoktzvKlu5gthn9qidSPdKekWOEJDF7ohppUxZiAX6i7IecQTuu2juxd6SZuc37X5yVDf7R0SjVS0pkbP4T5JjY1BDPYdg7WMc4UbK6z+zzy6GCgZIxY+BOFdh/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732677953; c=relaxed/simple;
	bh=bbTKIP8IIdZ9zR9RAuRH2YI+MLrspY83AYCS2SOzuM0=;
	h=To:Subject:From:Message-Id:Date; b=pV9Uf2UpL+JGmuVLTnM0e+x5JCwl4G+WlznOePeCSrZmOnlcbemYM07b8tyOqCkM5Ncr2Ms7p3eoIePAaS/w5JfuWCj2xoxNi+5viDgCLD1TSLghyaI0SkeIEYkWvBpQS55X88S8NI+evF7TIkEyTjBZdnZ0rhK/R0yaL7OWbJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpGWugmD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpGWugmD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6A5C4CECF
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732677953;
	bh=bbTKIP8IIdZ9zR9RAuRH2YI+MLrspY83AYCS2SOzuM0=;
	h=To:Subject:From:Date:From;
	b=SpGWugmDKasTmZUhIhfrO68E+NOz8KsKbQSJsoVSlUXykOpbEtFLixH1jwy1D6ALF
	 1q6F3OZk2spnwHQrK2m/nEn3w5+ZtZC2OpyKGnyDwTuQ7clwkcin3d6I0KScg+lCq1
	 W4s9IiLEJFan1opHbLKCJkxKALEqwigGxJwbMwKKaznVDr9LRih83ooVKwZNUzr1AG
	 15okU7RvyZOjSNlo9BYSi5wBJpaU9pCFba/Mxg8c6FpTdYzqOfpccv16vt5CCrQALC
	 sKS3eHhWwdQQhNWw+bfmx9yRUXtCAITPO9SEbtCSr6eWEsUt9xVW/Vqd+2dq33KfeL
	 bCxjdtFXdhXtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADF8D66BB0
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173267795361.13949.10402666472725739030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cec569865bb6b27c1635e9bb9bbf786605bcf0dcef4344a98c170eb70a91052
Date: Wed, 27 Nov 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732677953
