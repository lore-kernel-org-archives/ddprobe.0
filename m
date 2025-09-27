Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2B6542AA5
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758931793; cv=none; b=qDr/keVfXJLSBNG42rVChqPxUVGssvS6VblE+XViKa56cY0jtxP94Qi1D8+BeBLgwpzj4ZeODpfERVo2pkZ3GdkDAP9z8EbX4TT4pZk5T0U5/8XutR114+lAR8tK7d8XMieKSih76PUVXbeC6rWL/XQNgpXlkFdaQ40a0obYNBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758931793; c=relaxed/simple;
	bh=Eh4aoYiaSym+H/u12SB6Ng08NStHgufjGiFU9qBLCic=;
	h=To:Subject:From:Message-Id:Date; b=WNUo3klSeSQH5GDduOWapuB/aBNdvUUlAYKKFPQ2ES/FAzmmkjL80iodpz6T1DlVSXQXiC4+R2sTeiGgwR5c/3bOkihS7I16w95MCf7vIbHM0TMLZo5Sz7q9H5P5U0DYaKP5vfIWERYm8Q7hIVveSLsHHoCaVeK2aRtWoFw/WKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8v9OcWf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8v9OcWf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A374EC113CF
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758931793;
	bh=Eh4aoYiaSym+H/u12SB6Ng08NStHgufjGiFU9qBLCic=;
	h=To:Subject:From:Date:From;
	b=H8v9OcWf+tBD8ZUiEariRRnLxPVhRWwnDAfqFKmBkqsuaPea8YtQc2xWwFNkLsFzY
	 azjNF/5sVahkL4YbN7yhVlzQc7QDuIx8bAX48E0GSQgjvDpw/t4LHskAmJl/PXIyoy
	 LQ5E2t8HlL8M8KnHwQmQwEUYxou/fEKt4V1dPn9isOdAbuZ3M7F1dMBI9gt8JBrwxF
	 OMCTeooDoT8qrdTKODCpMqmK5YnXmfvycWFEibIU3ZCKYBGMBOEY4RDHYENMhrwPTP
	 PvkzNm4YXC/q6E3wcBalbuELNOml7MscySry6JSYmuzw6kzrUaLsxOgW07dxmz5BhZ
	 ZnkGjGMsn2wvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953F4CAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175893179360.27808.5742825139557844306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e56e46a7b60afdc672e421fa5495eb1d7191c151623ffe46c54921232c7ccc93
Date: Sat, 27 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758931793
