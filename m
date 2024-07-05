Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F7C1F61C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 20:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720211723; cv=none; b=Por9Wjc49ammY4Jz9Ms5w5FL0H/LBhuNxVQQTDfd/GunpeWLDuJEnSaNq8HCY1K5/sU1C6WJWgVmLT8ft3fa4AOpxsQhz5hz/3ziBIjWShGQf7isF1W1LTx4vCYZ+ktoFgtiDj0xlf6e3ncl33AEzKBn89f1THHJids8oIq47Ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720211723; c=relaxed/simple;
	bh=xy6akeLjksKCSfhDkoWswo/y/VDxd2hZy9KsGqkQLoI=;
	h=To:Subject:From:Message-Id:Date; b=gmJDBRY1LR3fKJ0r1p0qnYgET0Sw4m4r5MOPjoAjq1fCTP6J59DEyvBCULbi5stPtYBZq+dN8TZTgTJzICHPqgnmdjONo71I9F0NrAq0kw+FdM9Kzk6zrip/ejWBmbdyQV+AfOhZZbhZHwA0tCFps/OQxW71lhsp7xEBhJHVpPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0d6mSea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0d6mSea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65D4C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 20:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720211722;
	bh=xy6akeLjksKCSfhDkoWswo/y/VDxd2hZy9KsGqkQLoI=;
	h=To:Subject:From:Date:From;
	b=r0d6mSea8C/RgDWmD0GEbu2/hxk/sEwia7szXWUyjKdmiggWpzKnhwFo0ikm5JZ9f
	 d+CimHb1ss7hDx5ySSE19/v18xTkp12igrnmfsgssv2z2eEo8sJxBwVpL07GgF7uUi
	 WJWIeebueL2rEQP6Uc3m+H2r7CVTRemo9BXVLYngjSkXXFqTV+4dfRd18ecEoRdgM4
	 FIEeoXtxlBhgHQLomaNfsQ/wBN4xa1kn3niTuN5/3VexusBcdaeD98i0u+sPwcuqYn
	 gZvW4PEqdHT6l5CfW0nb3L4S73jr/GnkqAk0/4a4d+9GHVxs86msdJ/W//AaTN2Fdr
	 vxw2iFpbEYU9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD396C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 20:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172021172276.4560.5837387624048447703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9815f134b4e47759e14660a0dbc196f62b88b16b3e80b0bb6d13eb31498ff077
Date: Fri, 05 Jul 2024 20:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720211722
