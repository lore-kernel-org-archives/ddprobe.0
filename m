Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314C91EE010
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744254594; cv=none; b=QlIN0X1+/pB3wCOUWfPc667cORsS2mMMQ4NZKAoWLPaLGK3YqVri+DzjoGtH7w2PJM+e9PrAoNzL8417CWm2GEzm+nEW1f9LaystOTMNgbZ9yKnziDfFKYKxb+OOoMLyz4TU4k88LeoWtFqzYnF43+8rsf7gU5rR5UQgoAo/C90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744254594; c=relaxed/simple;
	bh=GznwRG9nkIgqDBTZKIS6G6OxgrRIzX+8qkN2tX+qcd4=;
	h=To:Subject:From:Message-Id:Date; b=p2Oc8FMCZj0KfYE8B0aQtaToBiub5aR5dIc5TSeADeiw/pSvETMKv/ZNFI052cBmKS8fZ+ePfzJot7wVnheGSdrlaWZea2FFKut0xbWuKKdX3t3WqDMI7iUtdOQYROsynhApebEBkNXwsh8y9CQF37KEmOkCgRzGICXsI6s9HwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ew5yMuzi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ew5yMuzi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4722C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744254593;
	bh=GznwRG9nkIgqDBTZKIS6G6OxgrRIzX+8qkN2tX+qcd4=;
	h=To:Subject:From:Date:From;
	b=Ew5yMuzi9SFYwiddTLV+pDwfw+7m2ZJdzACeOoy4mai/KY/BRJ9E6wFVgUNEGgCMv
	 ci0nDU7rGhfsarSeFNPrFdg2Nb8MR35Enl3EGsFfHVD6y6YwXGM61VQRWpHBbS5Njt
	 UXJPK95jdfWIFcPySdlD6yEtwFDqc7R7aNuZ+NCaPLB+pWwesveYjsCG7IrqA7B5OU
	 PjzbsOgxrqF+BxoBxG902herNWIz56QBPs1eA79ERhmHINh6vmFneiMGTYwfs+rkbC
	 8/Tk4ojkBwz1EvzPMqUNozewyVW33bLllH9AvDcbR5bJfHIdHRVN/+mjdZmvzSqmMi
	 DaQ/m1XWgnXLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95698C369A1
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174425459360.9316.14507300707066484505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff268891d9ab1f22f60509007153f957453020c18b74c0f8852c140eff9d49d3
Date: Thu, 10 Apr 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744254593
