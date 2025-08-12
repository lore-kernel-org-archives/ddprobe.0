Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AA4212B05
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754963394; cv=none; b=F4sdF8uM1QGa0BLQ4AG5+VBH7/A5OG50BZPC5MH9Pv2w2J4rWy73qo62BJwME8kBW08uVqMMK8uUvTLRSwUy0PW/OnHCsDEzQaNDYZJlPjL5XExIrRIRx8nRAP2WEJ+RVu/3H2h+2EqEpsyAn+6mJRiAHAIdGTUoFsTLvPeNiHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754963394; c=relaxed/simple;
	bh=6vivUgAVkTJB8KGw7ZrGPQcu+mp02MsETHlaCAyYjLE=;
	h=To:Subject:From:Message-Id:Date; b=iWWdO/zM9oBU6P1X5Kk0fsFXLcpvmEZvt7git0pArp5r5YOvO9ofcMp6JIOAqnvB0Qzdwq7r3K5IOm653ibrXG2d1kFW+gjloMHTHtxKXqUmxHE0A7g6FdpTfsz5EAkXWVQTW/YMUnAiHjQDQwQUHKAr0zQXzMiyI7qke18gBpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QNRDsszQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QNRDsszQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BBAC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754963393;
	bh=6vivUgAVkTJB8KGw7ZrGPQcu+mp02MsETHlaCAyYjLE=;
	h=To:Subject:From:Date:From;
	b=QNRDsszQy73tuXr7CxWZZSueV8Kf2QfeBbqpFJmHGHkJ7xZA1xnf+qqX5ud0nJebk
	 3WpiejW78eO+sRdlmJahq+LkPWyZ4QM6qlCe0B7o7Dq1slZSkdGLRc23gIV87IY8Jw
	 Pw1eY3AbRocE/cQT1WxpVPO7UiL6JM55Nw1jmFihjZ2ZE47NG+hbLJn4Gcn7z/Zmxb
	 pJpRk0Mp791v/IvaOtU4Z/mq1ypD1PHw4G5HXl+iyMEN/Evs+Jcog5D5QcxNWZuz49
	 f6ISxEu/Bvl0rkMx3d9Zonb5AX+0qNnlvolHPyt3vIWrIjcHoCZ8CQtGeqf1etsThC
	 DqfdOWRo844GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91037CA0ED1
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175496339357.26023.6467458056290038080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6634b80f7cec5ba81aaf8d44e4f4293156210efb5ce7cfcc5b0a372ec7ae5bcd
Date: Tue, 12 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754963393
