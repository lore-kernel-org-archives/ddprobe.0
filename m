Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A2D8447819
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784911834; cv=none; b=Qc3UtdURmO8oH4DvMiSXiF3+8uLPDc0VKA9XbyMxULwbDfYKYZBwLQ/twO5j3WwjFu6NPqXPCn4IfEaeTo7rT5kJhAzWSOVy33xOfntudbDDaw9egsw3kLsDIj9MjtOEVvY5P4ZEEAD8tJSGDiKfQj5938qG07+GObmDaY3lpmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784911834; c=relaxed/simple;
	bh=pNLpRBdRqv4lszaEPcbSzepwE+NLPshzSTZraogAsXk=;
	h=To:Subject:From:Message-Id:Date; b=KfSWvKIEg10oB2UB/zCDisW/oOhJw9Owwx+Ihs4+GeZ+rI+mC7So3T+UvYnIBVA5RR6eiLnst+tcbQHwgFoSCPS4FsxLmW4tqvr5m9NeWJh/Z7UPXFDm043UKWe0Xms8tpFNYWN226ihRdbr4mrDx0JF2N2bPkMeJYi5QTBgCF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iszT0vSM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iszT0vSM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F75C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784911833;
	bh=pNLpRBdRqv4lszaEPcbSzepwE+NLPshzSTZraogAsXk=;
	h=To:Subject:From:Date:From;
	b=iszT0vSMo48WDQeQnVg+sZjBpZSRUNEI/69RgKMdKyDV/rEimdO1n7Gz2HcOV6w3o
	 GTWlNlXaeBaWOb1LPUSv7wbIMZDhQ9HqF2O7Dw6BPph7nGQZB0A8Svy8ez4cBUPzSZ
	 pPrJWUJW858kvvEC3+wf8h/UWG+Zr6eUNHaoz4cJY4mYXVWs+EejAHx7wlgkF9SA9V
	 lNh98lOSfYToW7ovAr4NUOt0FkHDCxYtlG3NpNgrkLaO/l2PiQ6+mT9qdRNizBD5X+
	 Oe64Ynl7+aSmTuTpdzCe8WGHqN8XZzAGvUd9o/uC1H2d38ZC3KusdNkKcwQ3YAF2wV
	 yclojjA0Y6b7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84E5C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178491183368.9472.11000999206792704994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62b34f91e958308f4146a4d230447ff8b54d79229ddfe917c05ac06592486115
Date: Fri, 24 Jul 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784911833
