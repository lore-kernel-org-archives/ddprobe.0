Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397A34071CA
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 19:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780861474; cv=none; b=uIAWB0VgOmgUYBy7xMH3j8TdVAFacOYL6hBzTvHpcdgj8CAW0lycJGzBzOJ0liKSxJjx9UaoHnoC3e3UebBujzaQh/WYDd/748tFkSKIQL4fHJnxLGnZr2aaX7+FKbkGvGRkXWMAfbhehEEiS0TlXuYWIFHqei92rWK6STf6rcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780861474; c=relaxed/simple;
	bh=5JOlFezuaz5tFjbARuKMsvcj86/T94ew4XR+fX+EHoY=;
	h=To:Subject:From:Message-Id:Date; b=mFRi8VhUnRiqLnbwY5CM0//G8Cd1t23/yXWighpRXMexoc3Iw3NYIJoR/5IHXq3fenUe07moycb+WJmAj17VwiQSacHsQHKfAnAr5s1820Qgv3EsWxXNXJWPq9TARDGOPx/47e8rxIxJZN50xObl7HSroBXI0rs1THmf2HcMpVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kooIJzmH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kooIJzmH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB417C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 19:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780861473;
	bh=5JOlFezuaz5tFjbARuKMsvcj86/T94ew4XR+fX+EHoY=;
	h=To:Subject:From:Date:From;
	b=kooIJzmHwVAxXlSbUoTmDh1NzTEjFdJoHlrJKSXCI5pkF93R+2g77vf1i1aAVgPjj
	 9AgWvuWrGPoxVaopO2wqB0fgGUwsamDQQlNQf/1DCEoEPUDPBZhpyE8jJ4dk9EXOVD
	 9rxIcR1cVDdhoiLU08sEkoLEiR0g+O9Jp8dzKFrt80m9S7ssApnnf3BdVblfyZVduI
	 iLJKTzvjdvwJsBJslcFH/4IDrVE+3MCY/zcTcPXKkZxQeoyPR53MtRna0HQhsHyQ9S
	 pxcCtv44DMnpAf3G82upiZNprZ/ErtwM66Wi+8HNxrfIyRLjuWpInoORxRGTjykUKO
	 VyMm1UqWzxoAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD54CCD8C89
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 19:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178086147368.12977.2918445330371503135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbba42bebf112eb24b1f4f463555d197bc9de7bf8104e0a0a7c00388fc0560b9
Date: Sun, 07 Jun 2026 19:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780861473
