Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244B12C859
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734669354; cv=none; b=ZilwQlx/B9LxBOEkAA7I+pXl9klw7mQBlUkWE4KGpnDK/NjYgXSYsg++NtQMgNmuxWv+RLWD8gzP0qrNc1YoYfklnPqQii6WyoRxquEPtoBe6eQ9cADB2pGydVDryVK6yykD+GTGRUTuqRUEpkQPSfzWuqC7bjX9FvYJ87WEt5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734669354; c=relaxed/simple;
	bh=C7YRc4v2ef97TBehl4iPMmfoG6frzCugyAftsLWAxRs=;
	h=To:Subject:From:Message-Id:Date; b=L2kWUsORpEnKA6Fq8bjtjLy31NntWv0ZaX6SIj08hVNcVAKwws02mJGmFS/Yz/TGmN2zZmq+ahwzv1h+pPCj8zuAJqAD7WhGC0ipi/wGcI9EOWGSjKjfbWBqsQBbDrXsnKaRnSsDjpvJnxgpzbXKFoGplXb9XVR9t47xa4Muf9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uyDlPnRs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uyDlPnRs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D6CC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734669353;
	bh=C7YRc4v2ef97TBehl4iPMmfoG6frzCugyAftsLWAxRs=;
	h=To:Subject:From:Date:From;
	b=uyDlPnRs/r4txojnK2ZkJLOv3EVijt8tZ39YlFCaA/zMLS1lUkRcm34YsWaBFgfX3
	 flPDzJpr9NhgzUp6xgrGu8BfRr0hLo9RhtfHLDqcGK4U/gIidZJ04Xlca592gSox4V
	 6VWh2TshSVVKpoMWlBVjbOrN2r8Ryzgsi5HAhLuIAWlwBKaDzMC/hMHp7XPuXa8xJ2
	 pqdhRq/aSFyhwIJlrm68RneydpNeb80ypUSftXONMwgDnb+tq4tQAkRKGu86xwjM/B
	 lpPBB4sOFNWYSenm5BPjKkEQLR/yXWgjq4ylD0ApqmCDUvIJy8B/psrlLGi5NVY7Kp
	 ycKFfFIJf+UMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E58E7718B
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173466935360.13860.11699103123623723253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f67c145f32e4b8d9d7015ea5e58031a69529bbac5f69a7602856756a625022b3
Date: Fri, 20 Dec 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734669353
