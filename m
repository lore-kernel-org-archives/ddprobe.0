Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028AE346E66
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772210694; cv=none; b=NkpJcK8E8tervBZcqTMqlDty0NBtkLbdtEURLMHTZ9A2VEf4yDDk0ZY52rRon0rlvA1wwdigF8LBMvbhJ283Q8QTzpRydruh1pQPTecl88JVTegqqjaeleQgi7ysWUSkRX+RHmor7a93P/ytlT7r9ZtFErc0XFQAHybzmV518f8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772210694; c=relaxed/simple;
	bh=nNdH9ixYORhbBt7u7GGAyabgxjJk4lwb0SXBmhoEnTY=;
	h=To:Subject:From:Message-Id:Date; b=tsfEF8Ke6JT/S/blBbLtW/DDq+OmrxJXnGOpVfkQDNUnwZvPzvcqWwIAVgZWEIpztg+YkS4j46JMO9XNzchiimzmPeT1tRzzPotdHvf2RDhN1tefhee0vJboDMTllo4jz040puAp+Ozsi3dnsQ5TV8DaJm4qZr6ROKbZzttCTFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMmvh1I2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMmvh1I2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E53C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772210693;
	bh=nNdH9ixYORhbBt7u7GGAyabgxjJk4lwb0SXBmhoEnTY=;
	h=To:Subject:From:Date:From;
	b=MMmvh1I2UNXWHb4HDAP96FMnepJQOtZI5MnnSZCrXjH9M1UvuVEUSOZAbs0f+TQaD
	 Igk3v89UNi1ZF1O7FNtS0tNC2lJssdby+lXKjxsVH3OqikM8ECteJb8LzhzAtsSO0c
	 YcSGW11X2W9f3hNcQUt51KLGMnkYxqMCQvca5SgyWO2T34Ak6qk4J9bAidOOPKr6hl
	 j57qztoFJgHuB+clmPPoCaACMHyPsExbn6LCJarSJ5b458jUIPAshdaOrloaG4iPWh
	 GA4KJmreqxhe/SIqLWFFsEGIxsX9qILxm3ZEdYQvHmE4iqclJfwmQ2tvmUEJnQfeK7
	 Uim22+cAnWuDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916C1FEFB6E
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177221069358.32559.15672827386246914274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d817b0412eda87800721ad345a829beca1203551632a74007f0355a78cb11bb0
Date: Fri, 27 Feb 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772210693
