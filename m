Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1821334AAE4
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766513034; cv=none; b=AzfS2EyiBkfadnF0IH2oyns18ScRdjjriUQ+/s5QXeZcgPoJ4mUDIc/i5lopSBN2JfT0pdc7Fi2qxU3Kgzdccxcyi62LpP62VJE39DbAxREG47qDosC/YgranMXyfzRoMkQqiWm8dCt40QTChMf+7rDrhgBr5aUz66HftFzZP1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766513034; c=relaxed/simple;
	bh=PSgPNhyslGkBhl1Ox8nRN8perCqr9U+nAvyfbEHczL4=;
	h=To:Subject:From:Message-Id:Date; b=sXN1DTv3dLz8rcOLB15jNLbT5wHYcivUpQkbfcZqXcm5e5YwCxbBHVD5zfq2RuSebqW6v9ZUFpJRodX0Qxl4RT2QhmuWk2BDfI+HB0vSLkPFbz3bAEYWCK1dDgMpjbMLcwwww9vqQ5H/wFQsgGpc79YFsLk/wvd1CcI3SzWD7EY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swwDvGpj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swwDvGpj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9C8C19423
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766513033;
	bh=PSgPNhyslGkBhl1Ox8nRN8perCqr9U+nAvyfbEHczL4=;
	h=To:Subject:From:Date:From;
	b=swwDvGpjXnHc1Vo/eYCPQGtePNzXyjK6UgonFDlKWDDar1HVlXeOdhsGXvV6HIr+B
	 vF2TChlUOOCGR1WLtyEKElI0zUk2OHhIWrlDH4C0R+zf1o+rd1P9I9N76EinWT21i4
	 hKtQAbrSxXCRCMvNAVInvCnzpLlPieAwfGycZ4miuBD2Kw2AEvU5fHFQL5b/IBIn5d
	 5bRn4/gCYUE1/qohqIgKxayihmG09zpKC/qtaX4N9jl07IFbkaZH+HrfPru8DvuUH2
	 XW3YLubO75mIM5csboQSbXdhJTMNTuVsACrO2/UfNEz2MnC7eNp90JBGYV1tkUMYVp
	 n6qpRhcfs76cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994CDE6FE24
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176651303361.31163.16472145869686767931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e0b95690ff3a019d559d8e74d89f5cea829a5840e6a2c1554fc126a3ba30af
Date: Tue, 23 Dec 2025 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766513033
