Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200F91C8FBA
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 18:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763749314; cv=none; b=Ry4KK0sahaSizHlAWdz6hC0mxYETbA4okRByF66i9lRl8ja2WBGVWk7bDnWxnedZ+nWEbg4+R+V367spccBpCMOYqrOe8FypSL2RDzW8fwAB7vu3NcL85RSud/IOFEMFdmdnEhVkACAFiU4ApOnSsqsfIhxG5epaoIRbgPa/rOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763749314; c=relaxed/simple;
	bh=rB8iaqakbWF7VCTYC9vkfOVyFjWbi1UuNMHJek36bvk=;
	h=To:Subject:From:Message-Id:Date; b=dhDnPddChDAXCym9pLzekjcQ427YocP5eL+nFmdYIwvY/GX6rTymIP7SjFnCLOO3mqTY8lJukHArPi/cskVF0r3kJCPI0gTYm0cKvt+q/LGG1md7blsh25wigctsMg9sjga8ydz7/bz41VsHU5Il4/Lu32V5yXrPPdwguDWZO1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cufHYXuF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cufHYXuF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A6DC116D0
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 18:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763749313;
	bh=rB8iaqakbWF7VCTYC9vkfOVyFjWbi1UuNMHJek36bvk=;
	h=To:Subject:From:Date:From;
	b=cufHYXuFHxvkjB+kQGt5NRNaiowD/xUEFEL/GIksamV9obZf0hFDOWks9NbqZZuSH
	 t1RWKWeOmTX2UGynM1V7QBddSXoXirDOsdpSNZTcVC7ml0h7KrT6YluTIV0WQmLNSH
	 gFaUHj51DK6zPSqBJ83dUJKRMPM1UpR2lid/EM8jm1yjF/PeGkLwqYCxPPIVoBziZB
	 yw/xIjW+Xc7MhJbX0oLmujfc0VX9QUIKrDpqeNi2gT2ynljKpd61OeUR7srXuptGr8
	 ymBtVlYb3m0fensGXGqHg0f+u4zxDsgASLQKAbAPeWAmrb/Huue10aj/n+TGYS0+wB
	 56kTT/G+KZ4vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933F4CFC296
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 18:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176374931358.17824.6951884530808327504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b77528cbaed2836dea9176e18121918b6e57eae461dcdcf812384bd7d57dcc8b
Date: Fri, 21 Nov 2025 18:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763749313
