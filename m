Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A555745C5
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707193697; cv=none; b=cXECSoHUbkRb5A+u6ldM5oBtDCP/NVEczTIbCwEceDamCbjdXXL5caSOOIGvjY9naxAdjQVX13lpyS0Jz00jbq3fTZcO2h+DZiIlhiggZCmyoVd17OTjngciIvxDMVcYFIqegmb5xcworoR38Rzgz//D5R7MYwLj2ooNE5M+ZPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707193697; c=relaxed/simple;
	bh=u0xRMgWHVJqW47M37nhs3sJXzfqwdfEMFfmOyo3K300=;
	h=To:Subject:From:Message-Id:Date; b=DhoPqrCYggJYVzdqtjIftjNnbS7BbJcSLO1avnqRzpU+pft50nKOcfCykornDdPLs4ioi28IgrB3VePGQtqd0bqk0s/7DKzIuyLo47jH2phi6llNPF8riHChkVpeuAeXWnaYdO6k4Ms7V+kY4hMgeBbWM2ycPB7Lzl4/pY49A1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZFn2yw4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZFn2yw4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8483BC433C7
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707193696;
	bh=u0xRMgWHVJqW47M37nhs3sJXzfqwdfEMFfmOyo3K300=;
	h=To:Subject:From:Date:From;
	b=RZFn2yw4Bsw3QbRdWbX3c2wq6HZ5K00MdQ97sLHlG1mFJKSJ1uM/I3sUPR2Pn3PZL
	 ody2Gu4V/OlIcw0NmM5zPDAoNgeIjdj6lOEcLYxypjhfN3YML0gP8v0TDwp720HF2T
	 VJB7sHVutHo0q51CydWrr4tx9XIdrJ6YvrWT19JK7ElivdTGyHmxOGBVplQb8O6Ubv
	 TBhuKTwoBv4v5XNJHJ+PQxhtsCiTV380lDa3gcFJkE41TKnnrH1W5JGoJwn9K4oit6
	 uDiifZLzU7K1JedsBU//J+Hd23bi2YJPb3tEizcVKhPlBeBZIMm9a2kHCnXfqoPKjW
	 DyVx2YjUUo4/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69A84C48286
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170719369639.16619.2787713155230197011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0fe285f667c3e65d05ddbf49822f8b3e41b9cd1827efb5f01e71ba5a83f6c99
Date: Tue, 06 Feb 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707193696
