Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5546B21B19F
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737719154; cv=none; b=PFA8NFnjqRmAgYWVvrsmBWevL/iQX7ZGRnttSRgeG+gBTupL69hC0/cfrkHxAvmbJ5MZHzIncXL4+DS3trPTfCR1b6Arfq3U9hcXilmxgR2rflYPi8It/Q8ebcvhJIpojtGGganIV31ROHIGODsrJshIwKliGN/LXDJc6VPl3kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737719154; c=relaxed/simple;
	bh=CcMFT5/ksOF+AQwqoff1lKR1ESXVCLSrVf35uhk5o3o=;
	h=To:Subject:From:Message-Id:Date; b=rgopyDacYY9hTu5N1/QYdDIgk6AEJ5fb20Dr1+oYxpiz9xjb2LnWynMqbkyZrH7vbRBHtcp495D+RPe+gPw6Yp/k61ydCqtLB9zMinVYbLiO7c38BuNBoGOPpw0Q7d577YQGp35eiaqglZFnqDnZORQQw3WC7Y5HZ5O1fod3iGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vx6PQvoq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vx6PQvoq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FFEC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737719153;
	bh=CcMFT5/ksOF+AQwqoff1lKR1ESXVCLSrVf35uhk5o3o=;
	h=To:Subject:From:Date:From;
	b=Vx6PQvoqwFu+kdyt3imC+AXXg37SoMwYFy4xCIiGquYckeAJWvDqHLXqKFc/Ls64j
	 z4nS3k+aTgafpk1oICwgnIjhMC4Og+q1t4/nWaWZumbP+SHKOP+D6ee5DAnGRduCxv
	 MTMHqAQv0VA6yaVMPkM5llpmxowdFy09ZB/uNaTENoKDJNWTkwbkEK9YqHZh2b8o7A
	 i6BoHGi2Hq0jaTT6OJL7kE/0Wq+1R3/Wbv66hxzASj5oJcaxm599WNxs3GS+w4OShG
	 ujDbhchAQeNI5MgxcPLCTSP8Q/yCOTOUJxFWSm9xCozB0PAsraKuUHAVo73mIBzpvG
	 TpMVHSbV5lxBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99868C0218B
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173771915361.24322.15727819955748426678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9fcb1a2c15d4c6e0d321ab3846ba8f50d84d811163383b83923a0273dc0e8de
Date: Fri, 24 Jan 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737719153
