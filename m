Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275D92744F
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 13:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779543154; cv=none; b=h1pJn58Y/RPRB+TwObPelfqqOxFpJpYqoirghZURRJuVwaaEB6p5SDuJsVR+sfvTr652hk9nK7Q8RJ4dDF2ejfHObwgJy8Bh7Z6h6Lk5zgCkzZSkoWCi66plMfskuvYRG5tv5zyyXef2o4QEXYyW5JnSXw67AafmBOwqGBKksgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779543154; c=relaxed/simple;
	bh=5rdGsOedxRbvCoo69Vrna8FlAFcBvEGm7yr0FFYPJCM=;
	h=To:Subject:From:Message-Id:Date; b=lmfBS/QX5osBK2jnO2EVWDNQY5uuYhb0T2KnDu+o2tMkC7mAj5IFFNMU1go+JB7r66ibiawjtiQy72TiqpaX3WjYn/qnEfzlIaqyKRviIXjqJNyW6v0u57lE7J49neBmCf34YL87tqLKP0Wjrx5WaBwmu8IV1BJM5nd7mOEeFJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpFmEA9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpFmEA9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C357EC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 13:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779543153;
	bh=5rdGsOedxRbvCoo69Vrna8FlAFcBvEGm7yr0FFYPJCM=;
	h=To:Subject:From:Date:From;
	b=MpFmEA9bH4nv3jCcKqlJFp1k6Y4WdUi4fNeYMfJCPBY+j0QGBjpHcgOChWD+apQ8Y
	 sLGBYyYwj1nKCvra4jY2OEPX5HpPhCn7EIf+nE5e1x9o+xv4somougXgYV12GVh/wp
	 YKY4Dp2r5/F4hHk7KKHw0OMslDFqPSPsFZVr07UWFKDsL6A1RncBmCWjEoEqn1B2K5
	 D4mmHVZxQtDNpe/jpjg1IkmI3niGUfcaz9JO5F8kIsGzhSItMO3EgkDPCY8O8Dr8Ge
	 lByCQKdvQVv32GAou2f8zR7t3MeYf3+JAImsErnwftg9OGBXnyx4RaGXjFWqNgxZ4X
	 nn9aSU+JzbrEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8219CD5BBF
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 13:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177954315368.24883.12256960630089946950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4e5624390a578a0a5f094dbe30c783c7ea0e94ad9c5e747c36aa8063ef24efd
Date: Sat, 23 May 2026 13:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779543153
