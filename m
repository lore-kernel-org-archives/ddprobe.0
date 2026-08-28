Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C1C63BD647
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787892034; cv=none; b=EbQcyGh/6zOYfdbLa0ZjzA1qRS4YMVeWNjm/9x8IrPDNZz6donZDnuU7OUeg2zUAhhG9Qy81MtCiqpPPZUQyLKIgIFxyvVXdYyb4PDHJm6asiL4+jJj0JJFu4eNw0aiUrMp3yYDL/1+ulRU8gJIGLO2GWsvMjaH1AZbaDbUdxJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787892034; c=relaxed/simple;
	bh=xMzcHpbppBeKaSo5f3/Z/DnLIfvs5ZaIQk7A90nrbgo=;
	h=To:Subject:From:Message-Id:Date; b=nfwVzVDK3+7EV53KmA75FZQlxYDksbAkxvbWGkzuPSg9C7hYIMOHYrLrxyHWYsxTbiHnIor7Oy0ldcjAVo64eGb1yq8eUE2gy8RbbdWAk23fssAchz8C+MlaHrUXvODSjPe4yfnBdgxViiCI32+zp+GpRQ1G+xXSgCO/c1CxKKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6W8Ng2i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6W8Ng2i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53C9C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787892033;
	bh=xMzcHpbppBeKaSo5f3/Z/DnLIfvs5ZaIQk7A90nrbgo=;
	h=To:Subject:From:Date:From;
	b=g6W8Ng2ipUvxuSUz/U6FdyFXiYAJoJikoFtUtYLMu1zP7tUvCDhX87rkwwxpXFUpU
	 ZghwRT3YF1fGXkKmw6kZ+vYmUSsnU6YWVbhDKnXZPHpAoYiN8skrIoxT48hymorANa
	 ZkDfQ/I8TNkYIEjde+NAT4PZOlbOben1lu3lA7ubMzp1SW8IbZfl45pLtU63iqjUzL
	 Tyj8hFHp+vvfiuGPKXL9793t1Y0LbIEGx85B5OQHuFLK4liWHys26mTDhNsL9DY8po
	 btrEH+T8D9khq7RF30bqrh7oTUxgkm0hnZJ+LHOxIqK/tGDlIYnWYDD208dwMf9ahx
	 G+DPR6tT6Rfxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5A7C61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178789203369.28337.8417819650180931547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a7c9c37d80594f2f6fa0fc6b33fe6f9d99d15773b56642e6fe001a6eaa64e57
Date: Fri, 28 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787892033
