Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4E863B9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 03:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784172514; cv=none; b=gsH2J4UugDgAgZATnr2NvYcrxH6//UA2dKQ7LUu1opMtKFZSO5qruQJymhzJlB0qajC7YqqocNYoaqnJquBHuL2xzCA0okLRUABKCplp+YUa6u0xcpk18m9OrSWYPqAvniErrDdTynOwDkROgTrAnx4VZpYz7zdpm3eMzkIkM/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784172514; c=relaxed/simple;
	bh=jeR3fDmIn+zmO0HjLcsMdk94VJeI/SDhGqi5Z4Y20hQ=;
	h=To:Subject:From:Message-Id:Date; b=TuE4dJxx89BOoab5YkMs4gLLJuW9fkwoQzU1UDF7jZj4QBo5MvfDO8yPksRHxV9NvmNPXE5XjvsfTWc0UNwFj1KZVFxJa8fI0EjdicYCIZwkhExlNwGqTXHF/xkeIkvFA+rSxIZW5RdtuPyL8vgFE1m/NP/0xaUgW3sVYEniiHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=risLsR0s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="risLsR0s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA30C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 03:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784172513;
	bh=jeR3fDmIn+zmO0HjLcsMdk94VJeI/SDhGqi5Z4Y20hQ=;
	h=To:Subject:From:Date:From;
	b=risLsR0sovB/HlqKFVr7ImqkuRA9Q7DgGf3nM0zROLdGsrM1wkDkbUyWLYyr8YLw+
	 iS20Hnmhg3HBrNcRTgFvTuOpJT6KvcUo4GmIqR33PSKAlyvRWaCjdw5xRT1NXaXGGh
	 XWAgCcFRjK+Fkv5AoH0ylsuXFF/V63QlHdt6zqvz57D2J5aNJgFVB5BoQWFQ2y8hnj
	 Cx2XtkAuezWydK/ZsiahWIer2zt1QuaHdMNmohlRxkToQzGlKuqvhbetYj8iZrhmyK
	 JSRtL0kvHwRw6jK4+uKwU3j6dz/+tcEyIwI2B/e42jo6QoJhg4r4c/JDavmkMzlFQl
	 SXD5rUVc7PBNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E4EC43458
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 03:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178417251368.8778.5303802143168190125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4abd16326309989f72db6dda6269bb7c9c43286a5e19eca47a5a90ebbf682dc2
Date: Thu, 16 Jul 2026 03:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784172513
