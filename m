Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62AC323FC74
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752089994; cv=none; b=Z7zAvDK8fMVe/2KTrS1XUo9XooX75/ZwBTvBQfmqQi15md6CCX6hASRsIqyPLqF+3jmVk1Y8D9DdpzB+YRTTVcC0K0+LhivlGbKf1sBr/zVRqPTj066KjdlMxLnlIKsuOm/YZcpXJ2ws62mJaUo/JfWwfU073RyhKXCb50KDiwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752089994; c=relaxed/simple;
	bh=Lioe5OaAYq72hBXYXJInIntimxaeKUfxEE8vpf5RDb8=;
	h=To:Subject:From:Message-Id:Date; b=QCK4CMQNXxgSyrkFtAE4s72+oiACKU+lsMzGG3LKigrwFZdxjao6XhdWAnsPONQ0QZM+qr9MshhRU9OG54lOgRejJwcnv+H7Xmu4E4gp05zTFusBPUyEe7t7UComlDrDiHx5P9vt/5A1NlApbWyfF7+iKr5nnNle7r+9jF8rKZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CoSiMp2q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CoSiMp2q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0262C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752089993;
	bh=Lioe5OaAYq72hBXYXJInIntimxaeKUfxEE8vpf5RDb8=;
	h=To:Subject:From:Date:From;
	b=CoSiMp2quy4/9aZkhevT+AGe5hjQG0R2e8KbM292N2zFSjbwt7SqVBzlvhP1DeF4X
	 NM+6ayFce7TA4fKdfKiMya4XCUXEE+eqqOLFidO0XCZezDCp9+Hsca4a6mHispeRI9
	 D3NC3kwECmS8kSb1XsyHbxT1o0Y6fVK0dORrbWLK9ynqxGrBPicvbXQbvdhLUyYt2t
	 uNA5Xu2QQFP0/lwDTVqvfhq786JNIXeVLz01o22PhexrQHdj7MnvcOam9YVO7wh/Db
	 flP+Qo02i2QlA1v2VOKWszJc+fKdm7vXNOMXHYwPUs7JuisMn1pf4vpDWyB6wNScBK
	 zBuAMEjJAXWcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6A5C83F0A
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175208999357.5919.14621448446321934686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c4fdb7ee714ad0b1dbed09f8a12fab62f024418c07b4de475184413eec483a9
Date: Wed, 09 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752089993
