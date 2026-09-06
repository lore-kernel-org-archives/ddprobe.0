Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5DC28690
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788681034; cv=none; b=MvxE9TtrSN4k8livV67C0V43YLUuQVuPExyEQ16Cp6gritJReWvYUUOsSTuEzYd4qgJCeK2T8lVDVLLDK7+RyhtShcSNyV1DWsEn7xL6FM9rUljvaazrpKhmVUM3sVL4S73Jbp/H2YxeiIRlRLwswaTT5vIaZpIpjSTy/CFT0h8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788681034; c=relaxed/simple;
	bh=vL/X1MST2VA+wEFPNDbG+6I6OOHDmZ9mc/OIA4CW0og=;
	h=To:Subject:From:Message-Id:Date; b=SojLfhgxeZp+0Oo4O+H99NtHfPikqKB2VusCMjvGGeBuyqVijVim9EhJW4LXYhPKifM/clq2niyJOYalV9B6aCttzt6BHp+szuRStuzmk8aINIKTkWtKkb7rkwU46KX2g2mOwdYlC5h3xaA9ADjAGn8Q6CkzfbF1tmtmEaFvzAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjyed5jD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjyed5jD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3995C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788681033;
	bh=vL/X1MST2VA+wEFPNDbG+6I6OOHDmZ9mc/OIA4CW0og=;
	h=To:Subject:From:Date:From;
	b=pjyed5jDAShajc5oXbe7BWkckps1iWWtYS+cCDQUnUqfOa0yJ9wfX65abVRUsaKRi
	 3Ssqs7OmLmWoWua+JXHxnm8MrOsNYMwKBZHmQ3dkGJySq3RuWiJ4BqzyYUHYCEpze1
	 l2ZpSR3rN5C01M89jQNr+onJwiqg821dR9UKTAZ+7bcKGu55otBEqn8WJdVoupB8bt
	 /AIIVOQiZJ6XxgBAAHefNZKoORj54Mdja8VTCS/oG20P9LMlMNRkmGa45WKEwX4r85
	 KaKcunvfGp13I0TO+dHUEC2DGQfo9PmTkmKYoYxD677XzPmrZ54mODowep/gcyT02/
	 N1hFMMqMhHBhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE629C79F85
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178868103369.18508.11445682290593653390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2bb4397fffc9b4bf878fea920f2400f85e96434a434013d2f058aa66ccc98c6
Date: Sun, 06 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788681033
