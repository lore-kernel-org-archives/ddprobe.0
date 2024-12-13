Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365D41A08A6
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734090954; cv=none; b=TQ5tkpyV3wDNpvaZq8cVtlYH+x/CuqOtJsOIoKvEEJGNqrgVMhMFzv/MXzhoXlXSLbIw16wtq+y+AH//hhr5fb6hmJKOqT64CmA2vyHynaFtGqcIve+/+7yR0QEQmPvwnq945efc3XILlN6lfpo1/NkBD/vQOLN3J8AY2p1tIDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734090954; c=relaxed/simple;
	bh=A41m2n6Mc5XehENuHWDM24pIGVdJweknJsvXs17+JPY=;
	h=To:Subject:From:Message-Id:Date; b=WLacFAKTYm9wXm073t4vJLL+jIl5D8EHVk4pP+ebzCGOpfGkMBlLv16Q/LWgaBRH2QKKX2r6SEr95HKZw4gh+Hy8/BcBJgqvQvJwh4tcXRCdD4hBqHTIeDX8l5oPJj5AMQuaRBnugguQWtf6VpJ2CleFSx26g/QLM2xA6RfdoBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OoNOvfQn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OoNOvfQn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A68C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734090953;
	bh=A41m2n6Mc5XehENuHWDM24pIGVdJweknJsvXs17+JPY=;
	h=To:Subject:From:Date:From;
	b=OoNOvfQnzNVVt24VJG9dSHbv4p4nLB4eyt23QNgrdwxmu6fASnB4qMwIRySB1+h0g
	 TzK0fJMybA6vuPju7nWALR/Gdd6fGrbQdDCmQekfaHYJTs0jt8RML6CULHg9XOQiTU
	 adOtZrDdhgkickDnDpmYb+mc1NuPyCJkzovxCA9rlRlR2x6AXhGfPaxqW9zTHjHAqY
	 TX/lkxXyi/yI/+AIBbRehW6eCvZedaLuLbBiqLnIKpzVo+FWEWISXJOEN3XB5iJkmW
	 hTRdxw4B3CS1hEZ9Laf5+4cuTb9pyCvTRBJHiUhI/Jf28FMcOsB1xkTBjysGbdrC/M
	 YJLLN15jCGETw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C87E7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173409095365.22417.1092737722739922802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f9b5eebfe680cdaab3b876fe793874d19d0a3d72300fc00f8975967c63c9e3b
Date: Fri, 13 Dec 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734090953
