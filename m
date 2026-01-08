Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F24FC29BD81
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 08:33:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767861236; cv=none; b=fKIHyBhQGMpljqwpKRptgcEbW6jQcgkFMQT4iTpdzgo3h1pIoj6VdlFFmtCVBfbsooT9I7nvSwZP33XRjCgtMMQaquk1jGl7B2i7KgRYkl9MKeFBeWsKDiO+tJfbkF3SpPFAyXIynyEEWUqpEOdPFZhGjluU3qCsZIj80quOIeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767861236; c=relaxed/simple;
	bh=wUWldnGTMaySy4NTzypkNrBazZmFtgyAmG5EZrYtB6o=;
	h=To:Subject:From:Message-Id:Date; b=E8Cvjtx1Pdnn9Mp1mKWnSFEq4Hc1T9SiMLeICy2XrdH1amDu2PEGXBVtiNbX6FW4kMnDM9JNFNXyA/t/VZszGjkNmSMfnRQMyLcn4lTt/o+mra0JUvuTcmG0VmhNkFjtnCSV5gp/znWIViQARlT8RD0Dabiu5ZSR76fs92F+r7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CeazjIvl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CeazjIvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C0FCC116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767861233;
	bh=wUWldnGTMaySy4NTzypkNrBazZmFtgyAmG5EZrYtB6o=;
	h=To:Subject:From:Date:From;
	b=CeazjIvlmFRQGlI2tnx8N8gBuqLQeCeuL41vgN+7IWwgvdjTk2P4L+RfhC4Euym+p
	 yOsL9dRscv8mTv1xA1ZwhVxJXFFbqSkQdsGPVf030TD6H7MH7lyPpg/Jji1Pm/Ltrh
	 DsU5XbQee990BiYvOmuKl2tZE2wVDufZz0r9dd6utl2FnwtbIPnWCr8s975iC5ILLl
	 Gt/owevxpzpmu2eQ14jhTlAPUPPUuxg0yIo5TBWjaOA5uXG0WAMNJq6yAeTmHkFqgf
	 Xwyzso2rPfWGaO9kcyLsSGNNqzFtge6d9Q57sM6of1JcsGdShYpz6eoiNqmKjGjEdJ
	 xswSsF8JI8jqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0F0CF6A84
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176786123357.23420.9925655453618368738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca41a83f56da576982847d7758172fcb8da79f1313cba2a4cf539d8a0ca9f5ef
Date: Thu, 08 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767861233
