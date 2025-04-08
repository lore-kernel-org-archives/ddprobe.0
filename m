Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EED4A26A1C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744113594; cv=none; b=uBV9rIkLWdX4Kp7WiTHNi6w+4GqB2i1o3bMGiUM8/pGgosPVDrQtcNi0m1xhL3qsnz31Sfl4lZqpuKW4uY6mV0zqeFqxRLvUZoDu3wPk6SwrEB++UBcSrLl4C8N/jTr8NxOQk/7RX3DZCZn47HgwaJpsRYRhRTD3aa151oCTYvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744113594; c=relaxed/simple;
	bh=EhkwahTwJBfosV0v/BXU8ysA71tgJ0DTRS+pP/zo6Qk=;
	h=To:Subject:From:Message-Id:Date; b=DdVVCTtwSNUMtwBq3TjJTvudjuxKVBV34fpzQlX+QoqhUxtqZfrwI6UFV9HOI9knrHVk2VoYpX5miojhutm4+5+9/hjq1pUDBjt8gq1gFYJgBPhywOV8SJBaZbXgmKtJEZlvrb1GELrXz0vuRhbd9RWIfk+2Vb8MwtTOL7RgyRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9gYvlBf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9gYvlBf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C7FC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744113593;
	bh=EhkwahTwJBfosV0v/BXU8ysA71tgJ0DTRS+pP/zo6Qk=;
	h=To:Subject:From:Date:From;
	b=u9gYvlBfBLT129J94+tD8xMvq2+PbAxhr9p57vvp8cLyLJM6KDbLIC2wUPknhS0nG
	 7ibK8QmAkO3ApYTDQxbrn64Lj/3at9qmd4Giaer4FGzVo21ltQkfJO4qUZNuILyDgR
	 6AZ9q5tG10CZrAbhzCbXKr9bGPNAIK1crvfBVGfbFOdexJsm4N1XqXb7rnuPZQFviH
	 Hy6YgzJApe5ewj8oYw1uZZar3+tZLkmcmjaSG6QPdyC31Z8UV5O/3cep6Ztf1xXJN9
	 jCYk5ClsGFAF3J+FcSrZ9nGbFc6lyrw6rlOjOeXD5MPrbmut/urZMkffh+Yb3DZvS8
	 y9myb1QatHbAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AFDC369A4
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174411359360.24766.3633296913587500117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19003c479f2f53d92b692a1fb88e93ce2d9697730aceaf58813ae446560b4ac7
Date: Tue, 08 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744113593
