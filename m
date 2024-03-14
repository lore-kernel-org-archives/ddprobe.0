Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0378F5C61C
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710450497; cv=none; b=W4f5KZw7+iEIFId6LCi0ZIKvEsmfAMYkMOBRpxRlhqxda9d4H1WCGpOj+lZiocZYKPX/xPrBj8VX3voIer77I82YSaMUJXkyXi+DAwEZt4FjuUojJIitqTVRMCysHPXot/UWsRZB8ZGXZjaQceZyS6X3XE4mhVv/IUPAIGNdxic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710450497; c=relaxed/simple;
	bh=KuQZ69mBZ3oBMAsHVECC82ZnTNC2riEErRhz3OJntpI=;
	h=To:Subject:From:Message-Id:Date; b=JF7ASYvo75aSy2oWtw8Ve+euGjSIpgmj5dJIrpAtfktFMelbeRuMjNJTgZYk7VKc3wdfePVwG5OK1STgVDrzYQcnOrihPEsxKJur+OxT7hiod50H8XSV66W66b0QGyOsCd0T14a2DZIu/VQFGme2oS4lzUJSgJrFSPaTzcOqO6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPldayFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPldayFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D1FC433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710450496;
	bh=KuQZ69mBZ3oBMAsHVECC82ZnTNC2riEErRhz3OJntpI=;
	h=To:Subject:From:Date:From;
	b=tPldayFoGmMy0JZ/P+RaVI6wlA6K2yDqAdgzPXb2RVTT/ozv7KdsU2igRPd/sxVL9
	 Sc99iKC56+B1FMEynzs1Ogtb7tqckXgE+f8U7TjRW8Q0teCbLPqO1mx3wkOyH7Z776
	 hie7z5p1Wv1i/CmX/DjQf+feXslVH/M0+is2/ZH0XkkUDaQWptl0IRiqDxaTjA6qh2
	 KHts+QNOmAC5ZX/RLWxZ1WbS7Tve4NpYuV52Lcd3aX/IOZ/kj3Q9nZ1+Dq9O5eaP8Z
	 aOLriYmMYUhmuP3kjX5dXO9tY85oM6iuclGaZPKlUmS6iDTsNcJ32kLj3hEfdMM4oZ
	 cv6hl+xpInRcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 636A2C54E5D
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171045049640.27953.11806496040767856410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c1ef358228db53dfc91762768b79f4f11a74879c382e53abf389f8f53348c4c
Date: Thu, 14 Mar 2024 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710450496
