Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654691946BC
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777772254; cv=none; b=NBI+clLFMeAAuRJeNJb9/+W7CBwKfP5Hctd4OZlESOqpWkEeX+m19F1dfjtjGIB4kMpVIIBrx3hONe9uBFAdki3Rvllw8By5hIg9oajwbG+dRNcpvaYat/cAjzleBu+PUmt7CYOPkCKq9Jx8JwJbB8SK0QI8dLoPiOtSqW8w5A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777772254; c=relaxed/simple;
	bh=9/zQuTAU/wvquBxTIO8PnGrpIWp4PecVEond+vSaZgA=;
	h=To:Subject:From:Message-Id:Date; b=QBw4k4btqiCqMhZsOnEnvDfMlO4qCancgZOXXycGh1PMnef+uuhSM4Hqsfj/ZljtZcfmNpfbwDMXgmKJueajOS4pV2omiAea1ee0HLHgQJuIvHMKOHFe0NXgbCLCa/QUHfLIlHl4d++/z5WNGrYbE9j56tIv6sYG+4YPfBhoy2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WtpurqDN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WtpurqDN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0DC7C19425
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777772253;
	bh=9/zQuTAU/wvquBxTIO8PnGrpIWp4PecVEond+vSaZgA=;
	h=To:Subject:From:Date:From;
	b=WtpurqDNhb+xbNFkuGXBoI9LjYYupd6+8vks/uAba94t6kXBIrQwkACmcb3FRR7Ka
	 qeBy2wL2RoZBlmNX/ncgZhpSd2Xkj+vF9mpdL74/nLu/2vwWZ2I/7klK7+OlKbFGm9
	 rATgwE6+Yf4Xl4dEqRF+Lf/3O+MeTaQ/oLwZI7qaIctqcaN1/eqt0om1IBn2iqa7GC
	 RDNcS+HV0rcDT9j7SwL36xLOYw+ss45x5z0zpaL/aw6ZKrbmF8LugEKn5CkydwcNA8
	 kLqwm2Fqf9iY5RLNji88QFZOaKd3SCStbCYCvwA/vG2K57kBQk9odvwKz2Ez4weEam
	 qVpL1xoyhFQrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7EECD13DA
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177777225368.32490.14005007000334823842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04c5e87f5200ca8afbf60c754cd0d43fcff0d43ed75f332eefb0de6c8d58d9b3
Date: Sun, 03 May 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777772253
