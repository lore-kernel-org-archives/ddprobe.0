Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF97133C50D
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 14:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763647914; cv=none; b=VOwUe7ziJBhzI3taBr8AuiPtHtLfSaUbIQJ3KvZNknOzLkcKLu5RwRQuwsZqqBckMx0lW2gduL276udVVG+ctXaSAH6gkycYwuklvUuz5xCTrWyutLi0KMGnVXAKeQIW3fJZ9svgGamSuhQm9MGhg6HmpRPp8X+EJbki+qfvp2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763647914; c=relaxed/simple;
	bh=cpw98a696KmOCJ9z75PkeLhlXeZ6dq+8uFocV2cMDpU=;
	h=To:Subject:From:Message-Id:Date; b=XBfLAIcMZxaFLdAgBwsa4AjLBlpTKiSwTLFwZHfV4FVC6eEB1O7LJ/Fsqr4VjatQpbQ1hdUAhQnnFnMwcj9YsumQiUvguRLmQTOQmcP4WKBRvhhlRyWCkZ55D6AJLfo0LM2JPmZEmogdCYek+FDMaTwB/FC9Ay5mexihO+u7Qyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJiz2JQD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJiz2JQD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B03C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 14:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763647913;
	bh=cpw98a696KmOCJ9z75PkeLhlXeZ6dq+8uFocV2cMDpU=;
	h=To:Subject:From:Date:From;
	b=GJiz2JQDXEs/Ckp8IglEH+/b2m3V9LH59fwUIViw9Vv8uO28T2eHjvNXGfbgZWSgG
	 RW24mnfJgn1VHW0X9oB7dm1qigeRb+8jtJIztMADqr/7TTAgKTU+XMgAPAYmuaLuep
	 KUrjfKa+NBh0SOCO5Z6yWhgtPhB7ru27clqGbJOeCqcKtHf3sk04S1LpaG3xiYBZYj
	 hRhPPmX8RHL9uI2dLA/Th/f+LsBjuPG+Gy2g2Mss0kIJmUPkjqy1cjwyv3qm1yP0Ck
	 Tbyafk0TAKTEUbNQjqLT0x9hn5P5YDn8mBWt0TVgJAf90JC2+RztXTpZxEA0HirItN
	 rhYk9FNAPnMuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94422CF8860
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 14:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176364791359.8136.16339525031601128215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc04b045ff5e4c9ec70ea23ed5db12c205aef08031c231090ab265bf7ccceae6
Date: Thu, 20 Nov 2025 14:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763647913
