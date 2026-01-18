Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE0D1B808
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768704234; cv=none; b=NQ46Mc3xsGFiUKLlwYCUe5YTwZAifpmvxnEAnrW45nQTJSquA0luJfTEUyokeXB/mCw1hGOlvnhZ8upv/5iI2ZI/8uGucA62COZTyAbkOLL6MXIeUKyhSs3Jvryj9L7sU90iR9NujilP6WFcLop8Hv4OQqXu2Enlkb1AkK50PB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768704234; c=relaxed/simple;
	bh=MlRwu6Ga1j/Wmrvia4VxgOfEe8IxK9crQWd37EHhJ+U=;
	h=To:Subject:From:Message-Id:Date; b=HOfdQq8+dyFEEiUUY2w8xSMsijmN4oic27iDaCq43VK/fq/SPPUlwXI/rF1rCodd855Cz3CP+qDocIsps0mk6409DSAPITB9yQF4HCFk7lw8wXrtVrvRByVYOHNOdTd3h/bEXFhbAPvTOKmQZVYDkKgIfDfLrA5PJ69KYvjgXqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kzJGHYCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzJGHYCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCD8C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768704233;
	bh=MlRwu6Ga1j/Wmrvia4VxgOfEe8IxK9crQWd37EHhJ+U=;
	h=To:Subject:From:Date:From;
	b=kzJGHYCAk6JrSQnEaFNAbdbIDtmMNAFPoNr98nFugroyQmasDprqVRmvhJsnXnIUg
	 BqGo6hQtrAiaCnRmNtCPc6RjOlwFDE2yPg+kEqeM/3QfQtutKjpB+WET1OSIzrDu1r
	 TmgjRZ6WQMusmEejK4miPowaisiy+ixrIz5QoK8w3VSCOc0g0ZB93Ox/cMIIZFBvuF
	 kukIgHb1C1HZj552xwNBNZRe41XtefFbsKfYI4Tz3FhVszsEA1aKNr0s1dLqePZJ7W
	 PVP9yREKwDWigrs0nFqLOlo7J7kdz3gmBX0JvSHeMEiuq9plM50Z57EGXvQTzhj/wt
	 NWif8+Si/SJlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CF9CA5FEB
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176870423358.27470.15329720167142533974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47df89daa324134ea401e3f168823d2d317072e508f2aa5190da2225793c8796
Date: Sun, 18 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768704233
