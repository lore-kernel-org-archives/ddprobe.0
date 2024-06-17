Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509C016A392
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 17:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718644103; cv=none; b=mVa8p5HVuAd4lRtVR5M5Xg6IanFNuCeHeVgqQbbJAGEQCG0d4nTH+NlSsBANR0srwkWLhEUoZ0A/VcM9fhRzoDIhGsNtjr2hfEE3lF5dvyFnIwFe3svmC7ojAHbNaYFwn2pGriU48RY2GHi6vMJN83GlLsH3Her2Xqd0OJnr91o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718644103; c=relaxed/simple;
	bh=7zMFa5pzxSyU5aYvugm3RE6Y1Aw55ZBi7onH8H9oCHs=;
	h=To:Subject:From:Message-Id:Date; b=jHFNCFv/vFXP2guiN2CrlA2FtkLm/DAhHq/FnIL0vDS8ERitPpx9AWLyFJ4IjR4pvMcMXa0G30FSchYnU2pzo6rPlAQ+jt+Rt5INxLg2AtQ7MlgQa9bxpvHejEMGJcg/N+lDmzvHP1kikfq2ZgOW2v7v+Ua8kpxXaVCxrK1VXEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8Sa4EL8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8Sa4EL8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF389C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 17:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718644102;
	bh=7zMFa5pzxSyU5aYvugm3RE6Y1Aw55ZBi7onH8H9oCHs=;
	h=To:Subject:From:Date:From;
	b=p8Sa4EL8ZXR9C/ojmGv0a3PRVZiyS1FL0AWJi4jKXRuy/4m1jCSgSrU7uUm/w2qnf
	 TYvLHNiKMmiAUtBT3eFthZTP5XDgqjEpLeST2rfMaL1pZDgylpvuppkCdVaSS/uWUG
	 FQicCVC/a//ghkwvfhLKD9EtMrlB1nbP06KPYci4+0dcVGf8a4AtDkDcpd9LMmi/q2
	 H60zXty0FJjpILSIFfqy1/N2A0t5HJjed1c4q85irPJaNEXcLvCzJ/hagOQHNdC1WH
	 GvA6D3yooIe+56viubktzsLO/2a/EGc92V/PSYSFppikrT+GYqEqWrRGJFI2zIA6a4
	 oMeM2YoHXcUHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C736BC27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 17:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171864410280.14488.4328350252918713084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5e3eeb70f14576ee7179c676c9ef204ec92a0a7f48f6b814f1bade6f427e07d
Date: Mon, 17 Jun 2024 17:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718644102
