Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337702DECB2
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 02:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779072034; cv=none; b=AY7p7u5LIGpJwKZL8oFf0fGh/dIigQavlOZAzno/qmtJybpRX8V6KCYokaeCFt2HRmv91ClfHvBcuEoM2ed0ZuqJEQZUf8SlCMs2Xgs2DBej3E/MqCZBzFIwUhd5NzXtbgonkoEQqGwoTeXbrHCISmgw1bPt4sO7r9h5rhFh2Jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779072034; c=relaxed/simple;
	bh=/vOCOD5WQgEh6HVTMk79GIDaB4QHCd0cBcenrbZqYpk=;
	h=To:Subject:From:Message-Id:Date; b=lol9r2TJhgRumRFr3zw2qauKKnj3qD+xWHjb58LSIqxdG4oPk5aIXhPMOfvRtqGmVSR688peT0x/jCB2DectFISQg3kCUjcrNkrj8k67j1jF1z3XwYJmOT2lObCNnZElrU6VdqxKPMXcj9QNj6OGItet3rD2/TSdhZerEEvYE4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kgr3QiHu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kgr3QiHu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1BCCC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779072033;
	bh=/vOCOD5WQgEh6HVTMk79GIDaB4QHCd0cBcenrbZqYpk=;
	h=To:Subject:From:Date:From;
	b=Kgr3QiHuH0nrzGz7muHk/WfeqEV38fA3d5tV5qMK6BR+/5K4YlpjSlYS5k0NgE2F8
	 NhIflZms3pU6wZ6XssRblXwWp/3MrJZTjwPhxuhKMoT6iJ5Cz7RI5XTo+LiU2qOGTO
	 KMbOBal6pVR1nQj5UYsReSo4eTZWOWqDrdDpIVa6fcF+ZToqkk2lgit1g7P7KHsk/S
	 FI4J1iyR0AaI19Yw3cG1CZcHGp3z5b2oEn9SQNrpELrlylQCM3UTk1HdnMxF2IBiW2
	 co5Cw1z1Cm6tjwGZwrdOcxJOxSaaHg/ipt8nRLpqSWyN+gu7wFMN0fEF7fsjmF0d4P
	 MI7cQP9OcuZMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0510CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177907203371.20993.12206107370904755079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb635547d34186f93d8c78599e3d0851cd5211273bfb75ef5f11b0abb02a3740
Date: Mon, 18 May 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779072033
