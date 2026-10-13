Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6527A542EDE
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791921034; cv=none; b=ALWWyPzRjvRqjyy6ERne88qUg4aM1usc2GEciRF2uEKyAiLBmfVnsUY/jN/5tbS5jjtcZgo3jZR44NjKFjeFjdkhHeX7cZnolTl9TdlSMedhSbf0VDJ8UdiKL1vGayq7AccrtGfyUw1lA1PTmiLORm9cGW7yzGLy5gyvDgr9rgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791921034; c=relaxed/simple;
	bh=TTJ1tX3I1lIr876WKYLqFzlQK10R521AeJgilNSKb9o=;
	h=To:Subject:From:Message-Id:Date; b=M8mJr7nGIVvj6IFNPizq52dgCfVRxdmcvzYB+rbLdLjnDmXxcJ2V9ik0SDVEC2qg33uIoymWYn1dtnjiqgOzXAYx42P1RWEwBejAzMmuZxC9DkpAuiiAUlKNrxjx2YCfgRy/tScnXw2acdonqSVKTGAzQ94lhvH8wH1LJ6cVpT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dw76tGdz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dw76tGdz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E27C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791921033;
	bh=TTJ1tX3I1lIr876WKYLqFzlQK10R521AeJgilNSKb9o=;
	h=To:Subject:From:Date:From;
	b=dw76tGdzjyek5gXjX6wXzxLhIw/ti+oO6tybZ0Oi4FsmP8CRoBSPrj1FsUYk8FnAL
	 7NNmZPfGsQ2dklS1jtGSTSr0K37Weov54A99csvW5a9p7xAKwqvCmLGeYFFkT85Nlh
	 8/Vtj12FoZkM6Db4O77w25HTFOqk/Srnf3a+XFnaQOByphVRVpVuf0j3HSjMQmK9K9
	 XgZA9Plh2MWjaERATahgHNFbjv8n0G/4jZOB6G2ZqlzwUtKfouLQBCFOxEMNYjIGst
	 OEdZon53IzRuRaWZ+DpTrSPbpIRYn9mJLIAZCu8RNFk6l3GdUMZxF00YsGHSNO7zXl
	 85FoA+0aUcuhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF30CC6B1A
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179192103369.17562.7334715259825068530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50fb4e11afd6e589c9dbc1032067abdbfda95cfd3d5f405a4dc3de195b77f0dd
Date: Tue, 13 Oct 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791921033
