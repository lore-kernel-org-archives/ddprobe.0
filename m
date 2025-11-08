Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C525276020
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762639194; cv=none; b=GFL2QqdBsaslFFOCVZcpjBugXC9xozn6ux/WQDp5j6ZR4DuKwnib8yCYgPQpPZdgDV+nhKFJuPKsjUtToWnPOdH55maK2PHcks3FFyc4Roi7CmNqGx9reDFungyO0AoCVbNuDuxs8IAwUcAU7Jyp7Qv9BNU4yd/9+E2b7MG/DzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762639194; c=relaxed/simple;
	bh=/XI1AI6EK9EmaAOWnhCy84ZHRMY7kltykYJyirrr5D0=;
	h=To:Subject:From:Message-Id:Date; b=U6AME+4Ka1cbSSPG3S7sMGdesTMeilrmNVQ2K6H2J0CcAMXDgk695qaAdgmmVCVxFIeGpKmvi2gKNBXQtEqqLeOCaEdenYkp6YXBJJe35gpnbXVR8zEGPP516xg2oN4GUqasxrc91aA4nkNg45Kqe+3XuYjYF3ZzRk+L8EWlMoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZByBM+k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZByBM+k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9BDC19422
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762639193;
	bh=/XI1AI6EK9EmaAOWnhCy84ZHRMY7kltykYJyirrr5D0=;
	h=To:Subject:From:Date:From;
	b=eZByBM+kfF1hpQo8P17nDtEQq0jnCfg92IYAIcPhATXdDhfuxiCsS5hICpcl124yQ
	 4hVAtCIOfpPQVrkfpb/z5qjbInsHiUEJmswPCJ5hsGFdRX3D6pkGewUvc4bH/ypznU
	 ioE+oqEXcfPL4DoLdTXI0W7ihEZUQubTaO3TLOVYHwi3hlOOneK9FsY5HhyU9RtDvu
	 I+ZuV5xmnJCy1tbXT5hvefXmWXSObAArO+L/yVNuy1J80CrtG2HenIAa4rn9dLsFo0
	 mfbQipSRyTLnJynoMi1mboK/UFxpRY/y3wJyoPO4i0x+mxH9v1HWgkwnN4/uNk31Uw
	 r6AgQ2zcNkbuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDECCCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176263919357.29193.3459735425192103644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f6d8e03812234b72792d47a6be63a51b8b7cd223dd8c6f4b47edea3e0acd96
Date: Sat, 08 Nov 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762639193
