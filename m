Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3DA513A3E8
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 23:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719529463; cv=none; b=A3PQHI/efBdO/SyAm1c+AwkOMiUK+yNAvjjpwKJz+U5na9YI1ofgyifFVk50qsRc3nEc8a2ve+5IAsiaSJ90WtW3yGyeHiceaSlYritHIYOMCstsHVkde2mAoyu1TzwSdwsYDE3SdcrMOU2uA7LvJTfBxlzHzIoVzFoRdF2r3pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719529463; c=relaxed/simple;
	bh=YMvsnZeLzG5hXo5Zb5j8CcpV5y2/fF76AG//DNqOElA=;
	h=To:Subject:From:Message-Id:Date; b=e6Q9eDShU5R3t3I+Y0eTR1LjEf6YTHvwsw6UjRiQI6fmELAwhxgcoJ+Y1a8noao43PzRHaVJOoKtuYFYX+2mR1tgvXQXIumLBkG2fXZuLvnqHbMIjA2hnEKktH+4c3U/e2ZAa+73h5BhGdyuCVXWf1zsll5YB+Os5W1YfQd/z6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lCsb8Rn2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lCsb8Rn2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE55C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 23:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719529462;
	bh=YMvsnZeLzG5hXo5Zb5j8CcpV5y2/fF76AG//DNqOElA=;
	h=To:Subject:From:Date:From;
	b=lCsb8Rn2z33ra95QnPkefb5uMfD3T23OyGVifLIg+B5aHKSCetwVJZK12PXuJigeb
	 aCyx/d1FDGPoUjvRPzyUOi5+PLbeh3n+c8RIy7nt6vvyf4SLFj6JR6Ym+YuZCPqQgq
	 qEH3rb/mj4J1J5IDDMZ6ZTzbKPq5UFJboog+kJbaynw+BgCVL/i5I5/FJ+yTPtOuZF
	 dY8G1X7HpfhDTUf9bSkcMrbk1p8TTslfOwHO1wFxEqmCAVNeySrjkOpS/CHcBTSTYU
	 Yz+bYo1q4dBkz+zbR7gu5JTNoEL2Lzbe6Cu2S6aq+/ai0ufoOr359MtZKK66msPL8h
	 cxMtOz09Y8+Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC133C30653
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 23:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171952946276.13494.1821650271952027816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27e2c905afe1a701bf303f789514509ce2e7f94acee8f27c78cda1b0d5186545
Date: Thu, 27 Jun 2024 23:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719529462
