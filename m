Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F402E223339
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771263294; cv=none; b=bFFgZki7Xy/rh+RhqIwog2Xnam6Vm7c/ygLRPuwSo1FtQmOLCk2fa7Y2YEy4wq9xvmI8AhlTGgVclwpjpjFUlN6+jgoUKxPUwocRsFy+vrH0/bfb0Zfb0R4bBIfwNJOIcN0FQHvBUOgNinuBoVvHn7x2ly2Tsgn3/Sx38sfTXHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771263294; c=relaxed/simple;
	bh=A8ZIbNQNQE9qI6BB4AV7huihLSwo3dMj2KH1/vDkbKg=;
	h=To:Subject:From:Message-Id:Date; b=KURyJWJ9cOEKTgSjqUQR727yqATfD3ytPQa31aRQjo4pn+3Hzb3oJzNUjTFWkhCfssEbYmoHUA/qzEHk5jlVSfmcBr6eAVp/xJ+j9Qfuta0JUYMp7kBwHrWS++qQani8szHKNnrRA+3VZ2GzFKHqVIHNDrthLoLg0chZFODlNZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Egj2YOii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Egj2YOii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38E5C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771263293;
	bh=A8ZIbNQNQE9qI6BB4AV7huihLSwo3dMj2KH1/vDkbKg=;
	h=To:Subject:From:Date:From;
	b=Egj2YOiio8sloSFv9HafkCbQ9PqSwZ5ShO6FXEPo4uO7H0o9CtLEfjnOQHrTJ/mzY
	 gTJ9g5uyByPgY3jd/+XUM49isfCudpzhlNp+g/ylwAFw0uoz4sJVqwyVXfwJz1WRRV
	 3AfoYqCDf2hjX0IHy2BDYVHgdqQP4+PSxV9TWgjKylUzA3YpiSQ18TH+7+ZZBx1Wvf
	 uBR1Bo14peJbPAEdsUZ4yhREYed0Lg54vJH1vN3KmtXRqYMQUv0PjNqS8y+4VeNB8G
	 UfycdvU0yf0xuMkYUjPF0WN4K4U3mnUFlG23E7L2HgmVsR/rxkyXPdz8ySNenTICh2
	 lnpzPbEK1tGsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930DEEF5872
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177126329359.20808.13091920527664322091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a67a6cb55274558ad4ff624d4b5453eff97c612fccdb1568e7eac71a57c9281c
Date: Mon, 16 Feb 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771263293
