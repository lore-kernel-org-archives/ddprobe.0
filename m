Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA5928641B
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748449794; cv=none; b=JOOhIIvmVp1KeJLaFfpAstiee6mxBrhaSTQAqaSHp1tosezJWQ/co9vELpQ5OHW9ymiUmnC4dfrUr3osNuygiN9pawu7sln8m+5iD9pItpNO76fwsrzHczIXP87+zQYyHWF4NMcf4Lw9HK1RkF7Z+9f7yNBv78ZdMi2X1iSW87c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748449794; c=relaxed/simple;
	bh=8mvmJALYxf8L21UCi0SAuv83aR/Tlm6Y7/god/1rUDM=;
	h=To:Subject:From:Message-Id:Date; b=tsZswze94cv3Zx+e6XYonDV9LhOfHqaxznmfdCRPvPRqZYoNZlP1JWNAx3z78K3ceSxdpgnsuBrnUR5vgN9hSz/VphriXdKjoI1nEKk4ssy7vyyCLXXNy5lPeGlRRQ4UirSnOCieufAUtz2pvHsCyw3eLMuRWsVP29I7zttBmnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APiQpROu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APiQpROu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7D3C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748449793;
	bh=8mvmJALYxf8L21UCi0SAuv83aR/Tlm6Y7/god/1rUDM=;
	h=To:Subject:From:Date:From;
	b=APiQpROuK933Agc1mJoM8d8GNPQQf2m4yzcuNQvj0W0qCyV3ImQlGZfyz5m98d3jd
	 ifSrmxtAPWa6Itc2YaZClno3IfnMmMgnza/MDREH4wU9RCcgsr8MwpoejgIpoKkJHr
	 pWdik1yANOHGMx1CKEdU31DBn1swtkN2k6z3gPATKB2978/GTQIRmjBv9goTgWJYa7
	 tXB9ObqCzEHK4fBYTN6bAt/Hz8eEMJBUxvhMepoKJDmv5MSphiicErXk4K+eepHqOA
	 TY+SSQkz5RhfnMHHsa4mz5wH2E1liDGZA4OLtuGAmYLmAYiPZR3Hy9qaaifGsLV2sj
	 2XnlhpdQcT2Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F81FC3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174844979357.31743.5690787413522223481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b18134c26f1fe9c8b033324105f80433839254932f99cb2b8fd4dc2fe762131
Date: Wed, 28 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748449793
