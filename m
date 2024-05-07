Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 591D516F0CD
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 19:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715111543; cv=none; b=qGcAX7tpbsCGq8STbaxQ1eA4jk7s0HlIq1YpP2NxoAswbEV9AVbBMyk2xibUSQIS8kMeLZ78Ufj02kV3DHCYgsr+hGH40f9L75bx2/XbByPbbETn4SA7cHJqQpk18mizuM4TWhDTf2FdmNtjqDNMdO01+RfRkRyqkSlhh66kZj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715111543; c=relaxed/simple;
	bh=TglbQ0xJi1zrgKv9B+yXo7WQk8lfHm98cuce+uI7/hc=;
	h=To:Subject:From:Message-Id:Date; b=OTCiPglzY987r3DCfuszDa2QikaAbdu+5z7kAby8JU9ByA94DfPnfaLwl6YimzR61cuWfQ6bM3k4g1bhS4E3oVPCtyIJVQDjTKud5QmznH8UPw2lmMXmaySCaWMM+qDdkh8R3mtJa6MKP6uerskG6T4D/gkhMjnlKCDFlgC1ZPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQUfFBaA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQUfFBaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0031C4AF18
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 19:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715111542;
	bh=TglbQ0xJi1zrgKv9B+yXo7WQk8lfHm98cuce+uI7/hc=;
	h=To:Subject:From:Date:From;
	b=UQUfFBaAfo6um/jFdFRxuNcFilfKsBvcqxqoo/IA2W5VZfEPjdwDwPDcJWcB/b0VL
	 mafKGfPea5rJZSNVPjzN5jZzvfbw+k8j4kpmuqFuuLfAHdADFgS9DGVS18GAyaMSY1
	 5gpLzGwg3QN2jVf7GwA6efujI/c+dgiQieGoKxAC8M1FSamuukxRxkp/1UJRKeviwY
	 iW+DpogFho1yepDn8+YvIk59YoCPDar99di21JrxLcaYF/X60WHAK/jm6p3Tq2EgrO
	 RPRqGBYTNGfwEH6HDUpZA59hfya4EatGoBES/3dL5Nm2mdnwvZcEL+2B2nZm90kqHW
	 w4g1cD7By5E8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA738C10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 19:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171511154281.30984.7789812256121767267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ed3881c09f4f41ef4a71bdcfe20a162fe4b63b1f4c2a653bf978f6fb27c6d9c
Date: Tue, 07 May 2024 19:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715111542
