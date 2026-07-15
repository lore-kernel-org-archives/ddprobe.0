Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4944E26738C
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 21:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784149714; cv=none; b=E6U5uhnXvxrSrYv/Tw0RvA23NU5qCuLQWVB2yWltnb5NggaSh332zjCPpQpw0GGSTt18bEloWI8ihSGtehlm9ls2djqeE+FhiHWeCrvnJOx/3oXBS89sdP/QGlWVg70cp/HDo91Frngp1Fo6hcvl9PdW1/m/p56ddknc5S+OdDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784149714; c=relaxed/simple;
	bh=SJ8sD/vrplW2qgc/0LX5FpstrVyMzaela000Wri9iMM=;
	h=To:Subject:From:Message-Id:Date; b=TRq/4YSOj1iy59+3Vx4bURGN34YMPKDa3rywP0C4q0vsGsdGFfxZ8tn06Y4pjDdUx5JzSkF8CR7N2pCwAcmHwE9o5d+TKCR3kwVNHcZsiJ4RG7VkAB4/LRvfFsWPbNzetm9qnsj+K9SV4BeHRaPeo2+Qa09soK+ksdE5bo+KAGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nmqwdUYO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nmqwdUYO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7E1C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 21:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784149713;
	bh=SJ8sD/vrplW2qgc/0LX5FpstrVyMzaela000Wri9iMM=;
	h=To:Subject:From:Date:From;
	b=nmqwdUYOdnVSzcfPkKQVrXnbfKt+OFRsT5i/8p7t8E1lo0DcO2l0Bu145d/HauX/U
	 HJbyOEziUzKYzjbpKu33O+dvMlkt0DPHkIc95Y3RWUuoPExgbWVwb7U99B/xNNON7y
	 0zNXBIjnuWRGHE6Bs9k7PGlNFUVokZixCI+VqWr/b/BQxNgLOny+cbLGLSNfA3YlJM
	 TLXi1FGUJMC9Bpdz6fqisJ64XqWIXeyrEnkPvCxOqcgRFBQVhG+VHNTPj673omYT0G
	 pKe/EbUPZPjnJMOZzPaDADMO9XbjdCVsA4nWHjTdvGgu0WnlCgCCJFSXF4kXwg543X
	 dlp3Pv+m6u03A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92F8C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 21:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178414971368.27601.8034746692907736763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cbc0cc93a9d98098e7213654521ec16103a4a8f07c8a3e5be6456558210e770
Date: Wed, 15 Jul 2026 21:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784149713
