Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21072238149
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752497394; cv=none; b=fNV/tEjT0t+sCRNlJ1GnMWHKBcbIDLqGE/mqHO18zFBKE1Qg99le03WF8hrtWHCcnZpgxRu/FYfXDtVdk+jul3nOL0GcVoPNZN9ME6bPMHrjEvaWyk00HbZwajbSbFe7H3cXWvQiF0HhXNS1MU9G/Tn2LV5fGAiStz34SxBeCrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752497394; c=relaxed/simple;
	bh=W9wGnDJkxNbNoAYILLOax+2rNYWGX3o7bN1QJJzc/Z8=;
	h=To:Subject:From:Message-Id:Date; b=VoklmO33l+9PX9wMY4PF2JuR9xZlPJBXACXDBnO5OvRFU3t03XDs91EeECHM7M2hvigp5CKtjMb0g9XGwtZ8n0mFgT99ohGQD/uc25mgvgT5GoXbgTgOHCbHqlMME5Y6sYEWS0Xs81KHyCwy/tkk+KfmMkNjNE6rygP/WMFfQ6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jt5BR+4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jt5BR+4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3E9C4CEF6
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752497393;
	bh=W9wGnDJkxNbNoAYILLOax+2rNYWGX3o7bN1QJJzc/Z8=;
	h=To:Subject:From:Date:From;
	b=jt5BR+4Ns/PAAXpjeMU6YerLBOheLtx7L0Y8cnWlYcuunG0TT9lXXpKebETQmWtXi
	 C8WyAKd6DeQKxbCpbuL2dteP3scywBK8ScQnK6HhW3ogVPP2jlVGBBYkTn6kVzXDWI
	 Ix+0ZarArQNfWgyxvsJJqXQ0ST5ade6cnhqoTA8Mc9FbXFiywuPRDPDZ4CX8BCcODV
	 sUQJ/32ahmHAD7g8FTZuBVQc5rKlTyPb8QmMu5aMQUegrjAJRpWuOnxUQ3DAv7PIuj
	 snkFMie/fudu9TkYk5unmaRnIF8g8Fi3JsfrOkxv8LnudJ6T8zFKpLoAeLsA3YXhGa
	 x3domizwa8Vrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D489C83F21
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175249739363.20821.6944425443069241907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba84cd5145a9138b11abacadaea961e76ae013286fae99fb2e02739bf9ffce29
Date: Mon, 14 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752497393
