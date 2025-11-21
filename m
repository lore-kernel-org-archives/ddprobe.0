Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE612E7BAD
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 03:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763694714; cv=none; b=Qj2ImTcGLh5UIBUctUaWfNtOvf7m9Ko2d+x67lrEpX9QiNrEp+HlFpY0WP148qo/1D8F5GP4d10bOlTt0ek6krdor6xI4Gdq0pT1AY2cCoIixRxx8tsJPYto8Z2qJ9WLTRBBDVylTsJ7EVVvQmrQB+wJXPJBb3ksNixNv48thcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763694714; c=relaxed/simple;
	bh=U61keHo3+B+DiJXraUeWoewy3vbrXQDRQFV9RiCOELg=;
	h=To:Subject:From:Message-Id:Date; b=SS1jinHMZOw/nmD9QoRe9famCY7t4WlLKRDV+YrLjG/YyElbYzoyMQJuMaqZ0OGflNHNszF6DF/waq74HAxzvWrzN4DZt2jGWYsY4btQw9g9/KErSgNR73QEFuf/72XxU5BNfeoQYlQ/nk5CynxB+EuGvWQshORhUFLXkZAzp+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFvLfcTL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFvLfcTL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A57C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 03:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763694713;
	bh=U61keHo3+B+DiJXraUeWoewy3vbrXQDRQFV9RiCOELg=;
	h=To:Subject:From:Date:From;
	b=DFvLfcTL7clKW04mtFx2rYPYx0gOlUSi62VbkakM+qkz2RvVHPiLpw4+t8sW7Mm95
	 EGG4RQWadXJ50a/wGffEyQ9K0qt2+f47TodJPPq0tU3SFRRLzPmgWLw6V23pafKLTF
	 a5rtgBinfpQLenjYUO/f9ouET9ues5qWt3YdFFHnT7/im6Ur6FdbR/OB1Ubbq9Q4gq
	 mrfs2vl7jRY7OLx3+DLhfvUBQlY598QXzSZe8dVeuoMieOC2bM3DUQwl2Mlv10b1Em
	 MA7mcvGObXXTZj7ROSMMPmNhjqlom2nk+uGe+6zzSHhL0TNvXu+DXaJy7z7T7Et7kn
	 xXpSDYG8MnzZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937D8CFA466
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 03:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176369471359.21761.6034316839952239328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c03422efe6a27d8e7b98bc97c9561c193f926a5b1dbbc9cd0fbdfede1929613d
Date: Fri, 21 Nov 2025 03:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763694713
