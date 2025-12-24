Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30016149C6F
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766607834; cv=none; b=J7HTGdaXw7l/lKhXteA7+K6lvfIJ8Q3NhMjzU4m9dLhc/B32hCxhXmSVO9qAu6KXn7JDn4goPoT0qnnKE9BteVSTkprHl2XHYPYU91TBU/B7TzfjGtg1PlbLQR0+AOgHFPvUN36u+bk2hSxv4Lz/DRUrUbzM3LCtP39Pfs8ZTO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766607834; c=relaxed/simple;
	bh=aJzzoDYuKl6r0fea1z0sYLiUhgGy10oRP60CH6AVYdQ=;
	h=To:Subject:From:Message-Id:Date; b=PFUfpS2zHW6oynqQiF6q5q+Y9rAS2UncrTrmx2ZReLMPY5xDrdDrjkqOnuE02dFiXnNBLNDEJzRVy6fVa3FkJmXYP4nSAq7yPOBI3PE0DZ7owATMkKFKJySBmMGGsjAOezdomQtdAzOWEvFlZ4I0f/Giv63KwMkF+FDsH4XvbS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qr3gi+/N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qr3gi+/N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F19C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766607833;
	bh=aJzzoDYuKl6r0fea1z0sYLiUhgGy10oRP60CH6AVYdQ=;
	h=To:Subject:From:Date:From;
	b=qr3gi+/N2TMa1Plx1lEYk6Irz3Ak9iVBIqqehEzfgQu2pcbsytKeomx5wQSYOT4D5
	 R2KWznuBFmZwMKTd96mMwpFmfNJf0a3qaNFxHvdcn0AEW3eFsGfRDvGpFu4g/177An
	 6Egkudgv0zTHh0P6x40XPtfH51IjAPwvjy2562v3Hshy+xsnYCmopvODtHkMJsc2nM
	 IGGm1KxDTbmswkooUkd378fQn8MR8Kqc2wMtI9j50Hj4vi8TuSrhfdBbg15UyniW+B
	 0vgqMSVqzxksJR+6rk+2RdLH7oPpH49RSPbMeNwXlWl2fWpyQDuT2ht3bLv0REy74G
	 CyAqss3irfEHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95125E7848C
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176660783357.8377.9373294967546278179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 307db43dc90fa2ab41b4c4d1b8aa42eff6432b4747e96b7c463a8aa24257b676
Date: Wed, 24 Dec 2025 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766607833
