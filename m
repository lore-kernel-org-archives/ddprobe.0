Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DFC1A9F96
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782346654; cv=none; b=WHx2YNQWcrAWRTh4DI5w5sVKhvlOZOpDDcciobXfMy6KAOGqAyZ5PqSwPXDzHRpkobT0nuIyOBRp4a3NNbyAqOeB6sJDZI/mMlCwqOxB8WAKphZPfg6jY41vLvuhZ0ZaviSg3F013QTGOIsxoXpvEHNZzHGBeVeQVBRT5YQOf0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782346654; c=relaxed/simple;
	bh=hibPLFGdviPPwf3wNnNauECx+mrQvTjHfAfDrxuvcuk=;
	h=To:Subject:From:Message-Id:Date; b=gVUDXQwWIVYX40D3koanhIU1wfnFfccBzpVTCeuIK7TRWkArAE5+8BuAJcqdOiAmMPrfi9z0/IjId7M9MgIY/LECDt6kg9ln/Fxz0L6XCTyLdmCZXOQ3niJWmGxFNuom8Jd2c0+m87/sbWRiIdiPeaQ9gWGDK8e41+02RzfJRsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jn0huZQc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jn0huZQc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC08C19425
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782346653;
	bh=hibPLFGdviPPwf3wNnNauECx+mrQvTjHfAfDrxuvcuk=;
	h=To:Subject:From:Date:From;
	b=Jn0huZQcymuQFo9U88gi0XJ67Q28AoKDNNMUNmPYgMKvLwAhOuVcD5SpHhrJpV6CF
	 OHtkoaZ9I1aYOvStEupN3NDQIMFPuUHFI2PSolsHvf3QikwXp9SQjqgiZZrJrxclS1
	 gZ6fO4IT/e/oRNH+g0t+h8C8sv1wNsxiOuQ0Cw9m5KO2IRWOw3HeIIOtpA9Jgbapp2
	 AkFOvdRbCjYvs4fr0F95QODQ1/BoKnIilrikjJLke1xZ231asowJBVjcE9vit/CJoh
	 RBWwypkXp50h9FcJLh/pzai7NbvlaWT3x/XcGDM3Btfae+/KEjTuI9yqdAChDJezqB
	 XtMyxqUwTBPkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD875CDB47C
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178234665369.5409.3692500948273160957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 783a6374d25659a11f45445caa5c3ac64d666def780728b3009c8d7e4b221072
Date: Thu, 25 Jun 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782346653
