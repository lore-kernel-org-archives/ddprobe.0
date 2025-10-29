Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235362D94A3
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761707994; cv=none; b=RWeWsxUGrjuksiIYmcriCNjlyKKx8360gsxlRDWeDR1g3m2w0xuD9vsEFpmlBtNQX6G9leJHZJiGe29eum6HSuVKgvjZ/LyTYXwCo3Q6k0gDbKsruCdAS10VTzW+RLXnWD9xmCJip8R+RxKi2m1gcsj0CSEaYZacMkhGw428EGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761707994; c=relaxed/simple;
	bh=wIx96CGLZc8NicD2BortZ6t272blGH8iJ/UZQ08JsyA=;
	h=To:Subject:From:Message-Id:Date; b=BtrkIX8dwatIDgb4//VGSdQjPjjtJr1GCfENCRTzvnhM8eOMR3ie/ey5Oyi6T+ylfEOkZ9jswNz83pQx5TRmdnaDX6aVtKWjLgkg0WemIB+1nNYQQrKVh3JI0lLy6pDdUQKx3J5lvuKtFPiZL+pH3/6ZOOyH0m/jUNExBG5O+Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rAJYC3H2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAJYC3H2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C0FC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761707993;
	bh=wIx96CGLZc8NicD2BortZ6t272blGH8iJ/UZQ08JsyA=;
	h=To:Subject:From:Date:From;
	b=rAJYC3H25c47L0XYNJP7PqJq8CISZxaFxwgmwMzQs0UeL4LvqXB3izMkBY1tbu08z
	 X/P4tDK8r9/GcIX2brca/Cp0n69sOi8vcqRVSlW+0hnWHAPOdm7tUjhT8rViTssoeW
	 ++OfS0OdhHrCCzrbKT4SBgx/WbO6Sf9yWy5DYfBhOpj2uolt/rJKnYFUiNSDZiIF7N
	 Pb8bB/TpSF/6Bdje5Ce/96OCgJM59PtfCrJtycGePVB510IhvBEypDvtHeggC9n53z
	 ihtiCsRiltdz9PdJCW2CPRZ/ZB4rHb2246W1EDSlRz/Mguf7RWrYuNdv4TUfwU+COx
	 GtG9CTmRUFuLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BD0CCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176170799359.30890.289349210756809970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 387ffda783abae56808de8e8458856fdb83005698ec8ae5ac3712f12c7d642f2
Date: Wed, 29 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761707993
