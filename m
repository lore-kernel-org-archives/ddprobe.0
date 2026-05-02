Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2767E2DF13E
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777724854; cv=none; b=OVeGhzNqq5pY32Hvmbk7kYDe3+kKQQmXxR0+DeUbxb1jdAHkJ1dna323ml7A80hr1bLV1/TBGkQe9ssTYDpAgX/NxxjSjYZsUtbLNOmbH5SzZphWfZkLfQ9dzvb+gUU6ZuDI1MlT5vkrFzasfJI3Z/RKEZ1+2yRuGK0EOcdneY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777724854; c=relaxed/simple;
	bh=7/SKeeYqaJ0US2N6CTzvnpPmyJHMF5V5AnUZI824nUk=;
	h=To:Subject:From:Message-Id:Date; b=rUGRLbkSq+srwlUdS/FuPGl1v+HNrBHWN01a/H/D6Q0JS5axI7DUdDoUQvmHk6hQwzWfyXDQ2bPD/4ToyOm2sta4EdJcHjnFf3SsRNxm9e2UZq8noFFlXC0wg1C63z3duhOs9a7XUkq07ZJZ+9voQVIsfowuOop4PlzJKAILs8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZsHQxL0T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZsHQxL0T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF32AC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777724853;
	bh=7/SKeeYqaJ0US2N6CTzvnpPmyJHMF5V5AnUZI824nUk=;
	h=To:Subject:From:Date:From;
	b=ZsHQxL0T3QJE4+PZ6Do0Jp1Z9RWHvE9GAKGzQRzEGlhUgbGZtIHO4KTAvBHzK+w8w
	 iq+nOONyf1MSUR2VYJVxck7VYksxxpJvi/pUE9b7DessCZx9+mQ/O2iEiJoV13BUEc
	 /DFQmbSQoP/+EraVj3OTU8wkvmmRP7ft+hQPn7HRL3glhwETLpUjtJBnYe2BKWJwUK
	 8PfCss04wTcH5toF+UpQyEnJshsv2Hc7fTgLfzNySIOG0BzFNwiAJBVm9I2pzAidLl
	 jamEeoPisG443SiaaDsYvPcYySL2HKlqBXe9jwXbs4Ev/gc7d/UlyCkbWqRtNLTMZ6
	 YW6UrUPLG3CEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0469CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177772485368.9163.3590483441857153551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b03876b2b04d4aa2b9cedffd4f51f40f21e497361f6e198256e9503f4cf19c
Date: Sat, 02 May 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777724853
