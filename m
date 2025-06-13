Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092CB28DB56
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749852594; cv=none; b=EWpiKJsJO5vIqVS+N0cKCahtLCD//eLQh0fHizHiGu2gzpnmCjRWxv996xcxjD6C/skkHPesYL8BOLaZItBoRUC3Cm4E77hwNxxyp5Hwfdvdl3VlyiIHt+LNWQaTKmYwYe492m/PNmF3DSMGlhN/jfsr0xGw3Oa18un2k5DOfbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749852594; c=relaxed/simple;
	bh=9RM8QSCS+erlfoPJqsSRI2EzwHiTdrpsmD/J9E9Cz+k=;
	h=To:Subject:From:Message-Id:Date; b=NikISif43VgnVVbrD/0maywlq9RUe4k2XthHfSwzhfJRaOWLffrgscn4yeGnISugAD0I1/sMLtqMj8wCVmntlFMT7hie9hsx2CBJ63Iip0dwbonNj28aqEzokhEFA1ZH/KtSO5gWV3Met7Uh7mtc6WsGcX3Z2NihcLFzMOr0jnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3EP2aws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3EP2aws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E873C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749852593;
	bh=9RM8QSCS+erlfoPJqsSRI2EzwHiTdrpsmD/J9E9Cz+k=;
	h=To:Subject:From:Date:From;
	b=F3EP2awseIiiDZGdy9PHmAbY0GLOPVbtWMCiWTpskYB+DzioDISV+YWWxKiId5nlD
	 ef9F7v7pe/cC9CQcpdKhE0KbYeQ1Oz+4d8T8GiDEhIDrvP7KSKt21rC3zwByLZZlzI
	 pOqJ4u0culOhym/REEp1MaGfBUQjm+JAnnRt6ZnCleNj2BeIZn3s2YEBNpGp8QEanL
	 oHFWraRoG8VARoovb6H5JG2hnZy9kXx0pBuSzeYv0PxNK3L3ODeQkkRHOg7D3J5lqL
	 9skreFe1pHMPeeDJMXPRIfV5IVEyEJZN4phBVZ+Zm2gCgexZOHz/G95mY/ManZpE8K
	 eK+h8bCO6Vf1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F59AC71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174985259357.22977.8051139695991715405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbfdc444e70bb292d8d5b916c25d58c48ed06e2e75c85575eab0bab98e2e02f6
Date: Fri, 13 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749852593
