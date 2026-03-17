Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AABC16CD33
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773751494; cv=none; b=d2jRRsFM3h4y03d6KBxbcdqmFbrw2hUKclYw70INYt1h+63R15pL2aemxMO+0fl+PqceYSgGduArN24qIwZL4S52EOZgcORRl2Vr9Wd4LJt65uWuYHXbxZVB5WFcNSUoThkOSIeVHx33sf2D8ZjOUXJ0BzNkIj4gh2NZcR752kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773751494; c=relaxed/simple;
	bh=0ziIkJ2GbJaQkrxkxJBVetscPqYCWMrmDY4Xow1Rv44=;
	h=To:Subject:From:Message-Id:Date; b=OujvpTiUmiD11PT1ugotj5ulh9n+aiR14h5H293cqQqX/hsw4lgRBnbxXNrJrN0kQ9QFNBlYRkdjE3IIRS870vXyWhSb+QVNH8KfQWf1w3nwA/Kk/cMFS2STh81UV/g9tovJN/f+fGfejgM7qJHMwVT25OuZBsrrtmodt3eT/MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VK/tiORY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VK/tiORY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F611C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773751493;
	bh=0ziIkJ2GbJaQkrxkxJBVetscPqYCWMrmDY4Xow1Rv44=;
	h=To:Subject:From:Date:From;
	b=VK/tiORY5S5wouYj0pWEecjlCbnxADvYstUHAyK3aIvt0gTFmlb4zb3jXz8il1BWV
	 VYIu+njnj9tzM3rJLfR3wHjznXbdQj8ejKTRecXi/9s/K8YGIrZ9AeGUP7oflVNRla
	 SK4wdW0fTXixmh5bR5N/TJMa16CzS82ccKpAi8iozemxMDPDCkkgFIQeYgUpNpQSoC
	 WDMbgN/SbhdsWz4oKPRpFmBQ78Y9hhrHAtayt14HJiVxScp/MC3X5Nt/Pyrjekgobc
	 haqFT6j4RokZS8o4lCFJiC05Wm1tQC2VEmAArtkHCuEy/aLXUpP9YkbafdSV4P4gAB
	 qFIEhsZPR4Qww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED0EFD8761
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177375149357.15642.4576790435419424331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a75dd41480a53835600d8bdf5e3c799eb9a08f62c78359f4b0707abc10188bed
Date: Tue, 17 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773751493
