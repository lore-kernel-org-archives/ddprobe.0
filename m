Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CBF1274FD1
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 22:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782341254; cv=none; b=EH1C+td+siw7jOdh165lq6jykIpi6WaDIqX0St9l3TApfs2ex04HqivHJZ3DFq8mvPQlPcX/sT4HgiT5oGp3ZQh2AptHz5Z3aujiWwp0PW5e/WxRaAe/28kyd/G46UtE3yVauhEpy+s1YNu32foN3rVyoqifgx5PmkZ96BH1CiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782341254; c=relaxed/simple;
	bh=vQdgVDLsr8s0Ju0/gPhx0MXx/KilIY4xa+lcVZ4iF0M=;
	h=To:Subject:From:Message-Id:Date; b=SRSY+TCEz405dkrFWwkQFQsQdAPzpkVCapKgd4E4TaCx7FmZmoObzDi7vDzBfAVlZb3prKkJskY+0limfCUv7ZFUetj348VJX2HYbNMWQo4cyiQYPB3KepFGUQ/4zuMFvXliXtuCyIlz/KbxdaX8E9GLFtnEkZE/PhN2YxiaiiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+w69J46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+w69J46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D9FC19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782341253;
	bh=vQdgVDLsr8s0Ju0/gPhx0MXx/KilIY4xa+lcVZ4iF0M=;
	h=To:Subject:From:Date:From;
	b=b+w69J466sdgVAncntR37OLSCtNxRH+NJBwr2s1JJYPYXvcvTX/6SFdrr1M25Ayvm
	 9lHx6bMHjnFWdtA90lhG/HQJqneD8n+eP+Ae5gOkMJIr19Za4XM2H6n5qnSr8zHSIJ
	 C1BIzFH/dU54s/4H93lWs607heU4EAy84WIGSMRQc9w1DI8anhyo1Nta1bPPndcRI5
	 7l0upRwFfiwEjqZ1/sSiNLLxEqBi18CG5NvxybY2lWzyeJ7gO6F9jiqrUz0uQVz9Ab
	 c7o2pRh+oquSna0t1bTVbBUnjCt4bUrsM7L9VMvxIHpMAuAHit+1vp1DKjjpUI3Gs5
	 gAxEZ1kXjng0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5A3CDE000
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178234125370.28809.14606490762430028921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36d4805115c10c3f316dff569cf157bd575115aff034d2a708ab6269c1280c0b
Date: Wed, 24 Jun 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782341253
