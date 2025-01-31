Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61B4B819
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 05:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738302954; cv=none; b=Y7OQTYe3B1ihXY2tSgJm7zLQ5gtEH8jEwUP49OTO/rtgIYa8qrer2iEjRkPHkLNghcc15sPgAHsfcBkMxxNmZGZfOBEif4n420nnP7zQ+GQR2R4BsJLhUXT/hIoAdH3g/dGFpiA173zzOwVCQJsRO7haHG5TRA3eOvvt9GZXC2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738302954; c=relaxed/simple;
	bh=DucdgiGTb+AILp+r623yjToojYuTbu9IX0kKgUfBp4M=;
	h=To:Subject:From:Message-Id:Date; b=YTuqyTe0cRIrSdgYiWQpee+U87jgEInSb9x6C292ZlacsScXDD8r8tLKSOUOws2WCBfvz+vz8YWB6LpcMRzw90/cmuxDFpQ/mwzyiSHwbIiMPdz+zmL0bb3ZvQcPySzwOvmhBHYe0eE+EF7d3t6lSRjtN0IcTuOF0Hz31jJlLdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SFonqD12; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SFonqD12"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7218C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738302953;
	bh=DucdgiGTb+AILp+r623yjToojYuTbu9IX0kKgUfBp4M=;
	h=To:Subject:From:Date:From;
	b=SFonqD12CATzLxL+3jXiZS9FRZIAZ0VUIMBQAE04u4g9z3BDZnwTE34BxuAfCJHMU
	 olEJQbBdsIoC0Bjgj/ZM9U9GGTL+d/L6Cq6nAxAhkpfao6FeR1w8muhxb8cDXD/spE
	 nxxVN22QIUL5cnVhyf6JBJ+RpdwKmFsWBEaD7mgCKk7Dc7x6W3VhkqO28JYsC3YkDA
	 85FpBZnGWZ1cW8G8eSuhF+sG6Iqu2kGlySh2tBZoT28EW0USugBL10XlvEFe5ZFC8p
	 xehkW9lH8vwl/lcCw9pHnUJr4mwGldBszEfAgELrhcuJkN6knT9Z9Fw8lwL1h0S9Pi
	 HxVY2SMHqRi5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8DC8C02190
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173830295369.20076.16629318235100060038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 782c15879631f9dd272722486806463a9822f6f84c332f18b133a9a30f1a8e29
Date: Fri, 31 Jan 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738302953
