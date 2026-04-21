Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C16298CAF
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776750454; cv=none; b=obfS4qMi28w61BJ38Xaqc0Uuw/ORGb95IqVIUGcCrXETCPqKKDwz+y0NH8vtwm+4YbqHryxXhKKZLKFcqFmEFxiR/2N8cRbu2EWcSEE5tWARx9i5lXnHKxSK1SYrQyem1hH+X87vCSiW2zUq2eYSF5txHEqRONEb36TdP7obPF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776750454; c=relaxed/simple;
	bh=YabKUBkBlM7u9JDk6WgeZKxg7yzOvhY3no9aAP1p7CQ=;
	h=To:Subject:From:Message-Id:Date; b=hSyMo5g0E05KWJ4Dx5ZSfVJm6A0Zu+QwTvAEiPrHPVh9gXsYZ0ciZ5440Ysvk+bhGfw05DcvVdpRrG9TZQCpKQuKb55QnYbc1iPTyKdHgFtHNN1AOCUyAnVUZ9GMHZM0X3YVhioiHyzCpNOJWn5B8VnZ8yAkaT+Votx1UoIg3wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPoBA+fQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPoBA+fQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC155C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776750453;
	bh=YabKUBkBlM7u9JDk6WgeZKxg7yzOvhY3no9aAP1p7CQ=;
	h=To:Subject:From:Date:From;
	b=nPoBA+fQO8gFopeA+VPUd+Yat4DvpgzYDTWrd87s9zKn0uYiWB/KZweQYjROC5k8H
	 VpdxbQuadduMIL77EW8HouQL8nvvvyVrxCugiq52wdLTTMDnMoCCXVCzbCtn4HIEX0
	 x91P9MmDcXeDbY2nZem4vrkW5/SOedlDdifRaHXF8b6Nj996Rl492EOXIIb3pXb/Yd
	 F9YVRkYtHXaj0FSA62QVNXMra69EI5fl/JlgsVwlm98u7ZBAybYdRUmDxIXXToM+gQ
	 WSmUGqi8kmy3bgswXHeLKFtaCD65a+FjHKkw2+k1n9vg/ZOXanSzJMRvu7zPSjv4Uz
	 TPOpvjWboOh5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA43EF327A3
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177675045368.20911.10785386540343191004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 048db193a5f65cd46663672cf3c9dae55783a1c9825853d627ef48561593d4fe
Date: Tue, 21 Apr 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776750453
