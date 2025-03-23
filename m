Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4560428691
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742698794; cv=none; b=okFy8+isWj6IHebDRJQ6/Wzy8YuCnNSfUoHEjajv3LF5EXmdbtc2WhurN4IuEM3EM+ccJ3+HjB2rpLXmPtHvfX1mB/2OCTYJpPBdmYODvXTafuJNp6NyVK8jlzsbsQnAosTls9xr2RkRB/cGNo5tkj9RsilNKY2cMg9XsVkjaUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742698794; c=relaxed/simple;
	bh=D2S/0Q4KQr1W6hsVBXmDDaz1nSxRpBnGulsCmb+yE7g=;
	h=To:Subject:From:Message-Id:Date; b=MbJ1jDbooQud2Azu1OAwr/0IIidZMeiFHgTkWgqL67nzLwdLN+fFTXRBOmaIQKZn0BApl7I8NHbO2qoqh0P2EMYiYbbnzSfT+y73ZXyCX+/viE4mk/vfBCzG1ufxdzte67/zjwkPthKPBatod7pnL1Y1GWm4Sfs+nlQ3jkoBmgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvlVBagD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvlVBagD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7219C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742698793;
	bh=D2S/0Q4KQr1W6hsVBXmDDaz1nSxRpBnGulsCmb+yE7g=;
	h=To:Subject:From:Date:From;
	b=KvlVBagD+UpeGipNFrUWYnBvRtAWYN6UqUX+d2hEczGnHqAmVIXP+aTgpcJhpOAwq
	 ICGUYIBKsG4JrXyJ1RqGRE5e04pnu9MblvtfIcpyCNpPUBCXzJBFe6igGB9wpy7Gb5
	 nggNXKBz6ZOb+cAo8Rv+vlXu+sjzTcBZR7NEu95NDwjOhDHEDpOC+cZFYENNEAP26c
	 HVQY3lM+rR4eZlbZyn6zKTj5QAAwX9+0AFeFow0jl/XD0V/coljdpp23fHw/vTpUnL
	 PrupnXV+LjuK5Xttr/OroCuOsa2zZ6P+PoGs8StUml0zopEbGBt8YNntrD47c0XZkm
	 5+dO92StRoPCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E83C35FFC
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174269879357.16257.452308410401570070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0464755818ffd83b20b3bd9e658b506112d842af3a97ed2e24be18e8e6b0827
Date: Sun, 23 Mar 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742698793
