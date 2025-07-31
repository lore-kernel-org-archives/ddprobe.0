Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311E31DED5D
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753978195; cv=none; b=NdORcHGCca6rq0IH9sGtiFgq+4CzJB/S18g15raAiBZmj9qxOAL02tp4pC44GwSZIoj43rHYH2+tkG8upE88vjsk1xxULmAm10/0jcuC9pXgPf2XIE/UVsuhs2wx8GFlHE9YLr8eP2hPnqrnCy+JAgjJ26FMkPb6tKBQIgzVUSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753978195; c=relaxed/simple;
	bh=2W9sbxOCx+OOfGfNUqRYkXGRNRIN6/tglhlBEs/fC4I=;
	h=To:Subject:From:Message-Id:Date; b=GhnEUpz4/r3A3O51NcF3ukEaPL0A5Z0kFoqNtbCa5ZdmItXWg1a3LOP86xh3+MVLq6Ckr0Mz4eIrFiaLrM910TMiPkZV/e34BX60CIPUHxG9WuUI1oO5MnhrYwW10eh3cTobvzdoPh5O7dVZ0zVnzRuajOguHMzJanF2uc4NbcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbkrVqNR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KbkrVqNR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E18CC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753978193;
	bh=2W9sbxOCx+OOfGfNUqRYkXGRNRIN6/tglhlBEs/fC4I=;
	h=To:Subject:From:Date:From;
	b=KbkrVqNR/3ZQTmnOQec07MQwtlr3du4/M9fAXMQP90fErlplVUBEwVfi6k3RemJyE
	 6da36g/6WOQcDf3Xlr9LsNPAUvn3w3p2hXZfGlVpKLzJ62WvA4+IfmqAO9Oqc9EUjX
	 KS1y8lfCW/0dhoYgnscIKYfVMcJmXbXdGwWth+/sKdH+YExKzJ5xrbgEummVegtAvM
	 CDcAYDeaZwfNOuf262sc4E4PSDGHzEorM6KzM+i3lcLHFuGdWECZ024ufsBL6YDEnH
	 elkH9zCFJPF59sLOBiQ8FUR8Kr3RfRg17jSISLMNKzNx0plH/ROhm6NTLuZXxRSPtC
	 E/UtPe3xoDYxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEC8C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175397819357.2490.17665064970424162273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afcb1f2981b53709e9a2c1e0852891bc773954310d46a2728b63769738a78731
Date: Thu, 31 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753978193
