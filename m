Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BFC23184A
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766558634; cv=none; b=bOHt5AOX2Q5W/lGLp/2sOkbLR0WBsxtKtbxmqSkVtOkXsHHnnZpd5ttTNJvaCwMb5mgj8qfGDV6CH602Hs7ddSUTEvtP3W9Laa3Fv6fiIa951YGIVwwVqVDZCL/Xffcw7b2M/uiG1A20ubQSHwJfquBZmNuk7IeoXwQidphXJfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766558634; c=relaxed/simple;
	bh=48UebKhteaY9Z0oVGjUqXTYLfLsiJA2wYe4ab4zJ+a0=;
	h=To:Subject:From:Message-Id:Date; b=g0MtaClvJO3ZFA/ApUVEAvizecDv+SM7Jc1VyxjQK8XG+SxbGo6YF5AHNL9UXst9vOaLtp0Km5s5GIFeU2zW8Wpbcqd5lX1OMP3dSEKy7KRH1jeAD/yB0a9eS3updEZS9zTB+v/vb555+RPWEvXvAKFi9/D0gSZddrzQT4/fMFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VB+r6iS5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VB+r6iS5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A250DC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766558633;
	bh=48UebKhteaY9Z0oVGjUqXTYLfLsiJA2wYe4ab4zJ+a0=;
	h=To:Subject:From:Date:From;
	b=VB+r6iS5V7LN0QWayZ3avQXI2+qeXQXV3eEzl6IpN+75wyk/BpKurqan9Ly1Wk+cc
	 I+bgeriBdGdxZhwE1UGoND6V9S8kGCQ0dWrRhj7Hr5qHSRcjrNF5Lo1JWTIH9KbZyB
	 jWeRYKeo5p1SdZcrSDzOzR1fM10We7PXL7o9xvwCrAk23OH/nYIBPOdwwehSia3I1V
	 IVRhc+GpBTYvJKJgJr/d31mWX35BRnu327IcyBei3nIkGWefPBTd7M2Dp/DU4fAOwX
	 9hhuuNiMTuLij0WNWv0sXZkbbD5pvSH+F8fwM3Yz3BjUXa70SsP5PFqbJQBjuFFkCM
	 f7GYuV/RgeH+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920BBE7491B
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176655863357.19971.8259984096213084262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb8d405ccca443171c5e2c9ca04a46381b1447fe9768ccf279c637a8ac8bb8c3
Date: Wed, 24 Dec 2025 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766558633
