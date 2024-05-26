Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E822F55
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 08:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716712463; cv=none; b=N15PXCQO3ZrG4qDFl5tTLXiy3sZ4DT+FoU6hTzku9moLvbjEzk0akv99i/CYDuxynF/xMRi0au+lcNOWHNbDlFDqvmFedG5Rzb6uGtRvKl6P8sG9EckwqySS2uFINDUPlUza+zhnVsd5HNBRF+SY+UcUSMWPv4xnZYxJXCYhc0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716712463; c=relaxed/simple;
	bh=z9vFpN/h82FBtugjtJUdzvXCz3Yx3DIIHVg8i/9Mins=;
	h=To:Subject:From:Message-Id:Date; b=qWanpyiwXWSlJZ5u5FdtrjtmW9diwx8hTpBZQToX1xgUKuhtpC5EGHN3YMdOk8QO2ilzoe/fnfQ38E9vbiBRR0SmlcHayn3TMSwqFj/gzXEuLiMjtyR4pfLtHnoLmNZCauJx2anQaska4JndBZMpvg80LqBE5qQJdO8O2Ajdm+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSL+ZPz0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSL+ZPz0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7A74C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 08:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716712462;
	bh=z9vFpN/h82FBtugjtJUdzvXCz3Yx3DIIHVg8i/9Mins=;
	h=To:Subject:From:Date:From;
	b=sSL+ZPz03ux9MolXYOGM2avDH4WJ0Mma+dJt3L+bAtH125Ne7eDT445PXTdA+5eKv
	 uz2Z17FNGrIle2R75NE3ryXu1m/J8RiY1Rcbzf4qm0mmnbp8lX/iXKJYWgdKQOX7NJ
	 YHfrhkCA22GE1n+RC7ufZO2MfV5z32wJrc61rfFZN7Np5q4gCk/44AmgIGRS8hRnmo
	 oFIFp2yk2E4oTNgSpVm7ZdwT4f5LaxheX6rjCeW+OX8zJAEECPZsSG6mn7jDL4EizS
	 qztzuz2M4zh6clrjJV2dHYJKU2ZeGqCamwnvN8Y3l1huBFj0fu25l/AMPYl31rFLoN
	 /0hVjCXi/Gtrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C51B0C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 08:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171671246275.8762.4798258657768123194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ff0d399ad7abc2c7a13bd071e1843a00658a34aa3611ca24f13480cf5eecc66
Date: Sun, 26 May 2024 08:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716712462
