Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CB41A23AA
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743719395; cv=none; b=CdjbGyOYgg16/VemIZQ/20fHcbWTxRBucTuZZ2PcterO9eG8NjK7CshHP1nD/rEQtVuQBTOZYHyDgVHdh4V9xfPgwPWN8+xOO/sitekjjlrt0hc48r++7/SYzOv/NA6rJjWrQWdSPzIe5goxMLIUOXCgFad2FXKA00cPOWcHvMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743719395; c=relaxed/simple;
	bh=SX37uuMipB3KowZHSoXCZOTJqWBNPM5SEEOQHUTXot8=;
	h=To:Subject:From:Message-Id:Date; b=Y7nz/YccbDIVfJxOGaCqR69AOQLvo4Ty1D5+UGr32MHg2Eu34lHYYUv7Y4LuWGZ/emwXdsSgXPEmjCmN2I7aAfa/Osi5aqAvLp11f2wUMqQrCo4MpHaj+pPZ3hR8cG/m5Cyo5YmYnoYCZMAihKaDi1+i47pU70gAKDJUGGo3zfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vye67GEu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vye67GEu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26F5C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743719393;
	bh=SX37uuMipB3KowZHSoXCZOTJqWBNPM5SEEOQHUTXot8=;
	h=To:Subject:From:Date:From;
	b=Vye67GEuTxV+woc66kY62XfMdg2h8ZVOzUFBA/uhHHeCbqYhFqvb/SBga3bRRrQ6z
	 865U9tJkhHTszdrqoScVvx4G4EkqSufWxOrhJMU5ZLgIg8+FPzHiU9CSfuGsxb6deS
	 LBiUrjHMJYxT7lZ6GAEpHafgY33K8q/U2my8akyK7YW+ElZ0dZdKZK1Gjcx5G6QeuW
	 zX1Y2FxHT5qLqzx52rFZznMCOE4JHIzeyLvw5UtCLUMru/UEyMU227LurP589+pdE2
	 xr163AUIAPxES7N4YqveimU2u28v+ik7XlhqcQ7nonIf3QR4P+kWJqd3aiX6ahVtW9
	 wt+YDv+9/FQCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAF4C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174371939359.32336.15221775905539856016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7ac38ef8db14e5c91212290a757a0736a2613fb7f42268d3be8d191e574d4b5
Date: Thu, 03 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743719393
