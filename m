Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478D1171CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722201954; cv=none; b=LxU64/LtKibqblIeQCjYTJ+N4+qVZ5n60YLMvJOOVqBK4mRa+W1pkfLnpdxJaklq2h9Ob8ec6Q3XXbxsnx/HrXAPmH60EHa9AjTafwDu7higv1JniYWpwQFsO47xp36vZDEKQNnnyK5ETJkpBsowNura5lzv0Qy/axRZDat5tRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722201954; c=relaxed/simple;
	bh=SaCBAsA+4HTEvxVmVXPWT0SsiMW1vuLTI3fWgIlAihU=;
	h=To:Subject:From:Message-Id:Date; b=k/cpd9YQy93Al1bdtpSLQiHDqWJO61KoPtfWKyRvlI8pO0FCirvIko6JyX6QMdfxPuJ7mPvOJqIb4Op+zespberMOg2IcIWrt8rW/s7tidOBH/PfRl4I5fAdnp2ZgdkgrcAc9GBZ3AXJG+0KYydMe7jNthzZrzIRfbQ4p5RTn1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUPq8nhe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUPq8nhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6740C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722201953;
	bh=SaCBAsA+4HTEvxVmVXPWT0SsiMW1vuLTI3fWgIlAihU=;
	h=To:Subject:From:Date:From;
	b=kUPq8nheX3L0Ba5jS2NZItDQBY0gcwCK4NoseJt1RF3Dj0ifF65zScNtSOKGunAtb
	 x/FVZCY2gh1Xt3YDyHem/d4Je1e0Ojfqtmy4brjv4cFL/oKm2tpADv+CR3bwzspMoC
	 hLay94q9nGj+t6LNKZ9rKzz+Rc2CH8EAosSa/5ckviPi+L4hMB7QJ4lyE6GJzID7JP
	 UnovEul5Ody6PFuADQbXDq8UXv1Nifoi5V8VymyNRjPIP1KXkhJjM8uJcw8rBMYZ0U
	 fsg+gVKEEpolbMUgF47YJl+gMrUZcw7g4c9NM8Idjf+504xcn6p3H/lA7ZfL6FcnYG
	 Nv73a4WUfqCvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F908C3DA64
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172220195361.25727.3373167158443325859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e61966ff95b8c86a0da748d6787750d1bbaa8c0d5e88d08f4a234964cebd696f
Date: Sun, 28 Jul 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722201953
