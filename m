Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E201E5B64
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776043654; cv=none; b=tBxT69aq6R5VQdFO3EE/fVI9g3lITLNQV3MBF38+fe3X1cSBcoXrfwugzAkbY7r7yEz/lfZk0G/THBivYYLFD5CouHVCrn6a/Ev9YUuoL1+NQdBo1Wj54mhl9ltFcob2SSNNIvMI1auP8whL29bo4xGYpPddjJkjCjcloa4T3aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776043654; c=relaxed/simple;
	bh=/oMS63cAv/RTgT3FiDO2aJYXAHUOCpr9JP9dlaDaxwQ=;
	h=To:Subject:From:Message-Id:Date; b=AHBeMmjPHadIhV9HhYtNHxZwCQaQRYaI7DWz4dJeYAB+zFjjR5bd252VERkvnVsUVfFXif+wVX0G1pQR2mrfmpOTET64UUlQiDnlZgmSNsSfus4IzPQxYJaOQedZouzNk0HTd7Xx2kKQnSjxryQyFMrGmpQRxvxKmz+tahKUlUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+Y2vQjd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+Y2vQjd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B73D5C19424
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776043653;
	bh=/oMS63cAv/RTgT3FiDO2aJYXAHUOCpr9JP9dlaDaxwQ=;
	h=To:Subject:From:Date:From;
	b=c+Y2vQjdwp6Q9FCFtlzf94DPXffiY10UcRWGoffGKmL+WhVDGnlrNvEC8l0Nx/4hK
	 mPWzNtCU/qmjkCrDd20JelutcygxwBuB3mavRWwBgHhRsI701ZJ+Gm1v9JykQem+EJ
	 B8tQd0l8i2otILEbHrsxmVraNqmXkGwtAqQVQOiQeu8+c88R9KfwfHDOnMdPKe8GZo
	 M6FQT8n4YQ3hadsI3DyenKquGlJd6xGksxLyZ6DpzNH2nZnTvAgrRukM6oWVZCKb6q
	 taQ7j3vL+Mu9k7P3SOgNd1zyuoxon+Ce4MgFl81xbCaVxVf1bVX36reog/iEstcL3w
	 NIJ8C8ScM7COw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ADAE9380A
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177604365368.12591.17028286132579255880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81365c921bd343b45b7fcf490fd491491d1aa261ab86c7d57ad657e4d52b05c0
Date: Mon, 13 Apr 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776043653
