Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555BF2264B0
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750195194; cv=none; b=oTivVVavIJnYVEgQ+pRNZ19K4tvmt84lgmF+YbkQZeExvxWT7a6ezAcMMWCf7DnPnQD1AbL/Y48p1bdjdFPPgBZG1odNt9kTQ+vEgOdNEp2vibHzhO4enxjl4RgI7FWaXSiZd8HyOa034Uc3aIffuASmrHqn6HeHNPxCkL2ef+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750195194; c=relaxed/simple;
	bh=bdyIlUhldNGaKszL81AEARFjVPUX1WXvxmtpKrdxB2M=;
	h=To:Subject:From:Message-Id:Date; b=AFfZpu11DVCaYQV3UyVQilFtMiR5RfLV2AEx08bZ8AjuSaqukX6jeRizJvhFby4DRC5rlH0y7EkTqz9gxBGkg80aE7QFHzC2COFZwxSdEHCrimSvlwDZQGc8U+u0Lu4LpkCoV55GaBt0Uj02ggrNMhcNdf3myk5aOeyuWTJvT1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VeiA4DVo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VeiA4DVo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8050C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750195193;
	bh=bdyIlUhldNGaKszL81AEARFjVPUX1WXvxmtpKrdxB2M=;
	h=To:Subject:From:Date:From;
	b=VeiA4DVowgcpgXUf9Ww2hCG1zB28uCl4Erh4/9fVGaaJZAJb5ylD7UC3QAplA8cma
	 gYLER8C36gfTMCNTBBDmVztLwjDsuaFJWYOKmu6c4oJsoFEBO5Dqu+2wWR0Ze0s2JF
	 Ryi6kN7ijRuriCvL98+4OpGlUu9LrR91DFQ6vqUkJVYujiZIrNS2zO0NBEBhQ+21pU
	 6n0xIK5mXy9QIM1jhxRqMoY8cNGdExrvqomhPbYrR+LAKBL3mgGQ1BKOFWQXLScbUa
	 q+yynjeFHNVGfeIk0gnK/8yWZ7SXFziVGoL6ygowGBAVzSskkK2gDAuUGsTT0dtZ8X
	 7y3/vCIOusUUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3FFC71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175019519357.5317.658125156106431571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e899b27ded64a3b6978453512ca4ff4de720795e38507267d06e52b5e199e8ee
Date: Tue, 17 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750195193
