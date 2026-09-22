Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E740372EEA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790046634; cv=none; b=p5395R3haaTF4e/4SojUozL52OuQDUJaZhIs0T8yd3iFqYedv8gFhpvoPG5U3jMIY6QM3rwpXiiGt4yTWCGuzH0DeEjVy17Ycg9AQ2JvEkWIXSU5kl3ssn5NEA4ohKFBLT4XbhOoqmm7drbVl+qy1NXl6T4nXY1MG7DjYLAgVEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790046634; c=relaxed/simple;
	bh=9Dkhrrjw+ZYy3/a5XcJk+5YCzPISj2e4KYO0yonlsL4=;
	h=To:Subject:From:Message-Id:Date; b=K1krs1Ole6aEY0Gr7eJpRg8Gii2kiu/veo93ulMaDy0nLcX653QnIV7xjWw2VZCwyRdvT2GNHvCq0uAj+q8W3D5W81xwyTZtQNrjj+gbW3fRO6G8vzbty3fI6KvC9Lgve9HGChr1OViavheW97nqJ/xwcCfS9t4TJqeKA/4mCnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWGWe5dy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWGWe5dy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE3AC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790046633;
	bh=9Dkhrrjw+ZYy3/a5XcJk+5YCzPISj2e4KYO0yonlsL4=;
	h=To:Subject:From:Date:From;
	b=TWGWe5dyJAWNaofamiz+pXD15ASCnK4aQgxAPiI7S8Xe+UlmVdGEnonNvtTazt4GF
	 r+o6gIbl/e5ETOkZX+HMTH56oc4MevTAlq6wN0UVZE0uMwUTNrd7dOLZLrp//a/5gD
	 EWBM9INLHHUa8MR2XowTxKdfiEEA6Q/ia5ndWeywG+ZCQGlpuXxtKbKKHxr4WVAWo5
	 llDOiR1CivUsQA9KF3055k1R6JaQ3MFyvA2KEWxw++a1o2zR/2fK62+qqKsnk046DJ
	 W1V+Z5gzzhjntQXTQaHXZ/CkkzKH2ivVtxPfUeNLi18jWL2rGvoWaewkZB9+v0X7DT
	 lXaw7SruRHbkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DC4C982FD
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179004663368.11811.13150915640654564888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb85f07cf43f09b8ca33ed5508f5ddc814aad4dcfa13a2400ea8e329ee06ca9a
Date: Tue, 22 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790046633
