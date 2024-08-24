Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FF214A85
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724527554; cv=none; b=D40SS76gTiME/9QPWRAEwMWLujIfvcboddiENXnff7CHRabeqMI6LbUmugeZllZXXpZG8kbmAolbdU6I3X+iwQG0lr0YRTt4drO1VE4BdBlSNWNx+xLZKvsjXnn5B3fVsRgoWLG7hPEy3IY6wKPk/c3sk8mNFEt0Oj6sWVbE6h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724527554; c=relaxed/simple;
	bh=vrbJdG+cr7LgRCDm4PxtuLKL0X5taqEFfklQueqHpxY=;
	h=To:Subject:From:Message-Id:Date; b=elGf6hobv0c97MpJBUKedm7DbJBLhaozHhrmVyfPICFG5WfgRKOXL3tXuvQ1v+NzYE8GWpzMbcH8HuPMRpYJ4jAfiCUC16NVv/xQmUdpKIrCt/9UfiC+a71vJ8OdNJYizMe7asasUzxuFwqJk553T1U302VKlZuFu7rGi+jvrDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nn0RngzJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nn0RngzJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB14C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724527553;
	bh=vrbJdG+cr7LgRCDm4PxtuLKL0X5taqEFfklQueqHpxY=;
	h=To:Subject:From:Date:From;
	b=Nn0RngzJf41l3wqRHexUMUShVQYXLL5CSOMeRAm02F2diOMAGSqBd/rD2onlZhXg/
	 bLalu+LEyG8IN+IJ2gppp1MmN41YDoomYIX+pquTAt9cFru4DspLJ83frvW49U1dUT
	 ZzhHOCVSR0NSN8E9LPKirJe7Usht0WAQTzXXx8fRjtRJNiqFYziCYANF5Mo3R5yFD5
	 Ehs4OSjamJ/D7cH8VGVMAFb+Wj2r+q/GAI62S9uuSSyLyt3m3KpZkJPwjBjAEoJE+0
	 Z00JCL/Bc5MUlwUa4pbcj3kzb+Rr4A0TPKlvl7muY0hxcLhZpDFYXYLHRVtofgjCKr
	 eYXPfCBpgHhDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96183C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172452755359.3385.13796520681312592399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 384e1715d8fd7b89c129213fe70af7313440710bb2b6029464a92e4f1340b6f9
Date: Sat, 24 Aug 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724527553
