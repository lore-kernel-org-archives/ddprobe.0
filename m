Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B47C2459A1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736945754; cv=none; b=kf6/1qbV3+jVBhXWyf/n0oujWXvlszERmFGqA4qChmTOmL/43dzHGV+98YNLFX9jBqImCZ+QPrVOPbb1ebY+X/QKx4nwgIcE/cZ5B80nu4yfAmi61BiHDbsSjmzJSG5vqRNuBcBqt5dB+9v9taFwO1wf7X+JDO0ewohsM+ECNvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736945754; c=relaxed/simple;
	bh=pA8xjQKBbWSNCc+LIphEP/QpXAIzqyHLLBnD3FFShs8=;
	h=To:Subject:From:Message-Id:Date; b=QvlJs3gkfcDMLmysNMf88cmmXbXJReZOTfgYsqKd8PmKMiQCsyN6uR44XJIO6+YKZ0nZrP1H0uis8IgEqIKj6PFZoDRDN30BL7544LWzj1hV63wntGRSeDx98Mv6EjOTu1abO5qk7tleuQYVHtN2Uws2pukUQPZXvFAjzp+XojE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mznJ84F4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mznJ84F4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5B8EC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736945753;
	bh=pA8xjQKBbWSNCc+LIphEP/QpXAIzqyHLLBnD3FFShs8=;
	h=To:Subject:From:Date:From;
	b=mznJ84F4xN5GeQJPgxTgZH68lyU7ZS3PiPGDPY2rV+8GP+bnyDMWLDZ4YV5BTno2Q
	 Jg28dIy3SzysJvxRc64ur9FqcKJAVExTP2g83hx8OdLVO/7fwBjRHo2Kb7BPQK31Cl
	 et7ED1aVdPaCztRS9oDzTWhBLLUeBPn3M6NGn3lMN4NGOvCqf4Mphcqf4AvWc+7HSb
	 AdkK7/UtCVcB7UYoKKP1ZU9XiUPX2fk/yzQJ2btxfvqVjV7nKFNsQgz2sW+VwQctcd
	 KXpGoTacu0Pveg2NcCHp/jRagjN2u6Ui9osmkrx3Lv0VposkqzU471dGPPYQ95LCtG
	 n4R4Fmzy8s01g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB8DC02183
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173694575362.11385.10395587364677842055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7dc97d727300c40f585c906dd9425c4732550f88695de88438ae6c5393a5918
Date: Wed, 15 Jan 2025 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736945753
