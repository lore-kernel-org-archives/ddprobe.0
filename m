Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B2F1A683D
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789960834; cv=none; b=pcYFymRPes1cAs2DTLZL7J5noOb8QXcpo/VVgkBEtzs/oFlo7GcUtspDGhr23stnnowNmXEeIC8QVYS1vqlnugcv4Jw+KUNu1hEtyomRS69h39JThLO8/IY4G5X10SRhypvRupA1dbCxAHV0QedV2wWFzPMUos4XgmL6Pa6oiCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789960834; c=relaxed/simple;
	bh=DBWmIHXQCi0YkHh6yQx9IWKz+vDOM2lwD43p+KhU/yM=;
	h=To:Subject:From:Message-Id:Date; b=frBxtOC6REEvtpnQku2wPf/0o43yN2CQbyZy4lIbb2gIPjU7MKt+Zpct31A3VbJoEsJtQ5NAr5AXy9TI7UkAXOiM7V5ivfaaxwlVoK4yOHeEkKF6uwV1rUeBbsiye/g/FRYdDTbdNGxA062PhCemxOmZunSFlZVv3SiV3S1IOUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=InOMxSMj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="InOMxSMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65BDC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789960833;
	bh=DBWmIHXQCi0YkHh6yQx9IWKz+vDOM2lwD43p+KhU/yM=;
	h=To:Subject:From:Date:From;
	b=InOMxSMjghJevITMXMMZEgD1AP13SRbIjf2UJS3IHWU2rbEXEr9STvd1IJYdgSuzp
	 /TV2wTlXLkIJTs6roJ+RemWH/M8vatbf8Y8SRrTynK0DzigCbI5k8C6JuC4DlaGOD1
	 Zsr3uFF+vnWiw1lQCkMsV+zhvOQk4jaLyaRk5afx0xaUn+TgRZJMR6ZjshNZm6OE7u
	 VMvWZ8TBfruWcXaviNXXI40QlWzzUkVJlFltUbT8fFI/i0k4Gw77qTf4XaOb5QrzfY
	 /R0I3Dtsuhzv6sdW3PMwYS/gBDc8sX7PsJCfEioQBTW6Jc/1hPwvkVSBFbDuN1CUIL
	 RlwT36Lh2UEhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B224CC982DA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178996083369.2801.10271213555928294811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ba11fa8fc14b9a8e43a4f50889c37ab57dc405940e21612cace755c7e03cdb0
Date: Mon, 21 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789960833
