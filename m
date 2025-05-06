Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3991B1ACEDF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746568194; cv=none; b=qXzdAwaaTwwEUE+NsLq+CPUDxxGtnNHqhntutgts/k68t60vALOCVaKqonv/q8pBpxfCXWj3/ENoHn3QxmABpfvp3YZtggZTqDk9ooLXZI2deeqiJM5As74HqxO9JNuHyqCpvHyFlaM1uT4eJkwrNhiVVBKHR5naHUgFEavwYAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746568194; c=relaxed/simple;
	bh=5XyGFiZvwmbLbzCiTA6fQrcfExIgp0i1saW0irKc1iw=;
	h=To:Subject:From:Message-Id:Date; b=HQ3Xlxe3jBPMR2K9LRzLZLphwpUg7xdsNlrQ4QBrs579hNEHQLgIJw6tj+MnBSRBtcr/kVzHefK70tHsWy6dJKlnsDD0AxXeTlbaTl8eeWBtw7I5pyxWiBdc8MbmXpoUFF7TfZ7AdexkCJf53cZFvRL4U25hYNXfANVXhvBXW6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eKQACxkT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eKQACxkT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2480C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746568193;
	bh=5XyGFiZvwmbLbzCiTA6fQrcfExIgp0i1saW0irKc1iw=;
	h=To:Subject:From:Date:From;
	b=eKQACxkTYDGUuu6+N+uFzKT/eSbICemi2aj2L6uypkPAGoYe0TgyDMDctbAHpT3JS
	 mToF8/1F1B639bAB6EjH3Bpl+qUMAuuGPZE8ymEyTdoaFjKE5laXSBMLoOapH2Bn5R
	 CIGCbuWXS381HGdK+Alzhf0lTHHJKd+PtgdvcFlPq/I2mNMHyEzZB6nLgSCxpUyW05
	 UepavZkDaawE14sujq26D6pwkq+MGzX4R9LJ669M+lCBryQ/1B6I/2QKTeBWGmtRUp
	 XsgdA8qk0PFV71/lIcktEU4YURYVkhn6otlNx3PIr0eVP5ACiWU6E3g2k/Qx4mNcnW
	 1iH6LfC1oNGYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE34C3ABBE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174656819357.30103.6902100772598345679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58eebc24d7b962b5614ed899556b2fb027bcfac66a500bb5bba91cf6c3daf11f
Date: Tue, 06 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746568193
