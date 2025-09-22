Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7C912F5A5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758541794; cv=none; b=CFI2d123kCpW7s8WZwyro9c5tY0j4N6wwOLUElJgC+Lh7DZwT+mMesXEBAH+nl7b0B72LzXTLQhkmxdM1bPqNW88nBLelylPODLwH3rny8ONtTJFQPdw6b1glLdGEGm9LHRDLs6V3M//C4L7p+P/HfDAiz+/xlpXYW6u7mfTuec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758541794; c=relaxed/simple;
	bh=R0Bo3Du7HmA2KiZrc31b0CWRwdaWSgERpg6wp8TDheE=;
	h=To:Subject:From:Message-Id:Date; b=T0wJdfx4l2gZPZQGSjkBFSHmUerV/afxAFjvctTjXMs/4+6IN4xe9GGoHIXoJ6LGZGnu46eqNAySClIJqsbdP2y/kQmSnvAqD3o2fQlaIiHNgYiC73H3yBiAPQpNRjeTFDIjhHA97yIxGNCOzc2aLMniOXN7Qe+liMYgzCNTsK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqkkn0mE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqkkn0mE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F669C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758541793;
	bh=R0Bo3Du7HmA2KiZrc31b0CWRwdaWSgERpg6wp8TDheE=;
	h=To:Subject:From:Date:From;
	b=qqkkn0mE4ruckgtyxuZdDyY3BR8f70kBWjN8s4IyPwsV9gQRfu6x0vAsscx8JhNGk
	 Cpnueo5xULIATS5tuqhsyMdtCQZRXDgLGFUF4kFTBh8tVnc8GSxi66jcP4XcGzkcr4
	 uTNj7F15/6U5iszCU8mkMJvumEYL98V1sXxap9cvI1KLB/IVah/d9U4N+goCBXFNmq
	 doOQ5qJfBXT/Cw7SEhKb0Vbr1gooV++asHwZ702nGP/eXHLZgtsohxaJOK5HCXM7gP
	 JOvgUhuhDaaAnoLedEYQIpqOQXv7Blyu1153l5umSjDYUpw3jj333+nuKge7iqav5x
	 oahsOqHhHQpPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E925CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175854179357.30733.8399638513730689132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d433a040635ab68297878a7db098bf9e94034606f5794c3372c9dcbcfa2865d8
Date: Mon, 22 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758541793
