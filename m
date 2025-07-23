Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0A42AD3E
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753269593; cv=none; b=QQoj3lNun7Tdj/Tz/2Xde52hZbCrndaDZfiRkjF7J0pfpwN6wdNdo0oIS20QWmjfClmz2VIlS7b8xxwKXhG/i8iNVZrQB+EuQe9rYQ5UV5GBvrHzML/Ecv91DD32CBKIMpN9e49DkGPItYmtxEvJoUzbDYAEM4TbND5phP4/4c4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753269593; c=relaxed/simple;
	bh=/vyZLpaGuXi5rBSYKdCeGfAR2fFyfreSGFyMDUT0Irs=;
	h=To:Subject:From:Message-Id:Date; b=nNl87lxVR2BXwwXw1JF5byw9zLVI2LkybxquIn7+ng2Hc5CTPKLORMJrb57UlTkGVuEu039RyD0VejMwlWz+gl/WVYWXLOMhajHZ01h+uYGvi0FfyTmo+qZHxAG5rKpgH8Dky2TMt/lpyRZ3w7pyjfpkaHKEfm+c2mE/N+2Yyo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GK0C0Z9i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GK0C0Z9i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3D1C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753269593;
	bh=/vyZLpaGuXi5rBSYKdCeGfAR2fFyfreSGFyMDUT0Irs=;
	h=To:Subject:From:Date:From;
	b=GK0C0Z9ihIG7ou01oSAEdM045Z6oSD6Q88mOS4SuilQVX/75y2thtxTDJJoB/rXQ/
	 K3kgnHZbcH07poS2o7JUFRDqEICU2kBEZSHeCrL7sJsiWGV5HJAr/qgZuUbSmfK+ui
	 O2Fp+VpB+UFKIy2ODGkammT9MK8JYcS/1czJUx76B6IO+efsGLoyWuFxVXm81sMMbc
	 yECcjlO3h8tCWzeRQltUgx2T+jE2Nutji0xfOp2zWsiYzbH5xvA2dfb+bTxHVCHD8i
	 XebVTImPQk8DJuaSO9120OCz6sWzmB7VJaXuANzHDEDSZYhMezcg84p75edJZ+LVkH
	 U9RtzXzjE8Iow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF0AC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175326959357.29927.1166962879717492428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4435e46f059083caedd60810ad50056d99ff0223803cb44c7d7e5dc6856bd9f
Date: Wed, 23 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753269593
