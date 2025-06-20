Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296CCE56A
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750384795; cv=none; b=UedB7GIw9Bxd+9+BEpS/5bVs7FsxBOffWSqaHNMtHHPOQFGebmZktUz+SAS5pw+T0c1QOiD6osl/BzVi3SLARdsa2JQQrzItQQy/QLk4dEzzDorPU7kIATqWksAbShL+LwXOoAKZ20++rEyWsKHjxKwl4qxewsfXC43mRBZSHYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750384795; c=relaxed/simple;
	bh=EIso/dyi95M18lwwt/o6ZKd+fyyBjF/RbbjmS5Z7/pI=;
	h=To:Subject:From:Message-Id:Date; b=WPWDPjhv2gmGN9qE5vc7NJrVPtz0bup2rL5KHG1QZo3Z0frybSmmOnuuebR/VzeZ9HkZ0SrG6CJA5gQcjrZXxmLsl7qa6Hk1fGRhrf97GQqeRRW/zurksv+La39wwJNZFoc+0rCJ/IaE4YqPowNklDkp1isrHOsZ+ja3O2mQFSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d374Axqw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d374Axqw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D23C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750384793;
	bh=EIso/dyi95M18lwwt/o6ZKd+fyyBjF/RbbjmS5Z7/pI=;
	h=To:Subject:From:Date:From;
	b=d374Axqw9hNFWed2N0RCSJcWYJKvB4Lj8RkJC6IeGAe2UwuRZVj3rldA6+uthLlQR
	 QOSK32n/5dH3iYW1CwB8k0qg0tGWkS/W1vQlVq4M2JYBdxtAtFK7hgAjIrXD0i3ylF
	 dJpA08IElY45taP/SYQqcZP9/sRNd6Ac9WzaXcPr7ZfeOf0dC/GOhNNCRDQuqs1dcW
	 8Vblb+BJqU7WzNsxOL367Nzlptg+DEltzxmzua6brSnVub+lpGcDlC2sAxVBxR2Dgw
	 gJSVYERYrfpqt4NEuHMzQwKA8T9MbJ/JuiklmkQ6wopEp2QKsyqOEz6aMRo/lL84wv
	 bHXqStKRmBBZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918FAC7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175038479357.6885.17757473166986696874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9367d493a021242650f4fe945093591f8d5d9de997e496e7f934947fcb8e58fc
Date: Fri, 20 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750384793
