Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9A0239E63
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 19:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775934454; cv=none; b=UhwA6R5h2Qp/Q2ydGXI0FQ3Nm8umgF5y2OfmD4CB9mauU7bwk5Z3rREJUWTSgGVZpgrqEOdlY+25CW0Ml6jhg7LSAMZhX5zXk7gC5knFJtreFA0RohLr7aAnzuu/NuZc45MEpqytvNYUCfUc/L3Q3BfMy2kOB0uUS/P3A9ihlEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775934454; c=relaxed/simple;
	bh=69eaF41ggvc2MDRsDBxfP7LZP5YsUO7UuWaAxq9Xqgk=;
	h=To:Subject:From:Message-Id:Date; b=GpwLO2xNzSugA/LV1H2di39rtJS6XQChhjLbFo43rpWRq8kIhtZyg8Vh4ebwlMFbzGNJ1sdgbA9IMeyQocZQE7MhYgkr0eZnUuVg8V2hxPAXowhVwvvGr7CrTy4DC5lSIH1aHjkvauIbsRAwIqIB0qs7v9iUKMnb5vNI/G+/tIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ps53m3k9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ps53m3k9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3E03C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775934453;
	bh=69eaF41ggvc2MDRsDBxfP7LZP5YsUO7UuWaAxq9Xqgk=;
	h=To:Subject:From:Date:From;
	b=ps53m3k9ANKviZVYyeQPyDiZaZdVo74Vp6qJ7+XqTXkzecsgStOyZVTM67r16Nxjo
	 mV73k4NGCZLE8xh7XtYttcpHwxe47/CKzsn83NkDciTdbfOS+2icJDTHrC+9AQJmGy
	 vmcpEtGKzgpPmsAsMJIsw5mqnL2eUP1JVEtzJaubz1kGEBJJyPzqndLnuqGLB/8+bi
	 HnmghSWLc98KaX+OPGhuMvVX2MGWTyCuJBXaqR4owN9dBgklLV66JjvnvWOz45YDRr
	 BA+MFzgFgzMUIwybm1bWxl3QyfcQ7mRMacTYmIwVTVQjKPVlKD8cBpDV+jdjnGDgHm
	 g9ZU1dTmFLzRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFF9F3ED50
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177593445369.5157.14202196369085695618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 115cef3614e5591ebe2a3a03484ed599d2e1a0ed6261b05e308f4f2d7a3ad625
Date: Sat, 11 Apr 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775934453
