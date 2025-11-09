Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA831A9F88
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762667994; cv=none; b=H57vcO8FnrZPqMyFwImRfsJlXDEfbCPPSzjtAyHKepDMPtuvy3I7trArV8+duQkyLq7SrSDdh6z0hC85r2ftUfJF174HW4ALiv/WkObx+6Le0+qFs5nL9G1klFNZSUXljxWesRBV9eiR3dp+Y2W8w2qfDPbVWlJlxXz4n7fl2LA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762667994; c=relaxed/simple;
	bh=sh6sYiELnfEezQIDcCkXZJOciS5omxbkgqNMiHssaYQ=;
	h=To:Subject:From:Message-Id:Date; b=jZOyp6Vcwerb1UhCsMi5MY9go3flcMvnDj4uuLVgT/HSbWTLqHt/HgRGVrnAffjlwnvo7u8diyFU0GeCGMFTbmmN3u92/+xHnOgTzgzKKp3MruVkMYqYBhGCwfclBVLWRTw8bm8SxRi/zayowaa+2vKZ3FKZ+3N0W6fcqicrQeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mc4RE/jk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mc4RE/jk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2E7C4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762667993;
	bh=sh6sYiELnfEezQIDcCkXZJOciS5omxbkgqNMiHssaYQ=;
	h=To:Subject:From:Date:From;
	b=mc4RE/jkys63B8ey+aLMAECCZJV0uzBvPg6c8aL1edBG1tMMlJVxzdfm7b2nK83Z3
	 cBXRfxaNejYYRU6krKSMGdotd3ywtjaHvxmwfLxgJY4L7/wwPxhtKfgAwxSeyZ4Uu8
	 RnZ+yAI6aRsezvP6PJcfrSytO5tMWFLaspZV5iqltopTr89flb6milGARn9jxl8zzi
	 ZBjsFmIjymXDh2xLBR5SXLpxDLe3J/jmhw2XayzlEJZtAeovI6F6kylGP2ZrGnCfKC
	 PDiXrkubvzM16LQYC5Xx1M9u3X0Hhccn+ujYhHleJd046VhM7644A8aQKvo0vGpBbe
	 SJ44ZucVIW3fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E810CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176266799360.22812.5861969739099867544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebd25120ac8592b7c57f3b67f6946a1bb64f494e6e3543e6853fee528821add6
Date: Sun, 09 Nov 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762667993
