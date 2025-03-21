Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BBA1E5739
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742546394; cv=none; b=oSU91zVDDETEB70P//Qg1gdZgKDSAgnUlcOn/xaAoyz8MpfEMjKA1rl5bk4N0Um1q6deWdSgiESa0PuuTvBOjVS5HeIgmIeiC86wnMn7H+s3eiSkUYl3JgAdxx/FxL2Gj9ngZd4TNgDlBamTz6TPfgoCtsoZ9hEzGhAFjzt+e5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742546394; c=relaxed/simple;
	bh=ZbilmItvvCmRjCPhgdjsBmor/esOAA7L4z6Busy4oCc=;
	h=To:Subject:From:Message-Id:Date; b=GfEFbF1eUZLCBWbMtp4NnCQOj3GRix24EcfQMKmTO6IXFtQAqYPGHn3uJAgWHKoEL3yoWAKGfagdGhbWWdwNFD8veSfm+3YrzV0ABComFyEY6rmMbUYii54+YwEOHxbEWLXRwAVS6qXNDrY9YkNVfxRN2BqxN9t4PTxfwNEz5cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GA1epWN8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GA1epWN8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C595FC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742546393;
	bh=ZbilmItvvCmRjCPhgdjsBmor/esOAA7L4z6Busy4oCc=;
	h=To:Subject:From:Date:From;
	b=GA1epWN8iDsj3IP4QXdi8AYf2cSyxRuG1AR5CnW3XH8qMMn4MM6nBSrhB3xC7IM7M
	 gSwQLD7GaKIm4KPK1C0/xFTYUlWwjQNRj1rC6ZuUeb+oI7tXN4XqBAUfM6ezne5eZu
	 MOwslnwvU6sDPirtObQ5LnhUgLyOkR6NQLHTtMJ4faYL94d1T5VisS43RkGIyV58t9
	 JVCjus8rqeGpuSGfjVKGlO9MvRa5QCT5/Y1MoNBZJKTwz9R220hDEWoq13ct7JLPS3
	 wqJRNZ0Lx8GxvPJ+h7dEPXV8VoWZEBkl2lx2efld7oEGPzFbEQHsMFSljotVMrjYB3
	 jgughLjoZ9VMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9089C35FF3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174254639367.20022.3025066008943093179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f915797ae6ae6bc392b8c6858b73d5bdb18fa3a75aec591439164fd17a999d71
Date: Fri, 21 Mar 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742546393
