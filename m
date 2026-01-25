Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2B918024
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769299434; cv=none; b=WU/4mcgd4oAuGwNVxzTbOP62mnhEUZGK2e5hB3pQ7ZPfY9CXXlGTnGKa2t/A8156zv+W7vzcP8IowwYhVpRHdcj7I0MWgwtEW3LGw7dSA5Qz+xFTE2nNTEZxXgfCCZLXpOpsskWEOMXvEDpfmMaJqVnHYOSJV7HVMIW2d52FeSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769299434; c=relaxed/simple;
	bh=Iqm13zmR5q6JPj+W8e2B1C1nOHHXEpEQUZNKUShVO3Q=;
	h=To:Subject:From:Message-Id:Date; b=CKgxx2mjHMTi+s/LKPIafFRCDIDn8C6PxKpoDIbtvm8x3ETTi/IA6UlDvTX0jo1H2MISOI6BqoTGy/EMntJoJiQ8iFVC1GYRtxiS6gaDSnOO1dLLpLrSC3e++DLqLyvx+JlJN/da7/8x1svWH5/DtcDwGXskE13hE3V5BMz3hbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLM5a00a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLM5a00a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA362C116D0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769299433;
	bh=Iqm13zmR5q6JPj+W8e2B1C1nOHHXEpEQUZNKUShVO3Q=;
	h=To:Subject:From:Date:From;
	b=JLM5a00af40RxO2FmI7G+YmBAHOSmISt8SXzQivl1Jvm1RsVLo8IuvKdfa5Q4SHYy
	 jX0TlOhtZXGDxGmekO1oppVqB5bo6QAlscZcIHsXZ+KDeKCANIr5uzGAB2TlZhZvwW
	 VRaFlOloFfs+zsaiPDgDJhAGoVL5mkp51StpXg5CQkeKwn9Y5LJuxxoRXK3ZPOIUtJ
	 1jyRgwlWSRDHMxdPQFEi2o6aLgEST5bF++SkB7wpbj7XxFTYJakYdT8coImR0NonQ8
	 Y1PTKbaGnMWkx9HUPaD2A1/dXaCJdu9R38I9gFDl01Yj1G+eXbLoekije2dbw5DFk8
	 ShZgCvyznv2BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975B7D715F1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176929943358.22027.9053872798758479728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a56fd5e6351294f8bc8bece6f47ae2dfb3bbefd42514eba3555c557183c5df95
Date: Sun, 25 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769299433
