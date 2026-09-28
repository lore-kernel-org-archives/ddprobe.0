Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 763C42F8E93
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790569234; cv=none; b=Hjxob9u+/XqDcZ4vJL75r2odENLMJWVlHunNHXobg545jMVD/xB285Zn8CTlsxOz77gPOsTjzd/osTWGFbCFcXBKWtnRdQImOnIE0qC2XLncEATDmkLZJa2ilkzUX6U+Zy9G+8JMA2oI4Yn5vbdiCaAeRAypVmzCz1h5/YCUeQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790569234; c=relaxed/simple;
	bh=Pjk03i6BOX89xoVdfDBOgxInOOEvAzFcxD2geSBvk2o=;
	h=To:Subject:From:Message-Id:Date; b=cLgXNw3XkbhgRbxWd3SMMZ+1sIJxjCQlepXlidJfG+VDOWypgaUzfTQRo78LjjIcvyZKQFpVhGvbvzXGn367rM+hg5XKW9w+4Vk9NoenD/FfO6uQTt2q3GQwy85K7JbxfijVryVSUYm3QWRiqkkDeoeLMihQSLZd0iRhyDsCEyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOUio3b2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOUio3b2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC2C4C4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790569234;
	bh=Pjk03i6BOX89xoVdfDBOgxInOOEvAzFcxD2geSBvk2o=;
	h=To:Subject:From:Date:From;
	b=qOUio3b2o44zAzvoSkUEwkYfnpa5u6qjeJ8ATe6prkXAeYx7l7w9iz4or5ne9eDow
	 JeeSNN+dq2UAN7mqrQIwpkI50RP8++9+Bqnhkjwc9JvBceoS+6bL8ZtDGaRIK/2TMR
	 x34Bf+4RvidlDMnvvjiB9h32ko+wivfGadlDtFtxWxAFHauNnDprgSYSfuPne0d4U9
	 KK1K+EBvI0zwl53QVL1t4TgDqH2qKAs6/RFdqXss2itZ7qzlKawDouXmPBanYgQTRC
	 FsGjafbj5HGpUEMNpJhfv5sYhWHbLzX8PMhoIirjUqTAdQD+4/o/FoEXDNewVEAC08
	 PNOpti7xwiaGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0BDCC98328
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179056923374.24005.2969986571622691251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05890befc63ca937887dcff07b23c890b84ab2438f3d0735e3424add510b9ca7
Date: Mon, 28 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790569233
