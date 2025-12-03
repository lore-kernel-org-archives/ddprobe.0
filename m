Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D766834CFBD
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 16:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764778373; cv=none; b=rgC/Flq7lU5PpNN1/LT82D7FlS3n6jqJ8cP2+PouOT62dYaXo/8rVazBtUcRcJ0exlBOO+1qV/P9paSU7JoB+axyRZdXMjWc8KAJ2fDO3OPyCopkG719dfyCeFx6h2I5uyjmCgVHxCE7dfGGnTmcvaOHUAtlshXugd38k0yQv6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764778373; c=relaxed/simple;
	bh=oBK3f5YQVqnYCP/Pw7ywGFAzzpi/uPfrbAeotfuZAhc=;
	h=To:Subject:From:Message-Id:Date; b=QSXw65mwPFKyyuYAoRFqx5yk+56K9lezltPvd5ziq3M0mj2ZptlXrw0nhNdtbvxm0MnEWE9CGVxmAP+2JMZ+KwkrsZXsM7kZrmJ4ptU/B2G/CEfoT0Ha+SYiBcinG8gstvjLluDWyVICFUJJyKkfM5Z0qFkLF7goJNuLcZk23Ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXTKdBaX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXTKdBaX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F964C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 16:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764778373;
	bh=oBK3f5YQVqnYCP/Pw7ywGFAzzpi/uPfrbAeotfuZAhc=;
	h=To:Subject:From:Date:From;
	b=nXTKdBaXMqqbHF0FhIbZl5HKkbWEaFTJ5Vgdo5kukTMjzflBHd6cjgaKecR0xcdFB
	 nckofcBsjduJ/l8NmEZJ/1djZSo1zGBmHxyTuCZTl0dErgZnFgV+w3F1JIfxJaH4vX
	 M86c0/2PDGfjXQClvkllms/kZMEyeo6jdkR+xgVgN5+geVHRROzdnb04FPXtJQEYfP
	 YZeOKNd4f/ipYvUA1N5f2wwYtLpTmLzsGX79i7ogGHisk2+BgZ6PghJAgCzdOHgppW
	 bfbWhDV7MH0ggORbdDE/u4xceDnX06Ralo5jnv0WBviL3pxB+PeoeKxXPdCvbKv5Xe
	 8vgNjc90LhBvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D5AD12D7A
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 16:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176477837358.9410.10516185947248762820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a19730355dc4bd98b42c4a4322a102f7a982e72a1624a925fb8ed0b89fe6fe99
Date: Wed, 03 Dec 2025 16:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764778373
