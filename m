Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2965E279DAF
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 22:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781301994; cv=none; b=AMGfWxcp4ojB9ONxB7BPvlQKvu4dl8CgMIBn/Q8iZ+sNc3Q6SYA0J9kOY/rHGfpbjzXuf9KwF16H/+uBTO9o5dZhUL5fWkEIIDtJ3O4iOw/hEzwcI8DgEcEtXCnyWXybjxrnBwhIDi6+WzGel3mmmmxWwhk5Ok5RRx3zyaPY0ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781301994; c=relaxed/simple;
	bh=TtbS4jbxylu8TbxVEIwo3CbSaFJ6FURpfcgwfCmJ4TU=;
	h=To:Subject:From:Message-Id:Date; b=ghhhWSselslgJLtj1izO9MvwUnud4/ZPtH0ubfATIk+Grl7kH/GeeecoNBk1sqXHIWETPEPcZbns4KPPMYd2cX4DBuZNb3r7OllVSSkAi/N5s+NcJK68VdVumhOM6iOBr0naZQD0CznID7a4ZHYa2CjUNHp+BPWljlmqxHbZGVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISnTr7q+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISnTr7q+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2134C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 22:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781301993;
	bh=TtbS4jbxylu8TbxVEIwo3CbSaFJ6FURpfcgwfCmJ4TU=;
	h=To:Subject:From:Date:From;
	b=ISnTr7q+EOR+IbhWcfZrAbVSahwpqs1IXCDx0Dhet3R9ju2/9DW4vg3iC41FSPjuC
	 xpPG3/7uSCtaAY7/30U5NKpMA9tyGLNjiiXgf2YF2I8P9/gFYJEML7RJu6fcY2ORLd
	 Y89rIr0tc9LeKAiSKtvjLzdwhdUmpTdWcq4kSrtR6YnybBXGKKblhpL49+OSIvD0xr
	 5iheoS8IE732bElOelAamUTzlNacVhqhL3eOzFtJg46vwmNHeQtxEYdhLD/DKWKW6E
	 j773ZsTZiedgoHYLMD69L1H627tn6ZjYdlagITX3iiDmjUN0Evyh3ANi3Gjx6bO1LG
	 baHrAxhzIa3cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9542CD98CF
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 22:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178130199368.17755.16129278720195410927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a36be594bb9b106876af29a439be894db039a2fa8c496f01abd347111121a138
Date: Fri, 12 Jun 2026 22:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781301993
