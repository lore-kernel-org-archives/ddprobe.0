Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED08B1A6838
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774076694; cv=none; b=eK/NX7hm23L1UcRKghrlQGI+kt44VLP4ZddR8ob679EKdhr0bbLesNKrnfY3v90Fsn4L4M/zhDP4BtTPKsvkC0IBpotY7HXdeFxrT3AKC/jfzczIeocHfKKUCxn4H1B25vSOupHzG24qitZfMwgYS7leAaV3dXhptBkV5K8e2ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774076694; c=relaxed/simple;
	bh=tkfDSLJaPSCN4bL86dUFIW9xVkIEaRSI9cyN2cuvcMQ=;
	h=To:Subject:From:Message-Id:Date; b=EeqArPYPMULlW5XF3+ozV4UsC5fu/M3T4uuu743GFFgRzIWP7MemZPUiKI1VbzjY0C8KKcf3tSPL45g/jt4fKAP2JbZpLkgXksVfSN6OeUb7Q77cdGe4OvQna+agPakXOEduy7mngRUxb0F12Z3GKyDOk810DGwChtIHI5zt3FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tuu6mit6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tuu6mit6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1B6C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774076693;
	bh=tkfDSLJaPSCN4bL86dUFIW9xVkIEaRSI9cyN2cuvcMQ=;
	h=To:Subject:From:Date:From;
	b=tuu6mit6leOamrEWXsAbDUBTrZW9b1WTwwJOqSNF93qee4FEy67yih2pfH4ybsB86
	 bztW7wjhddI1phqRjwMBgIKG826wndiQLY2AfV48b5X3ueRBaaED1ftuoWtQ6HUywK
	 Al3pzf5OEl2azo7/5TitQhF/LVG+5atSL6hO49dORMj7oRSIcPS9sWscOkTin+Xvno
	 TBvm+QRZUgRQksOkDeFoDcGyEVxZugy3ImWoq25Cxhiv0B6Sifa0jivZFpytJnrHGm
	 EvVeWYhd1psJmSL7qi+Ena40O3tQyQNpyR2pdzmywjTB9KJPOE42pmuciEJX4nWzj4
	 iRVfU4+CmbNNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90672108B8FF
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177407669358.1588.3297441098388714404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e1f5a2befcaa3c444a72af9540125ec280e30224c9ef2b1f66150c24a740bd7
Date: Sat, 21 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774076693
