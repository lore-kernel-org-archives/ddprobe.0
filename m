Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DED29CE1
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745123394; cv=none; b=qolu9BWa+b/4t3n9TrNrRxOlvgBvp0VEQHgoUviLC2ZzedUhZ8FAult0EOpBoxgDHfqgqWz+o4YvHQ69FdDOkwklaKSnRQaMa4YLs0tBXsqIqFA6uoSLO4bufKLP6JtaMcbgaWpnYkdavjwdlYfF5R+fuQKv+kgiofK2AHxf7NA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745123394; c=relaxed/simple;
	bh=AV8P/9n1U9Rrvd+HxzOEBTpXAiaFJvA5LnexLAfuuUg=;
	h=To:Subject:From:Message-Id:Date; b=RWTgyeTJMTvPjDE9NRPZ6TBESHhqNgTWbl2YqRQ37PDWeDlaK7hoswTDB+zCI579pQgMhhPxOO585oAsdSywvm5Oq6gVMmn2my3QGvJX+EMqhPpa+p6zve6ciaU99eTcIAtN8T58bWyYlhpRpqSpJSbE5yQHLJXFp9crNiNxDSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WExLO15C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WExLO15C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD14DC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745123393;
	bh=AV8P/9n1U9Rrvd+HxzOEBTpXAiaFJvA5LnexLAfuuUg=;
	h=To:Subject:From:Date:From;
	b=WExLO15C4Ra6rFy0oSNk14ECJ4/2WAFrNw2MTs0e8VIcxraRE07NUa2aDQFmrhIvn
	 vHqhjiIB8qtCQEbqFZ1WWTnAobqx1xO0UM5U5TZPmGiTV/NzmkDDL+l3X7fGaCesB5
	 KtK9rS5Gszo61xncF4wpcja2SU210uc6BIagSlQdCXrUJtv8USXRqjuFVKrgQfxmd3
	 r9WJmc4iiimhyRWSi2gQz9Rws3VLHZ/GiqRC9F+hMPkuERt/Ah72ly0cVvVgbCVRUK
	 95pLePXOW0fAndXrMD2doNcKh7VyS99yGsW2wtEiIBTEaJFlBr1e9KJpCUBdddavZ4
	 xUjigK5XqZVUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936E4C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174512339358.16084.3273568329913331740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ee7bb7d18cf8ee35f940dde6d09494384415717dafd57bf69cf055f8929f335
Date: Sun, 20 Apr 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745123393
