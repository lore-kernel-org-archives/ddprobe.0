Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6BD1D5CE8
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760623794; cv=none; b=QccLvRHDAH90dsC8UvFHR0F6lP3vhLlEmm1pSNxbtPNU3Bd0YW0OBkh5eVSV5eL7fAMsN3g9sVXG4yEnMZt6f20jPG2wUloRgfsSSU6Vr0Hy6yeNhNE+Bs5TgShFI41tu+xlHc4qAW6sprFj9x/dMK7P7NsTkPO4sg4FZ7uxbsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760623794; c=relaxed/simple;
	bh=5xs+VX9GNq4q0ncn79OSYDk1ujq5ltInOFyoP4hU1sM=;
	h=To:Subject:From:Message-Id:Date; b=S48L2TFHK8Vrpzfx+HI7p/CjNId+soxAF7NswKMQM38MgYGoAtVuEHWs89IzS0MzVfPqt9Vplo4CIQLb9w9mwVa9Rucga2EUJYuz7eMuQ94ze4qgbN3G1Hckqs1f7DLjzJMzxYihafLrtGcFaoT6COtQdfI+BuP8CN2ihxy3Mrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iv7wQGG7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iv7wQGG7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A502AC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760623793;
	bh=5xs+VX9GNq4q0ncn79OSYDk1ujq5ltInOFyoP4hU1sM=;
	h=To:Subject:From:Date:From;
	b=iv7wQGG7H3JKt1SfiITx9ctyClu78Cb3+tMc1/qJKOb+hMw3rjbUyy/z9Awm5MLHO
	 FH5vmzzJARmJpI3N/kzi+U4IdtfwdXHtVTt08q/9m4bTzSba081nJzc/FyUFACZHEU
	 bvKSyDhEk0pwGW5wJ1Ni3UjD2WMn6xWYxMBXLItGnPsN62cbTWx6Xdj+Xnv8OZ0XHI
	 n5pzfYxEZ6HuoxunV8wxTBFAsjYI4g6IqAz5HQ7Axtvhx8l3Q64+k8BqBrr/pMuPvD
	 jrkoGq95cSjtIqS650oZ94gvkDmFnxIwxn9Hb9+FxEJg7op0DjW40D3hfBTfwqqlu/
	 AU5gVD7sNXpsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9235DCCD195
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176062379358.15923.16398062177283605463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab1a35881ed4ee4d923053c41f019e1d7a97b4634b0bfe28d1d339392dddfcd5
Date: Thu, 16 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760623793
