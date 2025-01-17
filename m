Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436951FDE11
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737120954; cv=none; b=IDxeiLxldeoAXG0pJbPd9Lnq0hc5o2gHi7aCCJUj4qsHDmKzCCOseiTgls5PRCM7YP0olOQkv4ZC4g391QKyByjlOHTj6oGpm4HKkeLUYn+VvtYTtMpiQvajX5V0iJAEOgMr/lei8QB9HjE2ck5jPVGdH2Vkqy4blEyN/CsIZi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737120954; c=relaxed/simple;
	bh=Kg2iAzM99qER/wc0Y/sAk1bGYIFqOgvrtCqbrFueNSk=;
	h=To:Subject:From:Message-Id:Date; b=ZInJxf9fhfuOTKopWvkppKURNtGZgkrS0xUsVmD000Sc7Vzi2j+QNq/60+yKx7T4ODyo9ybkEcMDObID/ZrsVpbBsWnQLFoeH5O6ydce4hS3zPm5Laq2J7eOfQTRRbqqLmjMgHi6z6TMERz5VvI9yHtaVulTvAdf16YitVuXWfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F34UVfWd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F34UVfWd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB61C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737120953;
	bh=Kg2iAzM99qER/wc0Y/sAk1bGYIFqOgvrtCqbrFueNSk=;
	h=To:Subject:From:Date:From;
	b=F34UVfWdoEh7F7VghelaN74VnJ4pk7VLKX9Gs1Cw4ttuVSZaO9twEWdUOzdnKnP5b
	 KCcCD3MIsMyJjTZQREp1jRF4fUkmZ1pLrlLRMJG6m5Ft2fycRibaiSxNoqLpIWNDV3
	 RjjwwLpa4y6thWhkyIaKCPO1kAckqEK3GMpHcSJHETQpnptNaPAFpp+QjHtS6PWVDy
	 4Epa28dda4P3o58TedBPlW30vTzcQ2+Dw0Btic8YkFma4Rjugvqk3MIkdbE6QdmlFH
	 72tuSnoNXFc2Xgz17bJM0p3v/pHr25lFeCjIlYixv65NEq81EVYmEX39qA+NkwFtxh
	 hTugbb6YREVAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BC2C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173712095359.14537.16289669401879272752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e08613a37b173d8ce335d6a23b52065d8f3e8130911ee66396f417c121ce382a
Date: Fri, 17 Jan 2025 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737120953
