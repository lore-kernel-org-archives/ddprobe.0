Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C5EF27057D
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788794434; cv=none; b=LjifmlvzT4RFq8StVK1YdwY+31a5JRdmmLwwlj4olCCnw2Imn8R6Y9Q70u8GZvxZ6tNgkhXT73dXFlEFIfp7M/JcX/I77WH4WGLLUNbGEe6MlJiCrwg0lTQLvu/4prvWJ80YV090Klrbw7+7yuMoM58o4+unn7mWdJMPLd4pAcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788794434; c=relaxed/simple;
	bh=AqHnrH9ifLYoGwLC4A/1sWCQb2N2R5cQE8LKxf71g/s=;
	h=To:Subject:From:Message-Id:Date; b=m2aiHTUkbTX1RwBmFvcWFV8U1K6ZMdMTuwAiubta5BviuhfS5a33P9QcwzxP6XjPrqL+KnOQvpthIDg0KAgTSaTs49QQ3JrhdpwuDWjzXQjhdBkUqdkR/LKhMBEXCKSlrftv4xaaIz2XgylqFB0Ou7ZcVdtwC6Nm4Lnl5sbAhjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V15gaEJZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V15gaEJZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05A1C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788794433;
	bh=AqHnrH9ifLYoGwLC4A/1sWCQb2N2R5cQE8LKxf71g/s=;
	h=To:Subject:From:Date:From;
	b=V15gaEJZ7nSgRYSS/Gb+NQng82FRzprLqMO084Z01MQXjaXq+BHZai8ksdnGfYix4
	 WPkG9U/Ynq0ctR21Ze4lklrZuyhoJBSe+Yg/4ntPkeLGdhDC1Ojmq3WFtiN56FSpmM
	 5qG3XoO8lEhYQgdpyP52qGUEgfqR08eZBu6gX3670ptq9+VtM1VSXBDRfqQL5+dap1
	 5+YxN9oSaw43lD6tARcsHFH1rT04hcPUkuMKXB1qST03t50pPLPeyIb+gzTLIrM5fE
	 2YiEU/1zWvSQTRQ/0hiw64vIXh372XAJYwmQlEuroYnMogkhFWpIiptx8mqZWJ8cfu
	 dpjNvAzLNDmdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE29BC79FA0
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178879443370.13877.1443987120377224564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d64216f98b1d1388a50fa1cd7cb878bca92cb5e539e19150ccbe44edd0b9a40d
Date: Mon, 07 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788794433
