Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E86F175A66
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776475654; cv=none; b=LntcueUOY7F/e1DGbC1VK9Wkn76Ix22m1lAxiM8+lJLy9fcNGlTwPtRGJyIsX0FKhyv/ofu9XierBVn+9Rfa6NsBW1JpeQrFoevd8wCpnuwffPy5qQSkU1UpGBGNbd01klV720m1xVq8Ats6mnu6oLh0vp5gsayvboN3pfCX3CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776475654; c=relaxed/simple;
	bh=bIJvxyxSnui/vZFWAVBPnyyNu1n9mqiTnkoAI55rAes=;
	h=To:Subject:From:Message-Id:Date; b=EkPydxH2o+x44uJXN23bLLGUwQgVRchBv+THNaK4WqlGwq4N0Cg7FM7HQ7Ik5Dox0Rp2rLfsy52Ba+RSVmEC0WM3c0wB+GSP+SyX5jfRFHSr2RRnuUpmnaN62/C2rpc55TcWSiwIqOQIcObPSTcocMbC44/Dyof1i9dYuxpEnQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RpaXbaWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RpaXbaWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D4DC19425
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776475653;
	bh=bIJvxyxSnui/vZFWAVBPnyyNu1n9mqiTnkoAI55rAes=;
	h=To:Subject:From:Date:From;
	b=RpaXbaWSF7sXe46VcgUB5ZiAFI+5XRmPUKmW/EgkmpVnP/2hg3LJMU7Mp+Nj276NA
	 SUyMzB7lzGAkEB3ui2zsDB6Ymdmuvzk1DvrIF08fMkdrZ1GXcPGHwpfktS+RfOytSe
	 +B7o8gOfSr2rFLaksmtMFXR8idM3MTEiTaLuHHdiT/rdZfQ1fDL5k9BEhzcBH3OtRZ
	 krx04bcx9mMgs7bHjOob4IcdXvJM0fYMKu8ybC0/43Tq22fVNiKSLkwscqUGCHcDHt
	 9oTc27QWHu7Gluy32dvCCBhsHmWidLjciyj7rWYNA6Og7jVO5G0u7rJxziZiy7K38k
	 1F+NTE2+d7XTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5F0F99C63
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177647565368.4608.14126447525280082024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8ad4c821c3ac606c84daaa92805acf7dc5d590d122a513eaf064d90a0a3f8d6
Date: Sat, 18 Apr 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776475653
