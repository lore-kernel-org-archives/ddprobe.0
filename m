Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4ACE26CE23
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 03:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769225034; cv=none; b=kDKzLv+KP6GOixIQs5u59LlF9o4V4nPMmTZhzq6s24ezn6sRsUVMnhyn5yr4PJX3jXLyAT8LVaDzClvdtPtzt71RZN4w5axKAGTYyl0k1/rAWnrOgW4uECWvqY+6egPYsPrp9aUHXJS5515vD3YmM86K+FlAT/wHsaUevxXEX94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769225034; c=relaxed/simple;
	bh=Zh8DeVAA0icb5rEemvghuO0n6MOaRMYwy9ClpZSpLcY=;
	h=To:Subject:From:Message-Id:Date; b=RrwHcVy53G7n4lw7ZTwMPrax2O1oU3hAfPEqLYTt2E+nmXGqfO87W8dWup3qZ/gKVedp6xcDwny1rltSP3Etisle5awJhUjjfAtwfLU7mRC9yYaYtrwgus0J8gKPK4tCR4ZeWlCWi0u5bhjUIqeV+sxokAbjPZiMZCPaoQqbudE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vDgEOo84; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDgEOo84"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EBEC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769225033;
	bh=Zh8DeVAA0icb5rEemvghuO0n6MOaRMYwy9ClpZSpLcY=;
	h=To:Subject:From:Date:From;
	b=vDgEOo844dSUDlkE09aZuailSV9r5GPOkee0KRHlPZT9UwaMFX8zJ8KCAXp/oMd5M
	 i0vJjbXTs9M4K2fmoZI9QpapboOAgAzGBaoEVTm5VWHkacosNRpl3dFoMGdtlchib7
	 uJr4lfNlbdtAaCCgR59Bn49/AN3xedVXwKY2a9AuV6G9RtnMuwF5GPsTFQYo/j7wxk
	 4UcXlu2NhVqGFAiV/wpWuehlrvP+n4MDFH5NrWpkf5An5UM9hiJlBbwadyfpUr8dwr
	 Qfxh7vMHxfx/+gh9ZIbJlRdcsbgXvTYF/y0aFG1XpUVITuo/U/SsrPB+tpoYHKDnn5
	 f+BpsxK/i+3AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C30D6CFB7
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176922503358.32411.14711101880557549342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe4de69242336d3ef5913fd8b93065d8de212a5c19ac4935bbe5d1a263a4dbd6
Date: Sat, 24 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769225033
