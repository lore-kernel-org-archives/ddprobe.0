Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127B733E7
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749608994; cv=none; b=dw8Iu3svmj/+b8Fvb8P+QEH7B74GotGdgcAo5LR92xo7ZHfVUP8Ku1YHNxzEafgYT83rTlwe8zFAUQtuLd83pKbCSEbz0+Y7hbYO44DZX6vELC/bVSOKumE+7BXOpoxd1lWQjlxIldYuqEu588DjI9M8WsIt0miel6kkNl+6QnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749608994; c=relaxed/simple;
	bh=PyYRdpwQKlwwC1/ap99QrYoXY1qhVmyMRHWJgoxgDoQ=;
	h=To:Subject:From:Message-Id:Date; b=kEgJjSAi3963+ZFOIUzDuKJqf8MZJfeqeSfBFCZNuNXwQoEIkVDXr5I8Mr50pAhFyM1WUe8e3pCDzEtCRZ6Pow1XZuOfQFWDoIchUy6aUolBJ3inJ/iUEVSTIYiWLK3VfpEPOwgcD14eeMEXoHSScPMHPYheL9jzxd9cop8FGa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=piiWr+bF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="piiWr+bF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51A5C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749608993;
	bh=PyYRdpwQKlwwC1/ap99QrYoXY1qhVmyMRHWJgoxgDoQ=;
	h=To:Subject:From:Date:From;
	b=piiWr+bFzXoemZP/UuY9krkFk8yfHhsLq72eLmVVote4xPwccRTTkBSOMYnHmujfk
	 XiZvNvl14z8iYNCBAV0V0KDQtX4zVwiHhWWPZyUaPJ6xCcU8VBUCDaFmEy7xT/6s/n
	 upa7bMtcUWGus/1ehANfYtvGms7ilYTQhtS14Y/2N28TzxzuUjw4pJiRBhzJGs4Ski
	 WFWG2ZRndd5Q5k1bWYO7gDD5o4NoAzGwmOcK1kp92jZ4IAcppEp0FkA6Ex/nAh3raX
	 QslZR+wAE3OkwKhPKopAvQ/OlZNuUDVqqgVvAFmZfbdu4uCdhT6/XLDDCSMEOk3Nuz
	 dOH33IXpXLMNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FB8C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174960899358.21809.16833596142871053616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1885422e7f7477e35535a49281b06b76d4c806e5561b0d35dc78cbb7ec67711b
Date: Wed, 11 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749608993
