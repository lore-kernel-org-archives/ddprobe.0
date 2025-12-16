Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A2E155C82
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765874634; cv=none; b=MDh24Pe+D1a3GJy0zOO8Nsu9do0czYb8WcWHqpMErPLyl3aGCWIcZWLzb1MvlaSJJV5FLXbuJGGQW/iBEODv0ZXqYSaDQbSaMDu5XLP2XOlDP2+cXgFgucG3mVkpMgfge1IEti2G866oSnRm2izSL7mgc41dlgIF7LDgBXcDbB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765874634; c=relaxed/simple;
	bh=oLorzVpMFQwDRzdIevKcmxMh7zLe+7bwFbETZ4m6e5Q=;
	h=To:Subject:From:Message-Id:Date; b=sooo2G6s/FE4t28WkKKuUL02PrkhJ6u1eB7sSvZcuiBcrHM/qSK4iidFinvI+S02aUqghZdscKP/obvcRCiU749WKYlY80KvQpX3Pqn1nkMEB0TW526NeMgWeUc1T7sXjxg/ntGJFKyo5HbCy03i16uhSJtiTb69xLXHoKFXDz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0UC/ZT6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0UC/ZT6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EBEC113D0
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765874633;
	bh=oLorzVpMFQwDRzdIevKcmxMh7zLe+7bwFbETZ4m6e5Q=;
	h=To:Subject:From:Date:From;
	b=Q0UC/ZT6J3O9sfFoCHa/VVmW28g3D0aNan9Ag9IoNrZ4lJd+/QAscFA6tOCD+TwH1
	 zQ7WedQ9liD0sMyehq8oZLfrYST1Az7nV3+NBnI6Fy+7INqC4EtDAcCBGhGBRUyP3J
	 CVhA4nGoJkK9Hwpj3jRd6uAmpYlif6Y4bAp4GoBwX1b6tmkHgyiixBIxHdgd1zMEWU
	 9NBQUgnMWTiYF2cbji9T+/clgCrPK9tmzl6isi+ZGWNKybh6I3n1XbX0cUXHNWD/Zq
	 P66Ph7MGaKFAHbi4lIQFbYfzMAogR/wV3USVMXA3H0rpWXac1m/zvMFro8+yacGQCv
	 T292GwlmMarHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974FDD5C0DD
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176587463361.8866.10412098667423407108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d559f0d49a5ec2f11c4fbd06ee0aad59760f4a5e13e75e04e1260619f19352b1
Date: Tue, 16 Dec 2025 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765874633
