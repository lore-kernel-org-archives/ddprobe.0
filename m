Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8103E314A
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786657834; cv=none; b=igFhRrYX1hnxvsDKvY3VrlvoE5RgOQ0gjSxV2ZrsVcotl7eefzhfuoqXITaiDJPsQd6m3JNTCyuhq6KQURuWEQME+/SOsD7OCUdrFnLwKEKmK8CFaSy4zQ3XdGFqNpSbSlwpOnw7ENITt2qRe/q7xAhvb4BOxdl4htUq40KYO+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786657834; c=relaxed/simple;
	bh=mSmfRs5Y5cXMQf0FWQwabSzNNJ/dPhmPjmaAbYiTuhg=;
	h=To:Subject:From:Message-Id:Date; b=mjhenddP5ZSsgfeaAD654iLXBOc6R4+G79p6Og4YMDGYUagj0viWJNcvPczcZ83h/9csbgb2XRJkly7JkDsVVxG0wIYZ1Md7mRgvYpuDA8IB0+sVVcYcW8lmzwfYKxj+Xo8rWIIqKZOzoOrcAsyINtLblDge1uWUdbIlbMdNycY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtDhCaY0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtDhCaY0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF92C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786657833;
	bh=mSmfRs5Y5cXMQf0FWQwabSzNNJ/dPhmPjmaAbYiTuhg=;
	h=To:Subject:From:Date:From;
	b=JtDhCaY0hOMFOnq1s5atfI1YCGWJoz4I9/g04e1gLTYQvbdPOmyz4T0yHsjcfPTip
	 komyP/X2AR3SXC+OTdlmOGhdxbJ65ZFMB8OYp7UY7NP3DUi4kd+22jsFLFGiObUCKB
	 pGb7BTpVMoq0L/dVZCD3xRFJyRtC8py3WzAqilHRMLuJkisKedL4iaDOlB+KOg2y1J
	 DvKt9QWFJWHmUBcE3Pqq0aLUeh3MyJQgivLe+kol/IERaMr98xhUuBB5HGv9Ewe9ZU
	 CTv7Xt+Mvhkk6QejXpGXrPSkxvkfErlPmdM21cd6/fat8T3thXCoNfL00wfqyxPlix
	 UfOygxxW3KDgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93B6C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178665783368.22875.12240125790983669302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a55cb24dd032fb918c2c5325befd3a9edf9621cfe357ce9456c47a9260b03729
Date: Thu, 13 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786657833
