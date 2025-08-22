Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291A52989BF
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755889794; cv=none; b=WCf9U86qNwx92Lik/qH+QIMrp7JJh9E36AAINHlj8GAKmdbm3IhPoVgDNPHB46obvaDUR8HU0OwWqfNFlmB/btBNfp43FzBmWde2tjaaiDqR2C1N/QsJE8REx8udLY0FAleUIXsjXG9H+HguwMpwrYUiUt6ufw/Yhg5IUebReU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755889794; c=relaxed/simple;
	bh=lTDtgTgtnQzMs4K5cmRcVY2gmlVvPj5RGFExCDk88tI=;
	h=To:Subject:From:Message-Id:Date; b=RAo/bqL+j3AN6OT3DPHMV0v1CKaIFeF5BnTm3WlA1vz6vA3CI1xUtH+gCrLasHUDKucuSlxJTG1gDsfjXa0aa3dWMsX58H0Offs1Jyp1XuFLXsNa9CAVCPo9xsyS8fMUiqSoiNFeX7lDI8RU0wWqFON02bPD9MZCyezxajuawKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbREwfgX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbREwfgX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF15C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755889793;
	bh=lTDtgTgtnQzMs4K5cmRcVY2gmlVvPj5RGFExCDk88tI=;
	h=To:Subject:From:Date:From;
	b=DbREwfgXwNTA+80xyqFrjbOJhdEsr1rcF8ieW33q95Oav3vMsuaecgzCNgCok84vo
	 EIoNLLPad5ZrecU0lU6tvBURKZWGs0YcRqrMxK6nDv8xAEuNxeRsLadyzBoAyn3ht+
	 Yz/0Pi/b4r8Mt+tCpRjWaOrYE0LedYyubRB+hGCpyusn9OjA+P6CTitGOrDEVxLOOQ
	 CKOtW5icqe9cSPzgsohVZwhatMJAvm907BKF+WMwecnZk+01xattvmSFEo8NWQZp8+
	 dI7cafyy4ueGd/xBSJeJTu7oseUVN7fe9lEEKqdkmjzCU9aUdYyufma4HWzbKr2sRx
	 LNnvOOJHNl4Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB4ECA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175588979357.15899.9358872515572826261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e875cbcd1fbac6e163a9b655c04f6786832ca70fb32949d3ac500a4defd827d5
Date: Fri, 22 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755889793
