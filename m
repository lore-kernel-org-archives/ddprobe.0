Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358B9487BE
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729667754; cv=none; b=GO4AKJwKwpd2xLWfkKxegc6i4P5XSU0B2CBiouOdqXlx1p9KwUfv68LDnkas1IDuKWo1UZwG/AGHJTsMdwjheCy3CLrp3Kbqk01Emnkw5S1pRq6zHVMrpljppKBeLf3VCAeIwAM3riQ2tl7mlpCdWV/GnEc+mIqMkUjEqknsTMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729667754; c=relaxed/simple;
	bh=l3SJ16JND3IP5HgA4meNWEo97MCX5yqhAHn2DXH1Nl4=;
	h=To:Subject:From:Message-Id:Date; b=h2MDlPrUZXu/m5KmatGykGXJghwf6pMseKfzN1JN6YO3Ix3v8UELrc6AO6p9vNKGT7q+X32AENOkHSMP3+8bS/Si9YIZa89PXVJ5Sg3xPo1bCEGk/gWxKmNAhu0jaG3kYTNH7XKO8HEy3xoBWxIiZ7g09xMOLQABfRgOvfGLwEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRdCtz5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRdCtz5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2505C4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729667753;
	bh=l3SJ16JND3IP5HgA4meNWEo97MCX5yqhAHn2DXH1Nl4=;
	h=To:Subject:From:Date:From;
	b=uRdCtz5Ose9oO4Bxg2gto8D/OigtR/DHZBXKmAWJHmbJtSlQMrKkErn9Z5h/VSiFd
	 3wQS6HZqdbftHVpGIsZCTq/bw+VnQ6NwVMk+irMBbRAtwOudHiDqq2RxuV6DScsVU/
	 VtZ/cmxZ2fJWgZLr1PbljxknQwCPUCTFDrzpEAPDUysChr/fQKhdBzMsvK6WIzq1jg
	 F9K0I1NH5PizrjopROfw/Sp7Amm7dPWP7zOPsi7KLRMWAI1UVmDp9piVCD0jgTi6qo
	 M9PwB/qvmEpyRGHNM7+n0vN1g/7E36NoYl4fzabJ+VAoLNbRm3M09jE2aiXZCcr0kt
	 aCrTLGS9+S2RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DD8D2E01B
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172966775361.3828.12208672128070822644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30ef2d98a66074fc119ee52e0e3d8fa6c8fe39cba1cd49f3e8109d1da4120c62
Date: Wed, 23 Oct 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729667753
