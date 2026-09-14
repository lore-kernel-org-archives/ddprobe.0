Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A2B3749F4
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789362634; cv=none; b=thgIJ4HRc1B7pzEo3WT4MsW3rFVLKh1XtlNRUT46QQeIoOsSOZ1h9mGEVq41ZCHHfpOe2S+kIJLsbjmObypzG7iLitqCnlmtsYqYxWwRXjRKhiQ/dz665Uoj+WJNig/54u4+yqFcygqBaYLn+JFDbgMPCR0I1ecZdg1SsFC2ocQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789362634; c=relaxed/simple;
	bh=v6FaK1FEZAoD+D14K7we9MSgeD2Lh1jgx1qsYw4GRW8=;
	h=To:Subject:From:Message-Id:Date; b=OfGcRTlDSf+RS/UWiFU6R01LHj3SG5JLSW+VEIqmcfearrTGsHjsP5vbSiTvbdQ9d10x4+4Q26bxCQngc27XUqg1UmCqSDhytSbfTajm1fjoZEYHBSNI5CKgi6HFELQqdR6c6bKlIMmUehXMfuKTur9johOJGHxgyk26c1VF8R8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WutzUDsw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WutzUDsw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD2EC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789362633;
	bh=v6FaK1FEZAoD+D14K7we9MSgeD2Lh1jgx1qsYw4GRW8=;
	h=To:Subject:From:Date:From;
	b=WutzUDswN+G83OonGeMp7xBQEqL8BeyhRr4Qau41/5SNOUIUAV67K4hFAAmGI2/kL
	 K065hxg1F/pmnXqKbpOxJQlWo25bR2R6jFEtVEOLaSGMPW8SCESNo7gMBR+8Dnkv/n
	 SHDJOVKPx40LzWxHxFCphkxKM4b9q8SH7iFQXFpaxOBLtz1WuZdYJ1SoFoI/9qi69T
	 fCFLHrZjmikEXssLvpg8OSqB65+IMjVd+d2DiziCfEeifU7uH2FAKBJDvkyietvBfK
	 PONbRzFDWNTIRzcQKdtjHwpYUH4BuIhIdygVkh+tGCae9XxvmshAIjPYzs+nx8r+7r
	 QFRg/7vMyhPqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D86C88E50
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178936263368.1363.12091777740422834810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1250cf7c97827211c410d957060f49495a974f2ce721a08056fefe67ff90df
Date: Mon, 14 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789362633
