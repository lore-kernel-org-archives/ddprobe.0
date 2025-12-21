Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6EBEEA8
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766354634; cv=none; b=fHe1X4cNG//QV/engGbBbgrV2XFJXIXEq5qaB3Y3JNmHWBS7bcx0YAoay4L2jo9eMtBKHAj7yyRlb/vPzyftJuokk/x0m+PS5RofC/eG89RHrMgwnnsYHW62h44wpcZ9KtbaY+f26bMjcqAijAw/1k+dvMUs6riirBloDptShbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766354634; c=relaxed/simple;
	bh=h5XMmdXUcf5a0jJULUCWZ39dJeWC5fEdXFinptEeV4Y=;
	h=To:Subject:From:Message-Id:Date; b=lJajB/g4R1Vq+ZYSHW9VwwcdMG6DuA43vbR5yn3tZznHHgIciJtEypdb/vrJO21WT58erGyPbA5hsBtk3xSmeYhkGFvLWa3SK0OcXWknz1P5wddu3aDXOeclkk6Ey3PiPYQZEiA7YmqmsPuibD/u1xC2gRgE9+4BRxjWg4kbQlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABhihKkF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABhihKkF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69FAC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766354633;
	bh=h5XMmdXUcf5a0jJULUCWZ39dJeWC5fEdXFinptEeV4Y=;
	h=To:Subject:From:Date:From;
	b=ABhihKkFRJveylnzbF0Ss0SD16Qf3rIjoCJMw80zznq8E2CyHDU8vo9sTvmQomJBd
	 7JU2npo8aMjVVwJbVHs16Kf8x0A5JIi/1bNaSVFTxZ40yJm4WTeHShCqY+DUMzvuiP
	 ATBb4DanHxKiIDJoSEr7BGzAhC/2ihnZT/XarwOPOZ343v26/x0co9Qrl3NKF882l+
	 qSORPDFVKigwj13f7KQwn4aohpv5N5D9lGpHBYgNZBNqXho17ql1jKyavj9xnRyb5t
	 4wnojX6CThOiKkrArqGbbHVNAbxFaRgAkZB+1OzChFK92gyxrbpieRKLv0E0c8jb4R
	 rAGsF82R4csIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F4BE67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176635463358.27966.3024189238551907329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d1ef637808f96864287d1fdecb9d73c3a1fe7a53200ba1c024d0d5d28e29429
Date: Sun, 21 Dec 2025 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766354633
