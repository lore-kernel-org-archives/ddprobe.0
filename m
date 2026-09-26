Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AB12AEE1
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790422234; cv=none; b=UGSSW1h9yBVjzjBHABrRHSXvtDPpUSRbt1CGpMudbV094ms8IMT7SPEtM9Va+aFPdm4AXpEgh8g8flXZRa7AMF9zTO1ge0sr6SNQasm222ia6fahG7xkXqjFSBFn5WLLGgqGA4V/9KuiXjs6iSyTkIuYDhbMK88S8uae+ln4PKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790422234; c=relaxed/simple;
	bh=FuLYNc33OhSjVPwNFK0m3+LwMkLgvapzQTJMevYgj5c=;
	h=To:Subject:From:Message-Id:Date; b=kyD5ynl0MJjRhBPYiAr9AD0qTiDIikivwwTkn+YTy/Gm1TGlCClMVNrFSTmojErB5R4VkdrQWp70wro+ccLAaxUR9851tSG4+IGFtPVxye1/HpC1nBoQj+dDc/UR79P47cVbrkxyPymh5vd0mg7dAI15UBrZ+ozA4QFfanOh6vA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dxWAGokm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxWAGokm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CC6C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790422233;
	bh=FuLYNc33OhSjVPwNFK0m3+LwMkLgvapzQTJMevYgj5c=;
	h=To:Subject:From:Date:From;
	b=dxWAGokm8rZms6DjSz3eIoZ2kZQ/nzOq2q45y4lIc/ljhr2F9dLxPykw3ZmoKgZZ9
	 N/vL88isClOQn01H+KC6OsvbbeuC0SCmy/VKLi52LNCR3o9FQKFk9VcO8fqv6BIR9W
	 WTTnZ36Tk1tPyk6Ok2OqaoUQioc+cunhRWwAXTfBGJhBUFF5Vh8S44x0kMXYYpR9yH
	 qXxqWfamm6Jtt2b6bepm34PPDHNQth/ZuvYQM5rV3zAV+RamxUD18CoVF3XLSVjs/8
	 ZFYztXhpyA4U+E5Vo0HYxizbKDoStem7yg1UnOEs53APwvVjm5NJgMOeaGwclObwn6
	 BqLO4jC947dBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA46DC98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179042223368.25291.12890652371698896239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00879805e2ea4961cbadbf302f4f99c934ba8896059c8da55a4defc0d4ea7ce4
Date: Sat, 26 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790422233
