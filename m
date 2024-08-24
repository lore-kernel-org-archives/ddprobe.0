Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A48C61FFC
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724529354; cv=none; b=Nx/EyEqoegcr3XhYhLI2YpRRD5DrnSES5wbFzQbSPY9wWlMsRa6n+g6++zuxfTePodDrZBR4ZqGcLM/zZJw/dIGxmTiVaacdN2RHaunt5P1w561pQ+8a9WmHrjnNpZwOi9FrjcamKtN+IB3LKPOC/0r63de2BM6exg51whDXMtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724529354; c=relaxed/simple;
	bh=2IjAT1JZNQ6m5/xVmuual5oCYZb1EAy9jK22AhmkLx0=;
	h=To:Subject:From:Message-Id:Date; b=cmrjYjnMS6b48oTEMKW21pIMb2s6FSSdxGoiDxpsobM0rFt0OHFEFTOEfl1PFRZtJdIttozMfeW5h6RGiIaKrT80ERryZ5QDk3QvfrjEr6fg28O4P2MrRHISfZVoOjqhlfG2aLWl8tYPc6t159Ez4zcbOCqZOK/yRjgtCzZlP/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TksRVzKm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TksRVzKm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5934C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724529353;
	bh=2IjAT1JZNQ6m5/xVmuual5oCYZb1EAy9jK22AhmkLx0=;
	h=To:Subject:From:Date:From;
	b=TksRVzKmnxyPhAyXwGomUqFe2yRRlsao6O26sj7MQuVJ11LKoOPBZujXyMyxS8qeQ
	 +ICkCFZeaNvetSUj6mRaG/eNilhlQGV9qMm0ZiwgnX1gLeHutQM3bqxjb23yeEveIF
	 zGTEM4Iy80BfKrAnVzWi5Fi+e5MgT7lFvNjHlgKC9PGYDzwVZVVTt/YXPzSrCEcX88
	 l+50WSLvMtOXVXVTTKCrITEZn5BbkKYs7nNW0t5CLqE+OmQmOHb/4LN2n/XSCZJ6hf
	 Hsz46BLC2OIfun6pODg/QkAzVwUUKdBc+4ZKppm6riATMDDSpXWN+9NPL/PhT/jq0u
	 P8G9RTIMFIgdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FF5C5320E
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172452935359.26304.3679826849840664170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb1bb48a50ecbf66769d96cc01456c00f864805bf6cc9b990de5483ae6cfd6fa
Date: Sat, 24 Aug 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724529353
