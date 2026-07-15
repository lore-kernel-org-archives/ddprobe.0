Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A312A36D9FE
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 19:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784143114; cv=none; b=ZUyHH0SOXt7JmYQ3X4pujTZghv5BFqqQorXGLCfaGOKZ4q3vpOKbx3xKUwOLzKB3nEZt63Rnm7NQo4SFPwI25DE7sno9npJNq5XGK8QiYxgp/fu9j4zmD9yo2bv29F29f7W0h7e/pEyphKAcxMMvC6e/mKgCRZkeCvoQsnL2JoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784143114; c=relaxed/simple;
	bh=ABpdFD5hJ697TqcXawxJEl8fRzp9wjKUjinQRyBdW9E=;
	h=To:Subject:From:Message-Id:Date; b=mrtPP+BUuy9MCCwGCUhl+IyCRC/W1HVfp+3pDlHVUvcluaTuxtqDJAm7Id48NeWboS7Zi/QbAgHUebC4RnbAnYz7Yni8RRTl4rAr8VyaypFMCaUYNJKNyfDde9el1g5ToiYsGP5Un9eqzz9USsMC6MbSzlVmE7XUzFtLTNEMN+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CW5l5W3g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CW5l5W3g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2C5C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 19:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784143113;
	bh=ABpdFD5hJ697TqcXawxJEl8fRzp9wjKUjinQRyBdW9E=;
	h=To:Subject:From:Date:From;
	b=CW5l5W3g2g3aysDf6gRrB9FK0agPHZYqcHne6j6ZwP/LzeoYuCL6AoupPAaKOiKI4
	 SdLvWmdNZqPyGWwzOHDVVw28uN72CzPT09FWrZanunzjWDnkKhF78xNReoRHxoSTgb
	 7bAK6nbKJV9t2kFzN3/vlYQeD9a2KlMTQyfzE85Y4iw/8C67TpVPsg8DGn4B5es5Wo
	 bkO86DH8MierSeY4ofldfmlbm9z20X8Vx5jz7Pkwfjb4cA8Xg8VPQ16Gz67c8dWKb6
	 rVlph+o7C9G+b9esIfvShgapo6ecw5lkWON+Bc2h/VK+n57f9jfW7Sz1HOPkNxLJQb
	 B9+vi70ZROITQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BC7C44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 19:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178414311368.15805.8788986545620996099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c3448d0ac0dce902af9fb13beafe4efff757417acdeb5559b93791a31171c56
Date: Wed, 15 Jul 2026 19:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784143113
