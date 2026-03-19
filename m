Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F37DF3E9589
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773936294; cv=none; b=tdpFPr+crhzUXN+FRFImAIWWx08Iu6dnbwyRpo4N/cQQ8fzGF0gU/YSswVFPmpr6dgg3NOD628+2KT/dVBv9ERDbPhsszOa9T3+D4PpsYsu2gHlH1mBIylU80XDu+ao9yw/wHc8sAjRdsXYelFbcUDbDUzQt0fT+fvbLozm4/vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773936294; c=relaxed/simple;
	bh=u8GMBxZawTfolXJp2cmm3xYhrBLF//kbKq0eLC68t8E=;
	h=To:Subject:From:Message-Id:Date; b=dc+SacSU8Rs1SCQNEldIpw3rKGyEPJRGilt9G+mZcr47xVUq/2jPcoKeh2o+cp0sLNro2OzG1JHTpxI3VZVZqJy0vuV354NLu03U4sarj/wBIPGBEN35PIGEnb02kkqfndBWGfig4Df+BiXd1QgLIB1DZG5g+97bjRB/6TmOwXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GuShKBRT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GuShKBRT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4090C19425
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773936293;
	bh=u8GMBxZawTfolXJp2cmm3xYhrBLF//kbKq0eLC68t8E=;
	h=To:Subject:From:Date:From;
	b=GuShKBRT6cUoi9cXEqZsbwD1ph1qEs4L2Yz17MYDmURKPmZ0O/fUFHJIKRTeLX2UB
	 pnIgoc+un7scXBmk0deoSBOtKpbn3Q18L668VwNLCJL72fF6n4qiYW6m6msxIAqbgi
	 7T00koi61qiMRb0/yWPIGa+rMFKzNoBBY7vydTW/YAx9NLwVeW1LOzXfmgbtABSlSF
	 ATs3Pu+oBezPfEYzuYhNQBtLu82zftG3IJbaGMxUjuQ/8bQvJ5/pWXSE0xWdpPs6M1
	 GgH4u+iv+9e2jXYqIQXpv0DmoTpKO5A5ggJ7rO25NiUp82kpWHlDfj3oWClWE0uyr8
	 FnJBDI8mIi1IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B8E1090247
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177393629358.30677.115607224467043374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44ba221efda1eb08fa83d3ad1a896315095b1b027c8178a1f8b2288e88c19a36
Date: Thu, 19 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773936293
