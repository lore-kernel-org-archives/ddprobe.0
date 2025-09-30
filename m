Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC3A1A9F8C
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759193994; cv=none; b=Oh8YdbDz8sP22PnrPn1lonyLbkS8rJ7Oky1bg3Hln1V3GN7E4XDiCDPxBRMzsci6raXdJ6TgdtcrxC1RRaTy/Qdpso6ghIIVZH4hJf9aZiuZ1xHZig7cwas2zf5t2KwUuHqB2W1mQ6hdqmJ5lZ+g0ZPx/8Mz4kGse+E00vaJjno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759193994; c=relaxed/simple;
	bh=5QnY10V8tTM23HEGRpe6lfC91cXVlkhk72Wt87do+wM=;
	h=To:Subject:From:Message-Id:Date; b=eRE86EskqAR8j+dh7oXJ0zM04fb6YMbk6/iVNecQCqURAA9Ox0BmK/rsaOpdr8SURqPWn+7FruC6a8zFNjKuBY3/VNDfNzuc+i8FH4MsvGc1b0PJongb8234ftD2+w4uwd6jMH1QprFrmd84Km3HofsK3hksvdLK6vn4hoEzpAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1HDNmLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1HDNmLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF661C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759193993;
	bh=5QnY10V8tTM23HEGRpe6lfC91cXVlkhk72Wt87do+wM=;
	h=To:Subject:From:Date:From;
	b=O1HDNmLtQvCrQV8IJHj4S5MtoSDqKPpbMy8auylgK6qIa5ey4xiG/cQ7cfKF7oPRP
	 jzscIoU04M4q+KswbK+GWB0tWbVhYkKZRHbi7U+J/c0mzA4b0/8bT2I3Q09xzaUZAx
	 b+yVMUse0bvujhDaAQvnRT3yRFCIRY9YezxCTISc7X4MMmPXQ+5u4xRzDfktML0t+I
	 l/9lCY+o77LzbTLXF5PMN4K9lmY0Pt7ywe0AeIIWOJ+ibGTx8fmUwecCYeONy8jnQ2
	 iH1emdu7Q+Z8eB7tTsYRQgk466Nfu6c0vDS4F08snt5te5Z1UhtnQMFmFtXplEunyK
	 Lz784E1akisZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981E7CAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175919399358.9396.2450780555696972938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2471375164d610ef237e15fef1b7704136fae7e12a590b0106359f96bd0dcf7
Date: Tue, 30 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759193993
