Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3656137F320
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790018434; cv=none; b=PAJBPW1oRwmbeveXp6fRVemoDXawwE57KyA8rJT6xUENAuGxY+Ec/MRrNcPm5mtWQxLHLtJFRN6jbf9qS8k5PCYnVteTlcORXJ6rOwklGzBNtqcFVXwyxC4wcQ+NUdTUiWWklFiq0M1VMf8wXR65vHLtDlufUaKQ2gJpBiy0FDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790018434; c=relaxed/simple;
	bh=IRGjH0id5FvAt26cX4B9IBhf8CtnsY2J0tl1n1j/ldE=;
	h=To:Subject:From:Message-Id:Date; b=ZCSM9Oe99R8Z9DgMotFDh1K8ynpydCWLhg6HWNJkxNj2wfrre8HTR1N1AxD5RK0t2SmGzrBSxCgzKQpAewF37BHVixX0rqHySCr9VG/AyX7Fzd1pm6Pdzms4Cf+9Dv9wx4DcBkqmGwwZINdSy/orawwxSyNCdgWLfAoTuiwXdh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAjGfu5D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAjGfu5D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82F3C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790018433;
	bh=IRGjH0id5FvAt26cX4B9IBhf8CtnsY2J0tl1n1j/ldE=;
	h=To:Subject:From:Date:From;
	b=LAjGfu5DRH5j4OzSfL6ZXiK0qFNfA6p1+/99ZL4pK9QDtWAEjYrpwjA7mvkdnd3xt
	 RDfHMNmTgovvvcQ3j2l/sihMnZzOsc51H3FdAH6AEjUfUFFqvvceR0efvkdkdpyRbH
	 reF9/WL/oYylNp/rp6DqcCpRCvIX3dv89AG6VnENI8bT7crIalbYLG3RTeyVJOlDaS
	 BzCp8Bkt1eItWPgYuRC3FQoj947UaiVUGZYVy9fiSKUVRa5i9akHhZf3x2oR3R7TEw
	 e8b9RrnnESxpdvdxMaK5ar7MbwcV8h6ass72T9VCoPVlxmrpzDUWbYcD4DC/aN6R3G
	 mwrShFjhZcs+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF1AC982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179001843370.17069.745878000213475398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1b1346872e1168fbf63de01e3d41522f8f8a050e9a1cf725cb082ef91416094
Date: Mon, 21 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790018433
