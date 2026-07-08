Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57CEA368953
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 12:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783514914; cv=none; b=W4ibgCPz5CscSMtRjw8FrvJT5eWsL/GinNCGsybbVnGcvbpXB50WhWPCqOJvoqGBbuLPxvKmUcRe3Iq/s9GhybbDIz9D+PmIpcJYif/e2Yd9rAFG2mH/f+aaHP7vhHMAoALW1kjen2us6ceVBuC8B/xE+cs62oJJ2nrtuXEgDZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783514914; c=relaxed/simple;
	bh=VjPWnVvqtjhHi+zRHF+YnzYfl0bR8gAf+YrYhEU/Wvs=;
	h=To:Subject:From:Message-Id:Date; b=P21G+GLU94pTfwHB0HfCCT81Ss7b5zcDs3repXiqYzNWIuG9R3pmuxqNztGVdMmd2ErKFpGHBg53g3R092VnRTK3CTSXbjyctfGfKBwtB/qClpIJM9xBfhDWbAWNedbGp/2iP45vC0uiLzFdGWqdHvglKJ7uOr3gPX9jBRQkFV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZYNcDzX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZYNcDzX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF8C4C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 12:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783514913;
	bh=VjPWnVvqtjhHi+zRHF+YnzYfl0bR8gAf+YrYhEU/Wvs=;
	h=To:Subject:From:Date:From;
	b=ZZYNcDzXLCxOwjj4RmM9BAOGs+uXhfbK1r52mBHItPhUCktrgeo39daF/7mdyTw3P
	 kIXar4mCElKDL26LCKTcBwKK3JJLropoWWqPIyQm8eDuTKa/O1dpX5Fccdv1vG96VB
	 Nj/aIYA2jYY6WbPbwlKDRtBqX1WqlrGKp1fQN0Jc0kfATTeDUYMZ5K+SWe0bYm6aqw
	 Cv4fFBMtivVinyo9Wzf88SKvtrOQZnS9nuf4z0x/KK838e2BPhGLleTsd4yIK9n/sk
	 V6jwdf75jiWrwGSY1Hd8cVUQMLZ5axCKiBXfgqzu76q6kzGiDd7FnbodUcstkUSf+0
	 Khzti8F77Xfsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA985C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 12:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178351491372.23123.2650294872911059477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bebb06129abab7a4e4d05221406aae6d69e6192fe1d22e0e73571d7483b6daa1
Date: Wed, 08 Jul 2026 12:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783514913
