Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381A3147C86
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738452354; cv=none; b=ubvDebKU9VaKB/cT5WxtT87kcFbWbO+6LpWJL3MuoLDUcO27Q9ZeZR6OJo9TzUHzyCvQA23sWuxXXSi+CQIPeri28G44DoG1qYN9IleMFRKx/byst5CorQWPLeogOScbsWUnangPuAexACbd6iqcZy3e1n3Aavu9ofHMPLnzFWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738452354; c=relaxed/simple;
	bh=ZzyUouWGIrxLGY2b4QstyTmjgeFh204QQrveE5GcPwc=;
	h=To:Subject:From:Message-Id:Date; b=WU990KoYpPMz3h2pdvjc+TTqxf/loos4X6T2vKyfYP1hLvDdhTFlHmvBkjLs2JvjdgL/5NWZOLjA80z652kd4/FHTp05WavWAmKOJv3s5v3pfRkglJAOFX4wMsK+FXRmaY7IormhrszLOD9EL7iWlsVJ/hDu0QIKdZKSVEE5gBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWu/oYNW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWu/oYNW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1565C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738452353;
	bh=ZzyUouWGIrxLGY2b4QstyTmjgeFh204QQrveE5GcPwc=;
	h=To:Subject:From:Date:From;
	b=UWu/oYNWKk2qujPGTNQdvPitKha16E4uqEKA/qkSMKp0RA7aR63T6stOwsBjVq3kg
	 ip3lP/8VosqgwxIaWFzKY+qRbAcy09rD6Pi9U3xCpHKUiMdVSYmkv6JpEESXuBO89Y
	 NwR1uUhYyDZ22rq2nxhdXNrOZBNs6jpuhXvRVg70Pqq+iLSLFTCDrp7sYA0zAuQ6DC
	 eM++Dzvde5hcz5LWkp0olgRk6b5AE9nx3/MOAWmJCnIe8nE5P7gMjIxRGuu5NZnMGy
	 XjWm7njpdc/s/cMux5kNsG/TV7Bcl6mHZOUzmmDtivphh8FtKJRSz/9qoch3KCn6SO
	 Ia69JdAWt9fow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9198AC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173845235358.30497.5181039520597027280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34bdc0e16daf295a9a9300dea667a4076e044ae4371de29b16c6f57a54e3aa9a
Date: Sat, 01 Feb 2025 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738452353
