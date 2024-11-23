Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE3917BA6
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732393554; cv=none; b=HiFZanAobjcEAZtahFpyC0Xf42QcKPZy0QCvEHho8LqHc4OKH0m+yy94l/dN4+WzPWh6MC8ZPv5ANik3Sc+OsnkB/lSxWm9VK76EwZLlKXPm0cXy/Z0uCexvD/Vlpd+gESTnSQ7DVl5beA5WgMW+NpHJUsNXbuGhLTZ/TobNSCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732393554; c=relaxed/simple;
	bh=Ex1rmPPSkL9ezggRLJBhp6c0JaxRtcU5RbIgXm+J+rQ=;
	h=To:Subject:From:Message-Id:Date; b=J8HebLRtLTkVvLBrdpKJ9h/4Eu5eiseG/Hly1bDhBGK6ij574ckZn2vUmm9E7xwAbcFM/B08X6U0Lgi+DdQ341p/2ygv3PTw6mBjhukWbXrbYM52wNQ9/Uj/2fPl0yTQBRWQSiovWh0iV/tkuYsSZcJ85Ef9df4F++FVBP/17B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DYcVnVGd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DYcVnVGd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BBD6C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732393553;
	bh=Ex1rmPPSkL9ezggRLJBhp6c0JaxRtcU5RbIgXm+J+rQ=;
	h=To:Subject:From:Date:From;
	b=DYcVnVGdbjFIrDKUq290mhkSS7H76F8ZVn53TZ2Bn/PgY1kkIgtELw6DTBQyzumeM
	 nv/r7NJw7b778lBQcAVtbDl3O/+oQRVMuEXLzV1B30U06mHdYwaprzquU5yDb1GCw4
	 s714wZeQBIg1KSbJln7imltbYzt8W+5bRgN1ciNQLg1b7BLVxuy4tidoHXyXaDVANB
	 5I9O7XLelhmQVGtqtAv5V8fwZ00NXxwprSVC752ctEoqVsG26ZubQPeQrZlRBjtGko
	 Lp9KdpR3R9lf3STe/34GxTyGAkawwwM7/ZX2dAXKiPwYbJeiruB87DiXyKrqhC7p2a
	 4PPEYfFtac4yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDD0E66882
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173239355358.12571.11559406470640090972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b995830bb3f456836b0a9f6f9c276e2a74e815158534e0117b4bc74e8e78c329
Date: Sat, 23 Nov 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732393553
