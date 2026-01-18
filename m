Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A9730FF33
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768776834; cv=none; b=GOpIUuYLDntXA8HWp9G/5XDc2ayjafg7WZH296EAwg9mLYJC5McMJs0sAlqrqEvCpCURnLwnIax4uCJq9hZAzJMVtF1qHHhD0QgIyvq5fKdPjAT0ocH6GXLmBk4XLiDL5oi2M967+vn4FdV3gLrBNakZyZUZVJLPFN4+0BRwD4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768776834; c=relaxed/simple;
	bh=YmKCQxX1zLuNPXovJ/u3zZ5vewTU93W+nW/DudnTRSM=;
	h=To:Subject:From:Message-Id:Date; b=IxRtapqJ0AIqsV5xWkAa8wWnNF2judDg/MFmEy9Blf86Ainx2PuXZ6fI5bzRwj3e0MefG8/LyDPWYdb84D/izKDGrneLijIX8syCBUFA5iwaeu7NOL8ed2qP4VXyQQSaLeoK09dYctFLxsSLqXL6uczT0vb3tATkaNnvqnmp0vI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i89hBhij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i89hBhij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55F5C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768776833;
	bh=YmKCQxX1zLuNPXovJ/u3zZ5vewTU93W+nW/DudnTRSM=;
	h=To:Subject:From:Date:From;
	b=i89hBhijCh3KurPyffcoUL2E8cheSebVq+2FlFn0sMZEL823tJYx7avLHX4/y0gwx
	 2A4TXdptnxr2h2BSqztkllU+5B1Nez1iHAEHJCVWOrTRqYsOluzPdJjKWgjbdiVYnw
	 KcRp7qgMfooMyzd7L/PBdZ8+KzvhtXR5awG7ijdJNr51iMvohJ/V5tqlfqeafuMC5p
	 vdROn03e6Y8JQ8HVvnbRmcKzHWp8DLIVSq6C5vSAkMsCxxuly0AX1pqSs/fGQpNBL7
	 ntq1r0VbvEXYyKH28yEu2rVC+USliQGIBUaUN+AZllWa98RYyV67KKIZFdRr9wnddI
	 /wVsdvIAPAAdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C7FC9830C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176877683357.13883.4992265077915358666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2fb1fe3e34a9b5e7a44053474c863c497b8a282eb61a74894fb5f75502e9fa2
Date: Sun, 18 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768776833
