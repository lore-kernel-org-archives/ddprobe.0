Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFB730FF3A
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770763434; cv=none; b=XCu7tbLTokWFstdMIE0e8fRRgOrPMDZnTSZx8MpZHISgpw9uSwerez2/DwXItmUA+CGHXX1LtOHi/kkU86qqOsKbdKCcIKQ7v3tvmtsdZTvi8MLxMpZ21yWS5wAtvu67N6zfI7p5O4+3Yj8E3hLDew0orEvPuslxRozLC6k1WTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770763434; c=relaxed/simple;
	bh=/L/2PBgIiU4tiPAav4aIAHkUMsLKhIqG1DYyUJCwWPk=;
	h=To:Subject:From:Message-Id:Date; b=Z1sZw55OFwYepabwD6N5cSXA6LjLbpPIWSfz3OUs8eq3g27h9H1GrolvTjl7hqDx2g1LAhHyXBnHkcPsGXNHq0cD7SqYFn01r23VK9hwGiqhycqHe5Nt6qlyC2XYuunI9QcIEeTTLPAb5zHsQHWs+CaksTGhw7WKnB6vfnWGKoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Difg2Uz1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Difg2Uz1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E84C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770763433;
	bh=/L/2PBgIiU4tiPAav4aIAHkUMsLKhIqG1DYyUJCwWPk=;
	h=To:Subject:From:Date:From;
	b=Difg2Uz1dtnyDl1IUpI+GwLzptCPzz7gIyedMTeBiLALu3I/hOBXB4mD3JrZgxi7X
	 ms5zP+3nBJiysJ+aS+EUB/p3wMlLDvHhZfR5OUA8VfHgF6/Ejayba9mhfYi8fyMoYe
	 slKNE3SEDi4eNSpF/5Pp5hDSObteQJmJwrICocOU84m9zpskbASSFlRzg4FiarBPXX
	 +BzxeEAiHaq6y7katI9pRXG4n8McARoGOcHMZ6vmYbuazSLf2D4Z153hoPxhWXkIrC
	 GtyBdLjL0RLAoCmkfttX2fu7TBidVA66xXgAdXlAD1f+ElSMRtdkSN/oY+GUBSBVyo
	 oolxpNQE1HozA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E3ACEB2700
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177076343362.22223.15742531532059669721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8f1a407f29281be9c0a4a002ffaa7408f25bd3c5e2dc80f18e8d2d9fd3039ea
Date: Tue, 10 Feb 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770763433
