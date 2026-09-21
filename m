Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4506531E82E
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789969234; cv=none; b=Y8KDLW3Q/I1WiKNIVVtTTyDrRyUxiCFetsGMO9tWTi8jp+N4vusMc6cTj8W6u0sH98ZmpW5ruOoyzz9eZmfu5VXd1iUkqOrI7lNsSPBlOLoJazlo8B6hQ6s0RQUtK868/oO79XldYPoFzCUFDE2Rl7V3lxWnFhc3DePS7oHyqK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789969234; c=relaxed/simple;
	bh=uL+nL16m9Vr+GTdWCpQopiJuLrM1Gv1HW4HWjgz44vI=;
	h=To:Subject:From:Message-Id:Date; b=esgYTeO3pYwpWNOj/x3OYRU2PXYvI3UX7ZpDT2A24ZxxnzkcC6V0EjP32qOkndxk6xW21LChlFRoBM2DoDJMTScSzAwzFDu9JhAPZZuj3qaCYctbJzz3o96b+Pp0O4L1pJroeiSIZANj8Q7gJvopgHnGs9UUy9Irmt/moQ4cqPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AP6jnP0O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AP6jnP0O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF0BC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789969233;
	bh=uL+nL16m9Vr+GTdWCpQopiJuLrM1Gv1HW4HWjgz44vI=;
	h=To:Subject:From:Date:From;
	b=AP6jnP0O3QvO99XU3qGFKMbAthpAE+WP2+TsrSsdiE0eKo91NAs0x996Sxla5t1a4
	 2mLoIkA5FMd+k+D98IxitzJkReF5fpKiMs2hoMgVVju2zYz/pckslMvtgFtDgmq2ck
	 LwhcnOY4T5YnNazeRvK+yVLPiFsDqOvOhmLwX3KH7hR+HvePq+1m45Bt/FDo9QoBoi
	 BOxfDNk9zRg4vjn5wj9MJlf9WXym955hRe+IRYp37m6JfCrAKBt/pSi4rLEAU17hY/
	 zTmCuacxzleYzBALZ2d+n0ACqIB+CFACy+PY365Vx+gAKqIsfBM2z22FS7w2y+MXL0
	 u+V7EoqmnFIng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B85CFC982DA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178996923374.712.7034377976086171573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8be8aef9e6539e5948a0fa3ad5a457e7141befa8505818461a90e66fa4cd765a
Date: Mon, 21 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789969233
