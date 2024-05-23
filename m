Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500438467
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 01:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716426803; cv=none; b=K/9DbQBJpllam4c6Xlw43pO4KIjK4lcca07Ep52F7S9McOf9O29LilUIt+eF9SQGW9S3ZEHrMfQeF1ehCSWypwomjjK5obB/xfOiD354IKq0G2oTU7rfAYdfUPlo9sjIffqQz0SCw4hWYxiSRQAEg0EfiMOqggpQGziS5zrwJ0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716426803; c=relaxed/simple;
	bh=C4WjgXfGEKL341JA/4WgiMXkluN28oims8HNltIKvaE=;
	h=To:Subject:From:Message-Id:Date; b=u2MDbdL/HmQUO/BCAFEUZdRBtsWt7tc0Rg525ZPJmdJlhcVvG4jDk2zJD7Lm67DLITsAkNSWpxEyf3oL1BBFVG6Ag1oKxI1TZMMNaYoAnVTWI2jqWlIJg7tMxjrf6SGl57QTpQDYZgv0cjX7OQ0smuNAOvy8GW0AdmhMhTcIYzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bT5fKw19; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bT5fKw19"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3C03C2BD11
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 01:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716426802;
	bh=C4WjgXfGEKL341JA/4WgiMXkluN28oims8HNltIKvaE=;
	h=To:Subject:From:Date:From;
	b=bT5fKw19YcH8xqWxqvr0NfIfLtqpbvdy2bXcQhMcmfy3x1egvSV8jQA13iDjWWPvh
	 JdwgGnhP0Hl/Mc0uePJvyXedyF02asR78YjQgeNBs8xqJbT2zc+jvtBXq3hQNE3CmU
	 PNVgCc2YuYD1OAQSbqAHqhvTp1XSczG5MC8Z/8XhbCaj13WYCBC36SzyNjQgs1FSMf
	 F2x12FOjOLHtg+XvrzeSvh4a/7UdsiulYHVG6MlHzwx7nnvmjFkfzPzGjpWOwJdoTL
	 EY0kJXfGpmfU+Qg7LW+Zr86l44us5Eemtls8CgipwRqUooME1KOB3JgJL+gQjAXuJU
	 STMPuFpJbUqog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB9EAC25B78
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 01:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171642680279.29984.7251761354280565666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71e3b1844d7cb934dad4568a578896c99cde1c1461991bfc95f41a93b48b44e1
Date: Thu, 23 May 2024 01:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716426802
