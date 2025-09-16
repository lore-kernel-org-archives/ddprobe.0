Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187D81F4701
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758065994; cv=none; b=u1uTYTtq/cR/Yz7HvR5gXs8CpdiN524fVrE/VIEcNChNigNVlaGKl8kq9mpKne3nRpjDlreAlODuNTQNBqWWpEVuc7WxZn3aO5x48u5g2z8zHOVkM3qGan4JtM35DMXkdp7/pIfNSoF6uk7lCFZrkhwnj6sjUNKD6IhxdD0En3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758065994; c=relaxed/simple;
	bh=aI9qnZmrAwrVMY3sqOvP+t5wWcxF48Mo5OmagdbGg4A=;
	h=To:Subject:From:Message-Id:Date; b=rgYA3ap3qitqZqi05jxIUTlEHl5cDq6HZktF/6VQT3RzdS9zoHNmPijupVNQBpqkigsUpBilsnSNdIddqjYzLw9AoBp9ZPLW1qaRLScHgshhJT8Y/PmiKAxAQ+ukrrCyF4KfKcbiOmzjq4/3MlwBQjuoAdyXDqdf+zw8ZxWqerQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTGwWIlo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTGwWIlo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0247C4CEF9
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758065993;
	bh=aI9qnZmrAwrVMY3sqOvP+t5wWcxF48Mo5OmagdbGg4A=;
	h=To:Subject:From:Date:From;
	b=ZTGwWIlo77K2cvR/MzgWFb5j2dDbmWdYdPyPqmYO1VXC6WSjqTNk2PYibC/weCPaf
	 FyBGxdHJXxL2hlYaxuAml6UgL/0AkAlztR/WZEMw4Ai+mr06HhBAZQ3FxWSf4MYYYV
	 NYaLiGvLFfNi9dCx5VYQmJxjyEvQUGVio0V7UOy9h4grfMXZmCOagKeHjHWbaYUZme
	 9BpeoTeKYeJbyzPhOrpzCiLC/P1qsnXAJbpNCNH0wBVZAXM/nGGXrA4+XRLF+C7hwy
	 YXL0CM/SnrTIjqNL7V6IAkFSYd5qu8192OMXEfjtBRgG2eKh4rvKw5MZxFzuE/GTL/
	 KPXIQD0/PmpWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE1BCAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175806599357.10797.15207017611400338235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ccd5adacd2618405379afbee980267573a8a55e4f2ad357a11727f5e7222912
Date: Tue, 16 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758065993
