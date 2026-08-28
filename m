Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411CC3B0AD0
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787939434; cv=none; b=TbCQ/iDLopf1oAE9/XE4SUIv4H+RYzfmlyf8NqKaA6YoyZ1o86ZyxT5ksCUycAsmvJXUu8uaLnfkuk6UKxpeLBfgxh+njEZdNE4dw+kyjo3k23NoNl0UdVXq4JA5kAUf/Xd7Pds3nwI0YhRYcHksO+jXSjTA82KWW7aZW8o6Ha0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787939434; c=relaxed/simple;
	bh=ei6M6EYCNX1LXqMfvJjHUUzsOaIodPmv+RVF1PbPaJc=;
	h=To:Subject:From:Message-Id:Date; b=pRa3wLUYeKAAFTB9wmFHqMR/3d7NTuRYLAr9VEvQG6nIdDxdQCKmf1dzYbHZkOSr5R97XhZWLF0vbczT/4zmEz9Hb7/ueg08BIhR1Oxi3CZuVGhjQcU9/DFKQNevgMyRnuadBNxKCOefhPvRFMicPwBik8femyal1CibxhoeTeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgMzWLOs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgMzWLOs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C7AC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787939433;
	bh=ei6M6EYCNX1LXqMfvJjHUUzsOaIodPmv+RVF1PbPaJc=;
	h=To:Subject:From:Date:From;
	b=GgMzWLOsI+bJYdX2xitPv6gMwnCz6jqfYEV6oCPsJPqS0U+5U6phTnlVVboJ29mUq
	 gqCZNV7Lpr1KYCzaZVH6y7pLpQ/hGNgmsigiIpH1bKqExgA+ldCvVXEfDlwglOFfcv
	 ZxzDahEtk2dBD9VdnLrBnYsFjAxE3tg4rNOkqdrY1QlgdJNXhQybdrxgwx5PwQ+zl+
	 ktP+zPMz6kEyHYSmMCekL4dlfUORDSMBotC5XYp8e1XYllAHcbJ7VISJ2zFfqOKXBF
	 4K+h2vnsMK1wFIr+nbbFOJb7bK2nuSIDuJjhtGhRTm4NDd5V5SmmBhyDD9WUDCNzDs
	 ROhee46G5lW8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF19EC61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178793943370.7427.12696920803133022321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b1e8695af927eadec8a5f442659fca6bc24aaa60827f6eaecc636c831c93f80
Date: Fri, 28 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787939433
