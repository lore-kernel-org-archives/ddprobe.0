Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B60D3890F7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 05:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784181514; cv=none; b=O7uaj//xPvE497VqOF/Dxf5/CT/lu0Qsawf4L/eh05dAt2wvrW/sdpmddhD53WO+j2C/qQNhGB0iZBIjNOXyQPkJD0I7pzx00UFXwSYnxibhiHQb29vjadPMDPNuw0zUpTE6kMaBJHn/zWkSyRdgPwMcToWHk5QspzsdPRExSME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784181514; c=relaxed/simple;
	bh=+c71v+IEKpfyg5NmPmU+kmBOE5pPPSjTg2IEPKue2bA=;
	h=To:Subject:From:Message-Id:Date; b=kWe7NoEbd1DFB7Oj9ufQds2trE9aGgKrFE30HrATj5YgIsE/RXM3EPYp/yXMM8vYGSzqUXBOeGIZZdHTIf8Y55ypkJJgIOQ2+xqy3yGdU0BYk3e2QI1U/mMXozyhvnR2LRii+qI/4IAVYw70IULK9uFN5a67Ijw7g20lU+PXXOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=svruMMM6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="svruMMM6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAD0C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784181513;
	bh=+c71v+IEKpfyg5NmPmU+kmBOE5pPPSjTg2IEPKue2bA=;
	h=To:Subject:From:Date:From;
	b=svruMMM60OnpiX3SD8IKvzPatBFsz3Ufv9NH59pEnOg+9LqUQ7ztuPmVS9Ps4NCvk
	 OtUViAf/R0O6z29+1XPhSHWK4uqV/L+E6BAiWubFFyLxI62r/KWM/j3C0Mc/w/wX4O
	 wTI8anYRBnBwhASwtgz6leMTso8AOu+VlSPcG7w79vB/CERchhfnLg1mCpO7rRpg9G
	 eqwQkg3Q+gzil2FSZX0uPiH58GlhMAigTSo+HImmbxEPWWq5hjjjl93GqYtZcZX1HH
	 4TMhRAguRD+5oT0+rYccNruJm3F91rn45pFIyLY4NJgAHKLAmV0u5tk9CCsyhw5Fpx
	 4UAhytPmBq3vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA8BC44510
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 05:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178418151368.18482.6747753315604284315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3515383db51906e493ceb0db793091456453d5de8859d1ffb4e6b54770255a60
Date: Thu, 16 Jul 2026 05:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784181513
