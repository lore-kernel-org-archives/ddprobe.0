Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3CB1891AB
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757818194; cv=none; b=FIzDMxT4lHul8BZBjVcTpgjUfFhSS9QftOMUV705rpT2s9vnxyWAfa0N2c9iOYecdNWrd7YYudbD80C3dUCnprrsuzdkbPaPu6aEkgluaGW793WYGt6QOyqjvufV1FZrVusDvrtU4e6I5/CMza8f28M7Yyvfs6EHlBv1GqI2zV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757818194; c=relaxed/simple;
	bh=AmPtAjuTzRo1n4L49hcz4UvbrIwzy4UeaXSEKx/zT/c=;
	h=To:Subject:From:Message-Id:Date; b=ZPMLMxl1oemXhVWcpE35PKx+Ww56K3ABhyL1YL2Rm/6iygHMlHlJqufZnmdheYIbZxyGClKm9v8IjUdp7nMMjkau5hIXhwxM3pTAwoZokRO/fPdC7XMCqBHjo6XKolL0xbNwJ7ubZWqjDxMejXVJ7UrTEA93/A7tnQjzErwQe5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLZs8VeI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLZs8VeI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BDAC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757818193;
	bh=AmPtAjuTzRo1n4L49hcz4UvbrIwzy4UeaXSEKx/zT/c=;
	h=To:Subject:From:Date:From;
	b=nLZs8VeIsfHTmGHwwz/PHZ4RADRYMVgWB1FiCbXhlyo7/GH3p6Tw+s8aTSn4U6gJW
	 sFreaPijtq9PWRiXwy0GVeefQekzymTDwk+XqyMxO2PVPM7hvqmRj7eejRrmk7jlHV
	 Sl//fH4GJtahAda4KuQYzyn/XE1ScylLDUuNdUYLLYW1NmiFAClxlzoBQsEmZLZdbz
	 g3XCfCEPLGUe51PtH2kg2ZsBMakRttIEWhyBKkkkObwPgGyDTE02byP8f5HGu2SN+p
	 T/SBlqb3ungZ4lvDTB8dq7yQA6lctGU81b6K0eGGnGGOaWQ0jKu4MSvOTf6mAJhPw9
	 Y50N1YCmyh5jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907A4CAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175781819358.5757.12195332297676556359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c74cc23660b9c3d7d18d4dc1d3331634d8088e4577a901af946717ae86435a02
Date: Sun, 14 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757818193
