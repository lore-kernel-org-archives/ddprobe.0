Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275D02D0C8D
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756468794; cv=none; b=lpHHesdhOsuEMW9Nknf5Us8/zoL6Ewkq4fv+hxg9zsMhQjZmT0EJb2lUVdV9jIuo4vDSslT2yTPZR53KEkTZxyRu2t8rZmSlfCr5El6/Q7HJ0e1E13AzV2RTZ1iom0naIM2GU2XL0WfljDNj5I7VSfUtrU/XOGEK79W5h0vJUm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756468794; c=relaxed/simple;
	bh=DOQcwrBKzBR2HOBOe08VcAIMvwzL/XZWwXXbTDxILj4=;
	h=To:Subject:From:Message-Id:Date; b=D8lIaNiaLv7cL1eSUgGOReQbD+9h9badqTK/Y3iP938iySu9QqiOE2yATkx/079CfoEZGVzB9zhg9lXFeiZtRtYUVQ0c0LWliw5bFKWEXs/2uPYWuPDPeRCeTIIAsqBMK5nuUuk+hpbOw7vExjHcBL85VixBj3oc3CTQV9xGMnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0tNFBCY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0tNFBCY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41E5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756468793;
	bh=DOQcwrBKzBR2HOBOe08VcAIMvwzL/XZWwXXbTDxILj4=;
	h=To:Subject:From:Date:From;
	b=l0tNFBCY/YuWIc/BUzQ2JlpOeWToS2ghwkrKfyvWCfEvXjV7CMSyuwjufJc95NQJE
	 cWhr8JGrm9mt5YzloUb6E102RMMgmerNSlbuPLEuC4A9sdJPEKgoJfQdhxuyLZ97CN
	 fizTWTB+dIeqE+43gMbjZ7tI7LumY+NSn5YDDab2CauPqhpg5pADi7/C1YaprTqOvl
	 pLGDU2jz7WShTIWaL7MSBMiLtkUbjNMXuIVUPv1Ohh7OFAsgAHKKIDTpy83IADe9KL
	 8Ldpq7uUMyYRVng4nUMvXG6jXaF7XH2UMSaCaQ37GrtMgdTQeY4Uuh52fDvYhcsBDx
	 jLl0qRwF6gpEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A0ACA1000
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175646879357.25344.14194242445684183804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2913e2e9895e749eb48b6bd09af3514ce76a8ee8498c48276d89cbbe7fa94c4a
Date: Fri, 29 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756468793
