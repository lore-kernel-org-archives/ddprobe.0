Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2851E1E0DD9
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757863194; cv=none; b=TUvj0xURbOLKVZQrGqLH3XTPudDmug3PUN9YiCskJPgBiJxet0E1k9NXWnhNjzCtGw8rEBQJEmvx6Q6hK4/y55vFR+j2qTE3BTy7zzQ0SxR417m9FZnbt5O5OkqPM/XE+5LRbMBufztZiSdQQs363G/zqLPe0qvmA3+KzQfiX24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757863194; c=relaxed/simple;
	bh=ZniKR/d3P+wQlK0xQ/o8DLzRJ9nSP86sF3DcBrwF7yw=;
	h=To:Subject:From:Message-Id:Date; b=peqkdbwT2TpeoFft0hRbYhcb+IG/b/WINXeMGcKbZsKyWDNu/FOMamizKtHuNnQJ1xemMpkHDbFfrba4Uj7t0+0ksDf3323QCNSZtz3pEBO8M+YzxDU2nqH/f4+2+GcZM/4rEZSe+aB7RvRqDmb8B6KBwmv0gkJT3JD22dsywn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJPLiE+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJPLiE+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC99C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757863193;
	bh=ZniKR/d3P+wQlK0xQ/o8DLzRJ9nSP86sF3DcBrwF7yw=;
	h=To:Subject:From:Date:From;
	b=mJPLiE+E1o1Xuk9JsK8nIG935oGW35BDlT/7ZBSXjM4K80NrcE4N2cwS1BjzsopnL
	 zL9kOPlU5OXMzTB/GDh+6EYFoHQkdxelntnxCJqZtE1qBqIt8W9F3mlFcEtvo2GBlN
	 kDPPxh79MQYoYbOuyrOCkRx5/u5FNAHWdn7HhEHumx5oM8e4lhWyTGi6GVmLnk1yWr
	 Ya09vLbh+QNsMjWJ/hzmrGd2k7arwByzZbunoV32xVBFUrcYVugTWQltDGkVLzjN2D
	 ZCU/jWDN6eKpoDG6nFsSyCpKnuYAY5uteN/ROgzRdXytsuPLB/wHu9Xh/N+vVmeIO1
	 huATMUjU/31RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E7F4CA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175786319357.13132.11590741401091741724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ca364eba12411d63b9becc124c03e54c7f605bab6d16eb2953ad818328e442d
Date: Sun, 14 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757863193
