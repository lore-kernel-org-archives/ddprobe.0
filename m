Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363271AF0A7
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747147194; cv=none; b=f5eiSqCMH7TDuu0yLkxkhBDQ+iepALLgOJmKnXs1TmNTqVT4Sr+i6mIHl/CZt56BI4g+pgu3b/IiwDmkSRLgmOtwJ0jgA/uJ+SJFJOdSYZ6DqnyTGhcF3PdsQapmkxaoV55CJgbadGzvI+pgfKXyCO/y/+aFatn2ilJJ0lISbBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747147194; c=relaxed/simple;
	bh=flbrjXghT+vpJ40ww8lH5EPICKOPpxPiyc2D1rRURtY=;
	h=To:Subject:From:Message-Id:Date; b=NijbbPus46WohKbDfGuVLQPrWZNiCaE9EMkSIu5EXHXlOje8vGwf/sLe74mslZGDz0dqxJtHnfaQ1zj6H0cLYr+31ZxLldqJn9VV2iSEGbgEcVwbGZXMkeoV2dO+7CPWLjzY2SHTRLicwFzkjfysismpsNWmioJZxwpM2FCkYbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adqwYoSs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adqwYoSs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0719C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747147193;
	bh=flbrjXghT+vpJ40ww8lH5EPICKOPpxPiyc2D1rRURtY=;
	h=To:Subject:From:Date:From;
	b=adqwYoSsnFiplhKdZFua29kiI0lnfGxFgqQJTyx2ddirswh8fYPsMd7hjKPioHw6d
	 VJlF8rEJgUHjl+nTWd8jH8M5VvMXTpBNT6O4ZRyevzmp1jKwVOn74i1oVeo1y8U/BZ
	 6gjr8QpwBVwlrohZi3KQjUvTsKns8++ILCk3Rcb8CmbQ4BqtJSXsN5vCN+wxGltFrp
	 JLiIn3c3IKmsJJELgKR9+CHRi7/uAAHmMdzRSp8EHIeiMbxPVOmkD8K31XBM8MXEu9
	 L+a7HIxnlX6ryvFZij1jFvtV0sbc2ad69uYbWkceHHYqS8kdINaZqDHWSiB8lY+2Q5
	 ENNGPJhaDdd2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7CCC3ABCC
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174714719363.11760.2453614803606538547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bf148a46fb717ae59a06a57614f8190a5cf6c6214e3db26383ff38cbb9c5f1e
Date: Tue, 13 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747147193
