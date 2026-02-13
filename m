Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34791356A2B
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770995094; cv=none; b=qW6FA9vZOB1tPSSd5REPZGi6IC/ed/BRNJWvieUu8avKZ8hXTBOD2YQKkpeCNl0QIq6InYqBeb1mg/jG8e329LSdmu7/jN3ZT0lMfcKDT0CpEIVlrKqCEeRODfaTyIlDrR4Y5zrEqdYKrpcNo9iitFo6COMxWCaVTf1GxQyufD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770995094; c=relaxed/simple;
	bh=s9M0WcxwsRF7usD/5jes3ROCPXs/pWZX4ZRixMIiHYg=;
	h=To:Subject:From:Message-Id:Date; b=VnQd2Zh2UMR+9SeTuaJ9X0r2g30Zh19LV96vmqkK/7FXA91e6mv0VjaPRqxLz5dFBnkUGBe04y6QGS9xDZ0AD2PcLbU3c4vmb7rdK+2faN9itPrngFFJesYNAh/o3N42m+nEO2mg1IqmfVjzK5DNjrg2EILxECWWxQ918YlyIrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DV/QUma0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DV/QUma0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB284C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770995093;
	bh=s9M0WcxwsRF7usD/5jes3ROCPXs/pWZX4ZRixMIiHYg=;
	h=To:Subject:From:Date:From;
	b=DV/QUma01ZRfy2Z8TXSEEeDglfmw9M/orwSkYrlQttCEXY2APuW2l7CMAOOcn/JK9
	 wzh8ksw2lBQbwBNMm9uu2KiN3GMc2BGX1uBvfDfLztcDS41Lw51LFrr/XLaIa4RTJz
	 fx24GHwsyiaf8rv5aC2Pl/gfxSnkeR9tQHvpZVeIHKZ0C9Z+wi4Pj09VimIIuIci+u
	 viItlUKf3wd+oCP0+0Pb7FZhTbL/GqenpQiYjQJ0KA38ZYuEsSfROxrFC/mT5XOgfw
	 hpbK5gOZEuEAAJFQJVOtgPeWhLpwaugrnh8q2j0gouMgXbMS/9Gux3GF9fEeqyBDg0
	 38QiIBN7MWU/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A672EDF170
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177099509362.14653.3300109154019821100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 307e658e59d144cd0c35cde24474440842ff75c9af92e1eb8e88ab483075b54d
Date: Fri, 13 Feb 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770995093
