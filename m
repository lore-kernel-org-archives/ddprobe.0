Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542C11862B0
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 07:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718609903; cv=none; b=MgrXouuHXrnBzNKexBTUHwiAchf0Y7B50dHYh6ZiDWf9cCzGz03L7CbfsE+xvZ5Z8/DQURgznIXDOqiX6gD21IePU8LGFPHYsNjAUxRTiEWWMhXHl/ghndqpWC5ybjWV5co+tvf1U1Mm5ne4XXiQZ1T6qSjbZfQATTilGd4pMSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718609903; c=relaxed/simple;
	bh=QKQ2Jvxm1aSCM//RqyWZsimVq7ZW3KGebs6viCACrzU=;
	h=To:Subject:From:Message-Id:Date; b=kw5sHutsk0u9Ts2wdPBVxx0bb0aF1G0VNAFGrbxLWQdzQsTWF285aZoTuhhYhMv5Vb72pthheDHMEfSnd/G65ZMVnv4L/KYmREt199NnS4RPJegHIcchKvPBJRmeaW7AQUqC64Nzbrbmz82hEG3Zc4DjFg+lUazXRc8tMj8jGR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKOP0Icc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKOP0Icc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D554EC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 07:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718609902;
	bh=QKQ2Jvxm1aSCM//RqyWZsimVq7ZW3KGebs6viCACrzU=;
	h=To:Subject:From:Date:From;
	b=XKOP0IccZA/b/r6mDQjCJqj/yPbmsSPgy5tpl/QWISATkQMkQlW3L+B/wBL642rRn
	 iDS1lNseb5RuVOJr7Q2bWn2ZDQO0C2V727sqer8sC0pDc3CBStwwjgfJIveVSK7yZx
	 qxDjZ3xX8xjyA9OSXdW7zDqOdhEqMlt5e0VHIB/5nej9CXTwcKdriBy92rm/cOs+mY
	 Eg8IcUVLzLJpcSfIKK62YIj3Ds6cLfwfOLTES7Kf35vmmOOlgt2jqpRvzk2/wU4VvN
	 xHbNxSYNu/QbVTosEAn/dHSesIc539trhvTJNmigoLQwUZrDkii64XPM2UGR6pu7y3
	 gaHKJeGT2e6Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB094C27C6E
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 07:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171860990275.18533.327917270360406727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a5519c1e6877c08b7092689332eed77826d2544108759834f2f459d5d71017b
Date: Mon, 17 Jun 2024 07:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718609902
