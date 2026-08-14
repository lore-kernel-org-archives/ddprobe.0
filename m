Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56911416854
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 07:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786693235; cv=none; b=ty1pm6ZJBipeW6YZ729LdELsiyoRb1x93hnXfxMcIc92iVIH5C1/9y/JIuQphBYvUcPuRJ7463BJcsF7S94EYwWvAxiNOfvVMDDQuTLo3RGgsnIQFbVZ4Do4aMq2yCcZ5NXbq46HUZO71jC1YBc8evaBPNGYzvP5zJZyFdI+X38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786693235; c=relaxed/simple;
	bh=8y+3bnt8FCkhoMSdiL9+AJEHkctpuem/UqtICvm79xk=;
	h=To:Subject:From:Message-Id:Date; b=JknjQEOS8gYlXokovBuIUTO+X3QDgGOkvRQJ8N58iYUOq+BRuTWoK3RqHqZr1GJITGopoJ8Pn9dvyP6PwwBcBUdjy+3kwOJaxJFahXcZ5I/pi+x+NXzCgj0nwPRdip6RSROZZ6sZ8MFpCnSs8SmDTTGG48uNPMuVaL4VDn5n8ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcOlhisC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcOlhisC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7594C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786693233;
	bh=8y+3bnt8FCkhoMSdiL9+AJEHkctpuem/UqtICvm79xk=;
	h=To:Subject:From:Date:From;
	b=kcOlhisCm8Zqth15I6gaieI2h5tpbyCgPQ6kCi85uJDHmUTpUrQ1+Arlh6N+bX7Io
	 EvtLonhQ6MPVWHljLQQLw2CHeYguZV1f//Bg2RqFENHbkQEggT5BWGpXAemjzM0aHl
	 hfqauSMy42Dho26svabcp3HzgVzj/53ontemVdBwAeoBwDDQy2eo+ywZ11IsC9J13I
	 fT6G1TTVHuv6ClNhTxjeiTxuuYDy1TaPTNu9jhFEle8EC525HkbQUp4qID+ECNWIMg
	 X8ehpiVKGgENaIbnQ9qI8vx2DbfvqKuAdmH2xyTFWA/2TiDD6aqvMlNKo+IEaatjaJ
	 BNDtF46oa8ykA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A853BC5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178669323368.31908.180223993087123871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6adb4a5357f1ba4fc42547875f90037ff87e25f3eec593b820621ffe57a84aba
Date: Fri, 14 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786693233
