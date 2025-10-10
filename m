Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261A13FB31
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760068794; cv=none; b=qCRdDBqyAeyY8X8VmaWZewU3N3Yxe4CHmMxmVKKhG197Csi/i5qHnin/NksPdm8i57o9eJU4xszswqebeCDle4k1dIT/lg88NVilXLKduGN8YaYmcHLDbVUje2yBUqmRAQO8uzt+iGgHm8pZStZybCnskCB/pVIZY6KaS5759QU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760068794; c=relaxed/simple;
	bh=cbmjJ7AwLqFE3vxrObH5oqn2X/cdHe0uSAGCmStZ04I=;
	h=To:Subject:From:Message-Id:Date; b=n5M/6PcRzKOf0WjjgaqgTdSVZctPACvm114ediy85IjFMVDAu+GKA965h3+y5YMCu4jfYhiJlxMzPCTPa7sIDQiKDrDnabGfchuPpTeaCIf7y0JuKehP+ztdV8V+EzYhxMN6Jt/gEG96VAHJ+88AFPqQ2hzULVeupSr0Owin19k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MfR3bu0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MfR3bu0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0403C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760068793;
	bh=cbmjJ7AwLqFE3vxrObH5oqn2X/cdHe0uSAGCmStZ04I=;
	h=To:Subject:From:Date:From;
	b=MfR3bu0upNv0sqxR1T9ucMWMUsuAlbdXf5abjnheohNaH25kHGm1ZWD1PzFCiX27C
	 DaOdrxhb8RCPmL96K8Xl6me3n/3cSi2keyO5ZEBYusV30mcnDnrYszpp2mEkKdpcYz
	 TvZhvrnsxx/l/0duVGpe4lW6suNoN6u79pv2NjifoCDnk8nS3K33hoyQEaCONpEk25
	 trlq2eqryEQRjEcCWbEV31kHs8BCKI+MvEpudVCdWWCJYhjiSGgIa3vFKJB0DGY/tj
	 JlY4SOoJxYDXg8sDNt74xKD3PUTC9qICyqxKDSBTbqNLiRY44/kSnzbc4bNVDXeiMb
	 oFp91q0nYx8jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDDBCAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176006879357.24271.10865219684051483384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a4dad4bd5f46c307779798a0c734ca75b65bef8a5734758959e3ac768c9243b
Date: Fri, 10 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760068793
