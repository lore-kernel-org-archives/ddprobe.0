Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40369463B85
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787928034; cv=none; b=TZN7+bS/yRkoTtKeA4kVyshsA6pe1RQOfUxekXz1N85eAslE4ddvmaG1NEn9W4dZujDE9wxBoXQr+SyWuPP5m6Do77gOk+0EccIv84cBK+X97PQOWOSEu/ROZIM3zaazRgPs43acmfbLCFHjelJCGi427H8YQ21f1AZ+5llL25E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787928034; c=relaxed/simple;
	bh=viLfmp1Hu9vCTCr2xrL38L4SRHfWO0Q47rKxxAKwWx0=;
	h=To:Subject:From:Message-Id:Date; b=WGdClE+k/0sa6H5bKQ6NRi2wzV0NC/COmbi06OSYBhBoYkbXA5hXDSKZ70iisW6KS5JM7dtgXx73iIyf6ZBav/JSc5XBeifG4QjaLh6dAVvc2fpjOW/TEuNXzZo46SoLaHZPjmlgawIFUEMMWZzd64wJ6BPsea+opjnl31TMIOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f7a6JUal; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f7a6JUal"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D068BC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787928033;
	bh=viLfmp1Hu9vCTCr2xrL38L4SRHfWO0Q47rKxxAKwWx0=;
	h=To:Subject:From:Date:From;
	b=f7a6JUallbfvTpycrf3kQ+GRMnbHLMiBIIujfuLgfwnrxcneOpx0zRthw2mTEtL0S
	 0fputNXc+sdhZhViVMtUUnwLPhkYs2LKXCL7lzcyzld4HWAdfDchVcaydz5XYOS0S1
	 SbrPl/QZryHrsJwxRMY8Ie+iSMLOuVlHizQV9smXub2Sp8YrUkTCrckxcMb71591E5
	 o6BtvYMSCg34rvqlejXdhScHrGrox3F05W1iwKIzqUKvEnexX+rB6rFzNjjoQJ7udE
	 1fnETv6sMTnD1YpcKPHi4D1vhrPSyIPgUkM8f2ZIM6bcyDIhBn8dhZfrjz9pV3mgwz
	 eEX3Umb0Gymqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA5AC61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178792803369.24844.11661226378089631986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa3526b40c01481be687867294a4b2ba821a2e78312c320e98453968772cab49
Date: Fri, 28 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787928033
