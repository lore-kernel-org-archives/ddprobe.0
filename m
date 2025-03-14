Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A9AA17579
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 17:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741972135; cv=none; b=jQB1yqWhjmQXZVKUe79ZQ2YL2upmvq+LDSMOrnJab7A7FRojEuP8Xl6r9Cks700/6nZJATYIxzIeTMCFMKJqUtLBwLvH2UD5+7Yof4HthKNvOZ5R7DY1o2rcF2VaUVBbi7VDR26aOol/mK4ttgE7Sd+UiLWU9yEheE+eVPrntuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741972135; c=relaxed/simple;
	bh=CpZkPh2HfpdLlcNwSoZ6eCkWGud/IXHJYpnUI67JJpE=;
	h=To:Subject:From:Message-Id:Date; b=IZQnqBDyo8e5GPQd0wbfgP/u4qZLfchRZxoJIL2Cb1O6S7gmhymGJtoZOMJtZzf84NADUl7W0Lg1wfI1dniIIYzkcdht9SbPbrXJ5RTeHtNCx0SLceEI+pHxDctDl+eXuue4oJUUJc16NHpdUABH/1dDeJrbbyi7NcwQWwnta3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3cg4v25; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3cg4v25"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7069C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 17:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741972133;
	bh=CpZkPh2HfpdLlcNwSoZ6eCkWGud/IXHJYpnUI67JJpE=;
	h=To:Subject:From:Date:From;
	b=g3cg4v25rJtmLEK98XiLTrcGFHwJmN8QRU7HSwhKa/r6pldA01ZjT6Mz6fJ/7Dple
	 x4VB+huerZUTw/YYq8ZpStbDY0TgpeqUx9L/oWHFG/Jzy9EdP28FksUc+T9dttJBTZ
	 w2E01EXWsDHlCvEr88831a/jav9ndHeRTWz/7duAbgBIocs/jIifxOjlAltuIHCWO6
	 UNdnFRWeC1MMdP8ViR1r761QovkOHHnOyMnRrkuN/fof3ShQPS2v+qdkMgvPtxSqe9
	 Rx9CtyzNedggfzPj+jigonAD3yYUNz/EMI3gYHcBU7/bS6K9JaSbNwMa4n2HjJCZut
	 v9/KfkicEI+0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E82C35FF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 17:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174197213365.19048.5567255786665606037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 437e186fd39e08d30af3698d842011d68be17703248c44b10f8d58585f2857d7
Date: Fri, 14 Mar 2025 17:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741972133
