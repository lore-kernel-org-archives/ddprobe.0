Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8616FB9
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750379994; cv=none; b=GvF6s+/J0QbNRxnwTLyATco6IM0tRAW4o94luHflKX2mJFgiW9ZT7MBqqaTmN59XuqivqRhyGM/m654GyNoVAu3JYn+/VccjKpyx1hTLggS+/g46ep72+PqHpoTmCsWY32Yxuz7yuZrXdFl6fjB5WPnMaofCr36BegpK4U4Zz2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750379994; c=relaxed/simple;
	bh=Bb/Sul5A5DbQSkYvH81DFTX63eGKiG+zQzjwuuEP/e4=;
	h=To:Subject:From:Message-Id:Date; b=KtbXPFbWyNHE6/T13m4WhMVuKbRQpZDNCEBYnJHgSm+R49TeqEuHO8O1NHZ2PbIQRlGhmG6Dl5KjAf3JCK3FlHFKZlBbBIDsTPZz/Pal1dZYwQUV5rKuvdz/PKNQrf6PDH7Kj3f9DMxE/NsaG8yZBLH0lPKZxqUROtibDA/qCMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGolbqyI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGolbqyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55E1C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750379993;
	bh=Bb/Sul5A5DbQSkYvH81DFTX63eGKiG+zQzjwuuEP/e4=;
	h=To:Subject:From:Date:From;
	b=OGolbqyIPj+95lwRq87Wk00h0Mlyf+YhUkR/sQN3yOfoHh/lqMBLzu6PHrW35Xikd
	 /NerKsrDQb/PlDhZ1ryCCt06V/h2yYZ6nnWhe2PCI16hZoXf+xQxhitivtmmz+orsU
	 B4jgizQO1phlQ72rRUa+xpHXGOglw8I0rH8zcBbCR9Xy4Wn95heFJ0IzC8o8mMm9yl
	 Rnz/JCW4yuBjLwi/tOqyJpY3hKKXbRQKCbVrzn7NKmxRLGbGSp4951jDkO6A2s6KFW
	 trZxdDcWDUQFAFby+C0Kphzfthqd0t4tl0hXIWeu07pvLISQjNUCg5SCv0znIuDYjU
	 jYhi3/UVEeYVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95414C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175037999359.6183.2888100707606569964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5dc3e3273cdb2e13a2352a7da232064445d5bd53ed255af2137faec3d91187d
Date: Fri, 20 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750379993
