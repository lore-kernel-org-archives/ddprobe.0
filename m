Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4014626AD0
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722069354; cv=none; b=JOQb2sGMztjF2RVOfK248QHyr7NxapUbwRxq7N4imz/Qt9b/2FIftl+0QNnD7wSy81mUoYvYQU2gCLQZVQmbl7Ohq+azB4QoyzdITqKZGm/04hNYVv3ut39KTjeyhVBU7I9sGZFETf5l7JrvthmDV/uJsYTn+g24iugVKZJy4kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722069354; c=relaxed/simple;
	bh=mHFscIOy8J/rNLSYNDmVmEXy+dDPOIMMxF2yBBnKWRc=;
	h=To:Subject:From:Message-Id:Date; b=dSY5YQVugSCzNJrayfwlMzNY+OIVTLySRItLNWHP4tDGbfY923kGqBggpn6n8aWJEtkR8dB3H8E+lC6iRd25nRQ/Fwimo4e9KJRSCZqa22TJqNN7cqYvtPlmqLzG72+cqV1ifxHO6/sCJxffE6IF4lbZjqm1g/e7KoKVYthZ8+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXvHGXOp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXvHGXOp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C9BC32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722069353;
	bh=mHFscIOy8J/rNLSYNDmVmEXy+dDPOIMMxF2yBBnKWRc=;
	h=To:Subject:From:Date:From;
	b=tXvHGXOpLW+nkrBPrLRI5ZTziHNRdwPid5OpVNwrxB6ZQw6YPfPQxfIFgLX2bRVZ0
	 8EWWmtg5qR581Fl5p7mojzOFnq96RehJ5zBPbxVquUHphaiuR0/T1X/Hr/178pIwS0
	 C+2+FFyL61vmVowFevvEXVLW3F2qR1WflL16bb9qS94BIKNNgZuhVj3eGSgXXpUesO
	 IYI50M1TypYOV5+I9mKZz7tSpeoOsyy/cM+9ltLCiDuC8LYIWbab/qm/p1tj6dYS/D
	 LpspCQa6HiPDzD6owvEevcJFm+JyE9PT/s2aMtj0WqIqmbbrGcotop/TJpEUCO6p8R
	 XRTBIc4ceZy0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1953C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172206935362.6961.4924372032205848499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ebbd5bbda2f20fc7981215a79a9da08304fb8a45d3e25c04e91bd415162a8ee
Date: Sat, 27 Jul 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722069353
