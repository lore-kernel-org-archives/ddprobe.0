Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355F31D63C3
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734388554; cv=none; b=D4QHENlWPIFjxpppQUyyrm5w0uoVStWf4XFW7vjRy7X+bCCxepa9D/oMd31wCJad/JgpZPm4HvoeBZOCO/aHGXTmFjMrkqmRgQnMOcBV5xMf8gaVtagOAwe6HkN6YnkytfNoE+aHaTaGAuHFtsnaAx+68KBI1ta4po1ZANwBxp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734388554; c=relaxed/simple;
	bh=HPBRC31/tfkboL49+9YgYgTR2FKAQMUlemroLDpDlSY=;
	h=To:Subject:From:Message-Id:Date; b=hzKNZfJIu1XXOXT8NPKZy4IDISDSDwMKRwVYP9me58Iw7iNq73f9XdV4fnsx8o9IXJG8U+ca7UB76u/TGqZVnjDdq8YxPd5gnkrqOjQFyxOJRm6IuynQ7Dz3pL7U5egNssJPeultDtAJqRexO9ElEIm8F+jAhSbzenUTxdnFaU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=St7PDLz9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="St7PDLz9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC937C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734388553;
	bh=HPBRC31/tfkboL49+9YgYgTR2FKAQMUlemroLDpDlSY=;
	h=To:Subject:From:Date:From;
	b=St7PDLz97JqzGZJGETmke/MUBE38Ze7ofe5/ZKW/ttFOMqRXer34K7tl02lww29ov
	 oageopLaMTwSc0I8XE2uQ96YywlNhsjYVvF6X5Yw6fgHQuqt8pV643R3kiKsCrbEb6
	 riGjKq318hmDHMt8Fd4w9hGfPzOT9CXfzf7d88wPWnkVkcchiPEHd4/YyA7tZHBgzE
	 522sTvjvhlQ+OtWSf86NVHBdjQ9WNWmxwwwr7M8HA2oOTjf3rErtQ/Oh09lZEjvh1f
	 LC0OPLSvXgxSrMp2n7rhhQ9PF3OGgUF/nFzArxE5/+N03i6dD6rczGCndFC2Sw9x0/
	 uUx3xNNcmBdKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956CCE77184
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173438855360.12133.2316113703481877209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a114ef914c2ffb34d146fc082f0ae66322a09f108375a2f628aac82d202f7ce9
Date: Mon, 16 Dec 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734388553
