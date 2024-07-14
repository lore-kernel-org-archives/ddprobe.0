Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445D4208A7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 08:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720946423; cv=none; b=Lu7jra7W+zeAXmP/F8s/SoUfKHA2FgFlkmVdDf0Rdib9LLapXBQEOA24K1jiQ2rkHIvLWg6c03Yqra5eYsT87Mks4e2l0vmU5GrCw9+bFqVu4s3yoVb4+LiZaBYmUZ+DwYNiTMpQSw0GRQ+Z7/eNty+o9KFv8GMceQrmEXPAjsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720946423; c=relaxed/simple;
	bh=JZBPI1Jxgj+txMLECuis0Nr4LLailptC/mgWeSpcOSo=;
	h=To:Subject:From:Message-Id:Date; b=b6MFSwPUyFgeKxlMf6UImMlqYhcU6IWJit5fv2Jbc1bSRGWYfqGbhiuBB7ayb9Q+hyPxsSXza9J6senuB/HqSKmBotLm69FPWaRMK825DZyIg5rAgvHsyn0aWajZDxu9zjcGG7iU8Uyht6cumgOdEeCPnAKt2r97OLzrrThbIh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJzliS7l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJzliS7l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3286C4AF09
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 08:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720946422;
	bh=JZBPI1Jxgj+txMLECuis0Nr4LLailptC/mgWeSpcOSo=;
	h=To:Subject:From:Date:From;
	b=XJzliS7lKWoGrZR/yC9AC6IvMleHnMGjuWjrA1EnCCmbbzGXe8vZ4uy6+/03QovCZ
	 qBOwO/+yObkv0bhahHyDtsBdEWKYoUeyilQe+dlGn+jDAKNvdxxPOKKzGJVi/yzG0j
	 pbM+VIxnsQup4qQSi9aX/0QLDJ84OOb7nybFaUFuJ0moH2v0exmw3+NC2VaylSB0a+
	 yI8rbbvQLV7g4aSr3WbxnTxcNHomyAHQeG7+z4PxhRFe4sqUPwY0ojR5HeHFMjLFsX
	 knsbf9Nljd6RY4k1JyftDVci88IJEsJ7IgoiQwZ+4K1VqyNqVvoS7NoMr/KfTApM/5
	 lUSMJIxQ7/zsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1564C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 08:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172094642278.6758.16130054712100162233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97b898b7bee4c7d499e6eff6158f857d093b294eeecfc6478b8536eea99f2b8e
Date: Sun, 14 Jul 2024 08:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720946422
