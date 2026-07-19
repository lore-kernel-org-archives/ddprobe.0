Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B8A38E8AB
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 17:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784482714; cv=none; b=dMzj3KjvCNjdeN9AElR0KUERZI9+0geah70jU92jB8oBOBb5XeIIhPv+bAF24KJIFCeEXbql1usrVLn+2hNQ2Pi9IAPGDkh9Ha76b7ePV/YpA4pdZpYYshsVJbyTqPzvRh+Oi72/EosrztfyQkAsWAzNofb4GPIFhoeqzC5ctvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784482714; c=relaxed/simple;
	bh=BBh1SW829oCPsqDVqMhJu2PhwJoOZqwE+cpFCrr9l/4=;
	h=To:Subject:From:Message-Id:Date; b=l47gJ7evlDpag8FPsjacJoJdUr31e4Z4xBvFa7xs8kzQYvkaHaUMDLuY5wMgMPO8YAV9vFeyiv1MtLb+DsMR7Etyt/rRmEIYFx3tAA+cRibp9ZahuHC5Ste+CI38F8l/64j43JZN2T/eoD6vl+hkj1vtzKJm5RkleFviDMqEBM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0rSVXVn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0rSVXVn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE41C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 17:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784482713;
	bh=BBh1SW829oCPsqDVqMhJu2PhwJoOZqwE+cpFCrr9l/4=;
	h=To:Subject:From:Date:From;
	b=A0rSVXVnBRxPqt20puoxk9QEjGV9F0VqtHRdUQcUK9DzknT1CcHWTyzj8JEHXNNE/
	 mwvuIcc7LTkAV3cgRkAjUVE4693xaXIq0N3X34YkSWAkDLusNd/Oj+hiJ+9N+9SyXB
	 bZUqGtiU9mvAZosV1A2Ac+Aid9rdAhLeeRoih1SWZfsRPhV5/ZeRBu4zgs2gV9+EGr
	 obrQlyinqKKIKCsXY6ymur3Tx5uLfyn9ux0mazOZiK0TbiNEup/s8UC5hliv4mmvsB
	 jaiU8rUwu5hgmSQ1YAbjdQvAp8LbJOy0VhG9UBkhD9QIHu4nDfhwHrTnWtDTDwBeTu
	 eYJKeGjjql6PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6A4C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 17:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178448271368.23212.16736926745344478223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7a651c40af0bf19e442449ec7054ea787d20a31f54d885086fa5ac98c13245f
Date: Sun, 19 Jul 2026 17:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784482713
