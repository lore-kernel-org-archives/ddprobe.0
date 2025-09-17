Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288132AD3E
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758140394; cv=none; b=CpUL5cp4jAOXK3VRDW+cDbGNDfmcPc59C4to23HRe7o/skkYLMKz+7qJ05vcKLgE/HSCElSnEdhaB0NOpZiQqHXL+eCEFeFgWTL6ax/7Mlv74sbtfmYpIBfbamT4kiL80pMeOo1anxiPr5TxL9ine5BfOiEPPb244Lvv7FTx95w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758140394; c=relaxed/simple;
	bh=mec6p+9oXoVMr4HRQyGi7KmSK1qLib+Iy2QH9+SWX1E=;
	h=To:Subject:From:Message-Id:Date; b=IrMtU7GAr2mp4uJSn7Olu+dOHIljzyNZ1xQ+Wt6FM+6BQhd81z3eRK6f0CQ2M8TMNW+A7lAFw9D1k3cNHz7xOHz5ip3TpEwsJIfrMdulmt/1UIb3IQO8dzrYrCRjBHES/YU4R8xbh8bUFfVAD7f3lAZqaj1braH4TK0yDgk8//A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DgnZCzZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DgnZCzZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CEFC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758140393;
	bh=mec6p+9oXoVMr4HRQyGi7KmSK1qLib+Iy2QH9+SWX1E=;
	h=To:Subject:From:Date:From;
	b=DgnZCzZXodwntIk1AjS5dge+9OL6LECDekyZct33eLfZC1S3z1RUYL85C1js8simJ
	 AjLPO3Xbx+f4vNq68ARYIzauh4kdn+ExnlGXct3Mb5eiE59OuIQyMh5JMHtR5B00E7
	 EDJL8NvidH9zgOvBgb8uveb1c3VA3GT18vVCXyRP/kiXjHYMFW68SjAKZURKCN4vEy
	 7v4MFoJ8dqMlrdp2SDVWQCoLNu/ysIK2ActuR14tBTaoEr0o94FMhLEATbpp87twR9
	 KHlRwTKAC2ZjoBicVZ4nBjzjay6PtyYh1wYkeXHaFwMLbfaWK5Y2fgGrYpz9AJNYJJ
	 v1xzUZAUsEu7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9020DCAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175814039358.10290.203226886637146297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75d327fd7c8c085b5925e6aeb652f08bb0f640d2f6bafc5f40d91dc8bfc61b85
Date: Wed, 17 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758140393
