Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A4B466B69
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 13:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784034514; cv=none; b=hnOd3i48rc7RqWx5ZuZ8oRVXy/9jk4CA37toIvm8d6fJeZynxnQNzw77GChvwg9+Kpt7VOh53rzmKdSSk/zd1I6NfK0tA7asq9pZEWJRX/+25qot1WRGdthP4vUPmRxz8c6da5ma7/cNY0McULB31c790V3y+XNdqCCyIvoQSbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784034514; c=relaxed/simple;
	bh=J7ypnNxTx4p9hjpRWeNLspBbsU2AXJFfBpuorSRjGOE=;
	h=To:Subject:From:Message-Id:Date; b=KMgijp5WUZjdVgpNhE3nV06SN1szGB/rGucBwUZfH31k8DWy1D3F63yRigb11ybSt8MEBFIdiGeXzE85MptRn9noebIgaWYzoda5id3W0nHdcKSPf3y0Z3/c99RJHLQC70w+7/VsZWZ1bbUuHTBVn5ZzATDNXIo2e36EXdIF9Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVl6LVXd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVl6LVXd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB679C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 13:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784034513;
	bh=J7ypnNxTx4p9hjpRWeNLspBbsU2AXJFfBpuorSRjGOE=;
	h=To:Subject:From:Date:From;
	b=oVl6LVXdu4qnTWJza5RMu4brs+FQy5QOgnD5cwIQ/jBBYYbsA83vYEHrFYvRti4DN
	 dmHJ3q3id2l+V3KLKaWdJLpmf4yW4pxbzrGE/plOhGwhImTNCinp32zdhaHg3FAQ8L
	 za6l/eTRJZ/N5aE8ILgki9KKn65ogEUFSnOUGZMr+4mdv/hq444KvfONTRf7WCy7aN
	 gBclGxG7kLC7n+v7mZycxVUwQ60Z3DDMD265xQLIy9Nzpmw9y0UNz5e3bjCOLGWvUr
	 RIToe3W7ZFGslXYHPrEP99xfAuts1MnQAKf1tGeF7NjYOMzY8BB9c8k7WoixzibiT2
	 3/mmZhMYsK4Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD59C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 13:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178403451369.10948.871785837330774030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb2f7f47b34d516ef683171862bdb82ed3c1d203ec4cfaeece696014df7037a8
Date: Tue, 14 Jul 2026 13:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784034513
