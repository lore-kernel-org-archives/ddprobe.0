Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC2023774
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750679396; cv=none; b=tVHMzrS3Mh7FUKutmsIfYIwwrjES/KeVxZcfzuiIT9ivsfUzF/sS7bEepjgMDcZwEugVHL7uy+hvQyVc8awooCrO/CPhZB1XSaiCFB7pBHoePktVS0fsPKD1i3yUS1sXLD0PpKhXoy8HQ+COwYbhBI3GSDqzOJADEFTmEL4fqpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750679396; c=relaxed/simple;
	bh=up9uc/v7r4efmzHoajLjoxkIHznnpfK5OzQKcTxVfPk=;
	h=To:Subject:From:Message-Id:Date; b=Bg0wjBA6RtBhLrNFz3kwSQDxckM0US1/JfLH0Y5AdtSIcxYYLbh3CZY2Ab5M9Hl9W09qicraGmHdbm8HvSD3IE1am3A3ZkK1v8GaO8Hxsvj+Hzb+yTNIegH+jBxQN5PcQOr+djAIQ07mkGsb7g5w5gO7eJFAR5i0IsyC1JOms+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T//SPyTP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T//SPyTP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAA6C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750679393;
	bh=up9uc/v7r4efmzHoajLjoxkIHznnpfK5OzQKcTxVfPk=;
	h=To:Subject:From:Date:From;
	b=T//SPyTPhireeJK3f60WHkewmCLZzGHiOlG9eFC/SfCTh7EWCdBYuHp174lHu0S+d
	 TSVSXS9biPaC4veawZYJ7HmeqVKpr1VSMXltpMF722xqyJjOy07cFbYfMtUPm4VTJm
	 0oIJeBdIL8Q6iwkm6oMPq3mpxUFc9J/LhN4adjoi/IvFnexpbPTB4FsKvK46IzUpU3
	 thy8Su3kfmmWy3x4YZNQx6lyqIPyITltO4EA2sG4qEzSe03vahw0wr3ncG1Q0Te86Y
	 /f/Zs3baVohIqq/kETDJw0/P6MsWlqIZTGeQ8G00jLMTP1qduT2JLTUx4cbcqsgBaW
	 H04kdVaTKOfvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBCAC77B7F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175067939357.24400.6648432150345659408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6f2ec1a7b4bd16c3e9428f442145edaa3b484743dc03d8973d1de66be0821cc
Date: Mon, 23 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750679393
