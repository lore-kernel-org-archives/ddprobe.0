Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002A52914
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707715097; cv=none; b=KzN9HJzNjxTOrpLlDnhbj0ul258xfK6gyEHX/SJ2WYgFw/xskJg6IiIXu37H7tOjLYUcvjpwbSCGdPCbQiCsylAry4sXuue5sDpPnjlXc/Lu0pQGWOgMlrbTKKmjD3N3o0Ftq9VksxKR7ft3xgTKqYv09ljgNnonA4tEqv4F2BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707715097; c=relaxed/simple;
	bh=prQxZvi2P+TbohCSWk1kHCG2L+iyVdopDl2lsblySSk=;
	h=To:Subject:From:Message-Id:Date; b=Sh+Z4Wun0mIGb13J1pcFEYqQxmcvFfccFqrFXBYEKiW39efHG8lHgABecuMP75Rf3n8OuoOGUC+peTEF9VJ+7vynYvQ/jL+ZJHMOlWaoE9/xqA2DPosu0nJ4G/yIvUbgNh1vnSs3c7J7m0bME78NDdx8C6C8FNFNZzi4luyjdPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VK3VA4ZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VK3VA4ZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80A23C433C7
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707715096;
	bh=prQxZvi2P+TbohCSWk1kHCG2L+iyVdopDl2lsblySSk=;
	h=To:Subject:From:Date:From;
	b=VK3VA4ZRtygHWc+xub/m+WlFt3XAeh51qxm9H1Kjq1MsuP0KNybghdEkLAQBEnmAy
	 JABJa5WXGynlrfyG1Il8XPVf3PHtpQeRFdKv8fJAYiwB1PJuGOeimJw9cjjw3FPjQY
	 002zBsAMS/nJdHtcX0qVyYQKijO28fJTKR4lstcvr5tqzbZPAoInqXPl9h9YJ3gH65
	 KkKHWv5Yp5eCCF/aBMz+SYgLpS8nisySkfjTHs1LQ6vFSr+YvEvVqvCu8u3C29gCIb
	 C27qvA2Z1EXFZlg15ut69Xzbu3sQBKV7jFnu9aWp0UB9kLiP9mkh8uH1/fXDI/pNlG
	 2s8WQyVu3OxoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66286C48297
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170771509639.24869.13888914975826783035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fbcfbba8c18575d7651e735230979ba47c472fbfafcf84aaabc5bfe70bbc9ce
Date: Mon, 12 Feb 2024 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707715096
